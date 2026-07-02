# LMT v3.4 beta2 — Decompiled and Patched

Decompiled from [LMT v3.4 beta2](https://xdaforums.com/t/app-root-lmt-launcher-v3-2.1330150/page-739#post-90409593) using `jadx 1.5.5` (Java sources) and
`apktool 3.0.2` (resources + smali). 

[List of changes can be found here](https://github.com/YMan84/LMT-Launcher/blob/main/CHANGELOG.md)
Changes include:
  - Fix for not all apps showing for app launcher
  - Fixed custom icons selection not working
  - fixed root support
  - Added support for third ring in pie menu
  - Fixed "Please grant LMT permission to read external storage" toast
Please note, the patched app is signed with a new key, so you will have to do a fresh install



# APP Information
- **Package:** `com.noname81.lmt`
- **Author:** noname81 (XDA thread: t=1330150)
- **Min/runtime:** compiled against SDK 34 (Android 14), runs on Android ≥ 4.4
  (code branches back to `Build.VERSION.SDK_INT >= 16/18/20/21/24/26/29/34`).
- **App type:** Pie-style overlay launcher + edge-gesture engine. Drawn as a
  system overlay window; gestures are captured by reading the touchscreen
  input device directly via a native library.

---

## 1. What the app does

LMT ("Launcher Modification Touch", the classic XDA Pie launcher) gives you
three independent trigger systems, all of which fire configurable *actions*
(app launches, nav keys, toggles, scripts, etc.):

| System | Trigger | Config UI | Stored in prefs |
|---|---|---|---|
| **Pie menu** | Swipe in from a screen edge → radial pie overlay appears with up to 3 levels × 7 items (click + long-click each) | `PieFragment` | `PieItem0..37` (38 slots) |
| **Gestures** | Drawn shapes / swipes on the touchscreen, captured by reading `/dev/input/eventN` directly | `GesturesFragment` | `<GestureName> Type/String/Icon` (14 gestures) |
| **ISAs** (Individual Swipe Areas) | 12 fixed edge zones (top/bottom/left/right × 3) that each recognise one swipe direction | `IsasFragment` | `IsaItem0..11` (12 slots) |

Two operating modes (`TSMode` pref, default `2` = "Pie only"):

- `0` — full: gestures + ISAs + Pie
- `1` — Pie only (no native gesture capture)
- `2` — Pie only and the native gesture thread is **not** started

The Pie overlay is the headline feature; gestures/ISAs are the legacy
input-device-recognition engine that requires root and is mostly only useful
on older Android.

---

## 2. Component map (AndroidManifest.xml → `com/noname81/lmt/`)

| Manifest entry | Class | Role |
|---|---|---|
| Activity (LAUNCHER) | `LMT.java` | ViewPager + ActionBar tabs hosting the config fragments (Settings, [Gestures, Isas], Pie, Info — Info last; see §11.5) |
| Activity (internal) | `MultiSelectActivity` | Pick apps/shortcuts to assign to a slot |
| Activity (internal) | `CommandSelectActivity` | Pick the *action type* + payload for a slot |
| Activity (internal) | `SettingsViewActivity` | Sub-screens for lists like blacklist, input device |
| Foreground service | `TouchService` | The whole engine; runs the gesture thread and owns the Pie overlay window |
| Accessibility service | `AccessibilityHandler` | Used to fire system global actions (back, recents, notifications, power, split-screen) without root |
| Quick-settings tile | `QuickSettingsTileService` | Toggle the service on/off from the QS panel |
| Boot receiver | `StartupReceiver` | Auto-start `TouchService` after boot if `Autostart` pref set |

Other notable classes (not in manifest):

- `Launcher.java` — central action dispatcher (`fireAction(Action)`), the
  single big switch statement that turns an `Action` into a side effect.
- `Action.java` — value object + the catalogue of 46 action types and their
  permission requirements (see §4).
- `PieContainer.java` + `PieControl.java` + `PieMenu.java` + `PieItem.java` +
  `PiePointer.java` + `PieStatusInfo.java` — the radial overlay UI and its
  optional extensions (pointer-warp, recent-apps sub-menu, status info).
- `RootContext.java` — root shell helper; runs two persistent `su` shells
  (`mRemoteProcess` for the `InputContext` helper, `mRootProcess` for ad-hoc
  root commands).
- `TouchServiceNative.java` — JNI bridge to `libTouchServiceNative.so`
  (shipped for arm64/armeabi-v7a/x86/x86_64). The native code opens the
  touchscreen device, classifies gestures, and returns a `TouchServiceResult`.
- `SettingsValues` / `SettingsValuesBase` / `SettingsSharedPrefsWrapper` —
  all prefs + the in-memory vectors of `Action`s for gestures/pie/isas.
- `PermissionChecker` — wraps the runtime-permission flow.
- `NotificationDataHelper` — fed by the accessibility service, powers the
  "Pie status info" badge (notification count + clock).
- `IconUtils`, `FileUtils`, `AsyncDrawableTask`, `Toaster`, `DebugHelper`,
  `InputDialog`, `ColorDialog`, `SeparatedListAdapter` — UI/utility helpers.

---

## 3. Runtime architecture & data flow

```
                 ┌────────────────────────────────────────────┐
                 │ LMT (Activity) — settings UI (4 tabs)      │
                 │  SettingsViewFragment / GesturesFragment  │
                 │  IsasFragment / PieFragment / InfoFragment│
                 └───────────────┬────────────────────────────┘
                                 │ writes SharedPreferences
                                 ▼
   ┌──────────────────────────────────────────────────────────┐
   │ TouchService (foreground)                                │
   │  ├─ TouchServiceThread → TouchServiceNative.run()  (JNI) │
   │  │     reads /dev/input/eventN → TouchServiceResult     │
   │  │     MessageHandler dispatches to Launcher.fireAction │
   │  └─ PieContainer (WindowManager overlay)                │
   │        └─ PieControl → PieMenu (radial view)            │
   └─────────┬──────────────────────────────┬────────────────┘
             │ (root shell #1: InputContext)  │ (root shell #2: ad-hoc)
             ▼                                ▼
   app_process com.noname81.lmt.InputContext   su -c "..."
   - injects keyevents via InputManager        - svc wifi/data enable
   - injects taps / motion events              - am start / force-stop
   - am move-to-front-or-start, last-app       - settings put global ...
   - TelephonyManager.setDataEnabled
```

### 3.1 The native gesture path (legacy)

`TouchServiceNative.run()` blocks in C++ until a gesture is recognised and
returns a `TouchServiceResult` containing a gesture id (`Square`, `SwipeUp`,
`DiamondDouble`, … — 14 ids in `TouchServiceResult.names`) plus start X/Y and
a confidence `score`. `TouchService.MessageHandler` maps the id to the user's
configured `Action` via `SettingsValues.getGestureAction(i)` and calls
`Launcher.fireAction(...)`. Gestures are ignored while the foreground app is
in the blacklist (`isNotBlacklisted()`).

### 3.2 The Pie path

`PieContainer` adds 1–3 `PieLayout` (`FrameLayout`) windows to the
`WindowManager` at the configured edge(s) — each is a tiny invisible trigger
strip. On `ACTION_DOWN` inside a strip the layout *expands* to full-screen
(`-1 × -1`) and attaches `PieControl`/`PieMenu`. The pie is drawn with
`Canvas`/`Path` (radial slices, up to 5 levels deep, `MAX_LEVELS=5`). Click
and long-click on each slice fire the slot's two `Action`s. `ACTION_UP`
shrinks the strip back to the trigger size.

Special pie actions:
- `PiePointer` (type 44) — a mouse-pointer-like warp extension (`PiePointer`
  + `PiePointerFromEdges` / `PiePointerWarpFactor` prefs).
- `PieRecentApps` (type 45) — swaps the pie contents for up to 12 recent
  apps (uses UsageStats permission or root).
- `PieStatusInfo` — clock + notification badge drawn in the pie centre.

Window flags: `NOT_FOCUSABLE | NOT_TOUCH_MODAL | WATCH_OUTSIDE_TOUCH`, plus
`LAYOUT_IN_SCREEN` when "behind keyboard" is on. On Android 10+ the trigger
strip also registers a `setSystemGestureExclusionRect` so the system doesn't
steal edge swipes.

---

## 4. The Action catalogue

`Action.java` defines 46 action types. Each is `[Root|Accessibility|None]` —
that tag is shown in the picker and `Launcher` picks the right path
(accessibility service first, then root, then a public intent fallback).

| id | name | Requires | What it does |
|---|---|---|---|
| 1 | None | — | No-op |
| 2 | App | None | Launch app by package |
| 3 | Home | A/R/None | Global home / KEYCODE_HOME / HOME intent |
| 4 | HomeLongpress | Root | `input keyevent 2003` |
| 5 | Menu | Root | `keyevent 82` |
| 6 | MenuLongpress | Root | `keyevent 2082` |
| 7 | Back | A/R | Accessibility `GLOBAL_ACTION_BACK` / `keyevent 4` |
| 8 | BackLongpress | Root | `keyevent 2004` |
| 9 | RecentApps | A/R | `GLOBAL_ACTION_RECENTS` / `keyevent 187` |
| 10 | Search | R/None | `keyevent 84` / ACTION_SEARCH intent |
| 11 | SearchLongpress | None | ACTION_SEARCH_LONG_PRESS |
| 12 | NextApp | Root | `am next-app 0` (or manual recent-task walk on <21) |
| 13 | PrevApp | Root | `am prev-app 0` |
| 14 | LastApp | Root | `am last-app 0` |
| 15 | OpenNotificationBar | Accessibility | `GLOBAL_ACTION_NOTIFICATIONS` |
| 16 | OpenQuickSettings | Accessibility | `GLOBAL_ACTION_QUICK_SETTINGS` |
| 17 | OpenKeyboard | None | `InputMethodManager.toggleSoftInput` |
| 18 | OpenPowerMenu | A/R | `GLOBAL_ACTION_POWER_DIALOGS` / `keyevent 1026` |
| 20 | Wifi | None/Root | `WifiManager.setWifiEnabled` (root on ≥29) |
| 21 | Data | Root | `svc data enable/disable` |
| 22 | Bluetooth | None | `BluetoothAdapter.enable/disable` |
| 23 | GPS | None | Opens location settings (can't actually toggle) |
| 24 | ImmersiveMode | Root | `settings put global policy_control …` cycle |
| 26 | Key | Root | Arbitrary `input keyevent <codes>` (supports `1000 120` style) |
| 27 | Activity | R/None | `am start -n component/…` |
| 28 | WebPage | None | ACTION_VIEW with auto-prefixed URL |
| 29 | Script | Root | `sh <file>` or raw shell command |
| 30 | KillApp | Root | `am kill-app 0` (force-stop current app) |
| 31 | KillAllApps | Root | `am kill-all-apps 0` |
| 32 | TaskerTask | Root | Broadcast `net.dinglisch.android.tasker.ACTION_TASK` |
| 33 | Shortcut | None | `Intent.parseUri` of a stored shortcut URI |
| 34 | Screenshot | Root | `input keyevent 1000 120` (sysui screenshot combo) |
| 35 | UnpinApp | Root | `am task lock stop` |
| 36 | NowOnTap | Root | `keyevent 219` |
| 37 | Assistant | Root | `keyevent 219` (Google Assistant) |
| 38 | SplitScreen | Accessibility | `GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN` |
| 40/41/42 | Nova/Apex/Holo | Root | Open launcher app drawer via launcher-specific action |
| 44 | PiePointer | Accessibility/Root | Activate pointer-warp extension |
| 45 | PieRecentApps | Root/UsageStats | Replace pie with recent apps |

Screenshots: action 34 sends `keyevent 1000 120` through the root
`InputContext` shell — `1000` is the LMT-specific wait encoding (the
`sendKeyEvent` helper maps `>1000` → 600 ms pre-wait, `>500` → 100 ms,
see `InputContext.runInput`).

---

## 5. Dependencies & external surfaces

### 5.1 Native library

`lib/<abi>/libTouchServiceNative.so` — `TouchServiceNative` JNI:
`setInputDevice`, `setOrientation`, `run`, `quit`, `setMinScore`,
`setMinPathLength`, `setSingleTouchGestureSupport`, `setSingleSwipesBBox`,
`setDebug`, `getServiceVersion`. Source is not in the APK; it is the closed
part of the legacy gesture engine.

### 5.2 The `InputContext*.jar` assets (root helper)

`RootContext` selects one of the asset jars based on SDK level via
`copyRemote()`, then runs it as `app_process … com.noname81.lmt.InputContext`
inside a root shell. That process is a stdin/stdout command server
(`InputContext.java`, decompiled into
`LMT_decompiled/jadx/sources/com/noname81/lmt/InputContext.java` *via the
extracted jar*, not the APK) with verbs:

- `input keyevent <codes>` — injects key events via
  `InputManager.injectInputEvent` (API 18+), else `Instrumentation.sendKeySync`.
- `input text <s>` — `KeyCharacterMap.getEvents` + inject.
- `input tap <x> <y>` — injects `MotionEvent` down/up.
- `am start/move-to-front-or-start/last-app/next-app/prev-app/kill-app/kill-all-apps/force-stop` —
  uses hidden `IActivityManager` via reflection.
- `telephone` — `TelephonyManager.setDataEnabled(!getDataEnabled())`.
- `version`, `ping`, `debug <0|1>`, `quit`.

This is how LMT can perform actions the normal SDK forbids (real Home/Menu,
force-stop, mobile-data toggle, task ordering) — all gated on root.

> **⚠ CORRECTION (verified during patching, see CHANGELOG):** Despite the
> selector logic naming `InputContext34.jar`, **only 5 jars actually ship in
> the APK** — `InputContext20/21/24/28/29.jar`. There is **no
> `InputContext34.jar`** in `apktool/assets/`. On stock Android the unpatched
> app throws `FileNotFoundException` from `copyRemote()` *before* `su` is ever
> spawned, so `mInitialized` stays `false`, `initRoot()` never runs, and **no
> Magisk root prompt ever appears**. The patched build (see §11.3 / CHANGELOG)
> raises the SDK threshold to `0x3c` (60) so **no current or near-future Android
> release** selects `InputContext34.jar`; SDK ≥ 29 always uses
> `InputContext29.jar`, which works under `app_process`+root (reflection on
> hidden APIs is unblocked there). Verified working on Android 16 (SDK 36).

### 5.3 Permissions

| Permission | Used for |
|---|---|
| `SYSTEM_ALERT_WINDOW` | the Pie overlay (and gesture feedback overlay) |
| `BIND_ACCESSIBILITY_SERVICE` | global actions: back, recents, notifications, QS, power, split-screen; also reads notifications for the status badge |
| `BIND_QUICK_SETTINGS_TILE` | the on/off tile |
| `RECEIVE_BOOT_COMPLETED` | autostart |
| `FOREGROUND_SERVICE` / `FOREGROUND_SERVICE_SPECIAL_USE` | the long-lived `TouchService` |
| `QUERY_ALL_PACKAGES` | listing apps in the picker (Android 11+) |
| `PACKAGE_USAGE_STATS` | recent-apps pie (when not root) |
| `CALL_PHONE` | only if a Shortcut action is a CALL intent |
| `WRITE_SETTINGS` | immersive-mode policy_control |
| `KILL_BACKGROUND_PROCESSES` | KillApp fallback path on pre-21 |
| `VIBRATE`, `EXPAND_STATUS_BAR`, `REORDER_TASKS`, `GET_TASKS`, `READ/WRITE_EXTERNAL_STORAGE`, Wifi/BT/Network state | supporting features |
| (runtime) | root via `su` — **required** for the whole InputContext path and many actions |

### 5.4 Third-party libraries bundled in the APK

Decompiled `android.support.*` + `androidx.*` packages indicate these are
pulled in (the app is an old support-lib app, not AndroidX-migrated):

- `android.support.v4` / `v7` (appcompat, recyclerview, design, fragment,
  coreui, coreutils, customview, cursoradapter, documentfile, drawerlayout,
  interpolator, loader, localbroadcastmanager, mediacompat, print,
  slidingpanelayout, swiperefreshlayout, transition, coordinatorlayout,
  asynclayoutinflater, versionedparcelable)
- `android.arch.lifecycle` (lifecycle-runtime)
- `androidx.core`, `androidx.media`, `androidx.versionedparcelable`
- `com.google.android` (likely support-v4's older google components)

No analytics, no ad SDKs, no networking libraries — see §5.5.

### 5.5 Network

**None.** There is no HTTP client, no `OkHttp`, no `HttpURLConnection`, no
crash reporter. The only URLs in the app are static HTML links in the Info
fragment (XDA thread + PayPal donation) opened via the system browser.
Everything else runs locally on-device through root shells and the input
device. This makes the app fully offline and trivially auditable.

---

## 6. SharedPreferences keys (handy when patching)

All under the default prefs file. Key examples (see
`SettingsValuesBase.java` for the complete list):

- Service: `TSMode`, `Autostart`, `Input`, `Feedback`, `Vibration`,
  `STSupport`, `SingleSwipesBBox`, `SingleSwipesAArea`,
  `TouchscreenScreenFactorX/Y`, `MinScore`, `MinPathLength`
- Pie: `PiePos`, `PieAreaX/Y`, `PieAreaGravity`, `PieBehindKeyboard`,
  `PieOnLockScreen`, `PieColorString`, `PieStatusInfoColorString`,
  `PiePointerColorString`, `PieFont`, `PieInnerRadius`, `PieOuterRadius`,
  `PieShiftSize`, `PieOutlineSize`, `PieSliceGap`, `PieStartGap`,
  `PieRotateImages`, `PieLongpress`, `PieAnimation`, `PieVibrate`,
  `PieVibration`, `PieMultiCommand`, `PieExpandTriggerArea`,
  `PiePointerFromEdges`, `PiePointerWarpFactorPercent`, `PieShowStatusInfos`,
  `PieShowAppImages`, `PieUserImageScaling`, `NavButtonStyle`,
  `ResourceSearchPath`
- Slot storage: `<GestureName> Type/String/Icon`, `PieItem<i> Type/String/Icon`,
  `IsaItem<i> Type/String/Icon`
- Blacklists: `Blacklist`, `BlacklistPie` (semicolon-separated package names)

Default `ResourceSearchPath` is
`/sdcard/Android/data/com.noname81.lmt/files/` — that's where custom PNG icons
named `<action>.png` (e.g. `back.png`, `app.png`) are loaded from.

---

## 7. Rebuilding from the decompiled tree

If you ever want to patch and re-sign (not done in this analysis):

```bash
# 1. edit smali under LMT_decompiled/apktool/smali/...
# 2. rebuild with apktool
apktool b LMT_decompiled/apktool -o LMT_patched.apk
# 3. zipalign + sign (debug key)
~/.android/debug.keystore  # create one with keytool if missing
apksigner sign --ks ~/.android/debug.keystore LMT_patched.apk
```

Note: `jadx` output is for *reading*, not recompiling. To modify Java you'd
edit smali, or rebuild the whole app from new sources — there's no upstream
source available, so smali patching is the realistic path.

---

## 8. Extension points (where the app is built to grow)

The architecture is intentionally pluggable. The lowest-friction ways to add
functionality, roughly in order of effort:

### 8.1 Add a new Action type  ← *easiest, biggest payoff*

`Action.java` is a flat id→name→caption table; `Launcher.fireAction` is one
giant `switch`. To add e.g. "Toggle flashlight":

1. `Action.java`: add `static final int Flashlight = 46;`, extend `names[]`
   and `captions[]` (keep the `Offset*` sentinels intact — they group items
   in `CommandSelectActivity`), bump `OffsetPieActions` if needed.
2. `Launcher.java`: add `case 46: doFlashlightAction(); break;` and implement
   the method (camera2 torch via `CameraManager`, or
   `am broadcast -a ...torch` for some ROMs).
3. `CommandSelectActivity` / `SettingsViewHelper` pick the new group
   automatically from `Action.names/captions`.
4. Add a drawable `res/drawable/flashlight.png` (and `_kitkat`/`_pixel`
   variants) so the icon shows.
5. The Pie/Gestures/ISAs pickers will all expose the new action with **zero
   further wiring**.

That single change extends all three trigger systems at once. This is
clearly the design intent — the action catalogue is the extension API.

### 8.2 New gesture id  (native only)

Add an entry to `TouchServiceResult.names/captions`, wire it to an `Action`
in `SettingsValues.loadGestureAction`. But recognition itself is in the
closed `libTouchServiceNative.so` — you can't add a new *shape* without
rebuilding the native lib. Swipes/ISAs are parametric though, so new swipe
*combos* could be added in Java by post-processing `TouchServiceResult`
coordinates if you want to avoid native work.

### 8.3 New Pie extension (like PiePointer / PieRecentApps)

`PieControl.onKey` already special-cases action types 44/45 to swap pie
contents. A new "Pie sub-menu" extension = new action type id + a branch in
`PieControl` that rebuilds `mPieItemActions` (mirror
`activatePieRecentApps()`). Note: `PieMenu.MAX_LEVELS=5` refers to concentric
*rings*, not drill-down hierarchy — see §10 before relying on it for sub-pies.

### 8.4 Replace the InputContext helper with a non-root path

Several root-only actions have a non-root public-API equivalent that wasn't
wired (e.g. on Android 11+ `GestureDescription` via accessibility can do
taps/swipes, `MediaController` can play/pause, shell `cmd statusbar` can
expand notifications). Adding accessibility-based fallbacks in
`Launcher.doXxxAction()` (next to the existing `AccessibilityHandler`
branches) would cut the root requirement for many actions. The plumbing
(`AccessibilityHandler.performClick`, `dispatchGesture`) already exists — see
`performClick(x,y)`.

### 8.5 New trigger surface

A fourth trigger system would mirror the Pie/Gesture/Isa triplet: a new
Fragment + a new `setCurrent<X>` in `SettingsValuesBase` + a new vector of
`Action`s + a new path in `TouchService.MessageHandler`. None of the
existing code is耦合 to the number three; it's just three copies of the same
pattern.

### 8.6 Modernisation candidates (if you do a source rewrite)

- Migrate `android.support.*` → AndroidX (the APK still uses the legacy
  support library).
- Replace the `ActionBar` tab UI in `LMT.java` (deprecated since API 21)
  with `TabLayout` + `ViewPager2`.
- Replace the raw `WindowManager` overlay trigger strip with a
  `GestureDescription`/edge-swipe approach so root isn't needed to install.
- Move prefs to `DataStore`/`SharedPreferences` listeners so live setting
  changes don't require `restartServiceIfRequired()`.
- The native gesture engine (`libTouchServiceNative.so`) is the single
  biggest blocker to a no-root build — replacing it with
  `GestureDetector`/ML-kit gesture recognition in pure Java would let the
  app ship root-free.

---

## 9. File index

```
LMT_decompiled/
├── apktool/                  # apktool output (resources + smali)
│   ├── AndroidManifest.xml
│   ├── apktool.yml
│   ├── assets/               # InputContext{20,21,24,28,29,34}.jar, Roboto*.ttf
│   ├── lib/<abi>/libTouchServiceNative.so
│   ├── res/                  # decoded resources (148 dirs/files)
│   └── smali/com/noname81/lmt/   # editable bytecode
└── jadx/                     # jadx output (readable Java)
    ├── resources/
    └── sources/
        ├── com/noname81/lmt/   # 42 app .java files (this README's subject)
        ├── com/google/android/ # support libs
        └── android/support/, androidx/  # support libs
```

App source files (in `jadx/sources/com/noname81/lmt/`), grouped:

- **Entry/UI:** `LMT`, `SettingsViewFragment`, `SettingsViewActivity`,
  `SettingsViewHelper`, `GesturesFragment`, `IsasFragment`, `PieFragment`,
  `InfoFragment`, `MultiSelectActivity`, `CommandSelectActivity`,
  `ColorDialog`, `InputDialog`, `SeparatedListAdapter`, `PermissionChecker`
- **Service/runtime:** `TouchService`, `TouchServiceNative`,
  `TouchServiceResult`, `StartupReceiver`, `QuickSettingsTileService`,
  `AccessibilityHandler`, `NotificationDataHelper`, `PieStatusInfo`
- **Engine:** `Launcher`, `Action`, `RootContext`
- **Pie UI:** `PieContainer`, `PieControl`, `PieControlBase`, `PieMenu`,
  `PieItem`, `PiePointer`, `PieFragment`
- **Settings model:** `SettingsValues`, `SettingsValuesBase`,
  `SettingsSharedPrefsWrapper`
- **Util:** `IconUtils`, `FileUtils`, `AsyncDrawableTask`, `Toaster`,
  `DebugHelper`, `R` (generated)

---

## 10. Adding a "Layer 3" to the Pie menu

*Investigated in detail; not yet implemented. This section captures the full
analysis so another agent can pick up the work.*

### 10.1 Terminology correction (important)

In LMT, a Pie **level** = a *concentric ring* of items, not a drill-down tier.
`PieItem` carries an `int level`; `PieMenu` lays out and renders each item by
its level, and hit-tests by each item's stored `innerRadius/outerRadius`.
There is **no** concept of "hover item X → replace pie with X's children."
The closest thing is `PieRecentApps`, which *swaps the entire item set* —
that's a whole-pie replacement, not per-slot nesting.

So "Layer 3" can mean two different things — decide which before coding:

| Interpretation | Mechanic | Difficulty |
|---|---|---|
| **A. Third concentric ring** | Always-rendered ring at `mRadius + mRadiusInc*3`, like rings 1 & 2 | **Easy** |
| **B. Third icon set on the same rings** | A longer/second hold reveals a 3rd drawable per slot (parallel to the existing long-press reveal) | **Medium** |
| **C. Nested sub-pie (drill-down)** | Hover an item → its children replace/augment the pie | **Hard** (feature design) |

The 500ms "Level 2 appears" behaviour the user observes is **not** a ring
reveal — both rings are laid out and drawn from `show(true)` onward. What
fires at 500ms is `setLongpressTimer()` → `mLongpress = true` →
`selectImages(1)`, which swaps each item's `ImageView` to its *long-press
drawable* (the odd-numbered slots). The config UI labels those long-press
slots as the "Level 1/2 longpress" rows. (Caveat: `PieMenu.init()` was
partially decompiled — the readable portion shows only paint/dimension
setup, no visibility gating by level, but a smali check is advisable before
coding to rule out any level-gated visibility we missed.)

### 10.2 Why Interpretation A is easy

`PieMenu` is level-agnostic by design:

- `MAX_LEVELS = 5`, `mCounts` is `int[5]`, `clearItems()` loops `i < 5`.
  Pre-sized for 5 rings, not 2.
- `addItem()` does `mLevels = max(mLevels, level)` and `mCounts[level]++`.
  Nothing caps it at 2.
- `layoutPie()` iterates `for (level = 1; level <= mLevels; level++)` and
  places each ring at `mRadius + mRadiusInc * level`. Fully generic.
- `onDraw()` walks `mItems` and draws each by its own `getPath()`/geometry.
  Level-blind.
- `findItem()` hit-tests by `innerRadius/outerRadius/start/sweep` —
  level-blind.
- Radial-gradient sizing is `mRadius + mRadiusInc * mLevels` — auto-grows.
- `PiePointer` / `PieStatusInfo` receive `mLevels` in `layout()` and
  reposition relative to the outermost ring — they adapt automatically.

The "2" is hardcoded in exactly **three** spots, all data/UI, no logic:

1. **`SettingsValuesBase.loadActions()`** —
   `for (i = 0; i < 24; i++) mPieActions.add(loadPieAction(i));`
   (24 = 2 rings × slots: ring 1 = slots 0..9, ring 2 = slots 10..23).
2. **`PieControl.populateMenu()`** — two `for` loops:
   `for (i = 0; i < 9; i += 2)` → `makeItem(..., 1)` (ring 1),
   `for (i = 10; i < 23; i += 2)` → `makeItem(..., 2)` (ring 2).
3. **`PieFragment.onCreateView()`** — two `addSection(...)` blocks building
   the config list, plus the `pie_level_1` / `pie_level_2` strings.

Nothing else (animation, longpress icon swap, gradient sizing, pointer/status
extensions) needs changes for a 3rd ring.

### 10.3 Patch plan for Interpretation A (third concentric ring)

Assuming N items on ring 3 (e.g. 5 to match ring 1, or 7 to match ring 2):

| File (smali path under `apktool/smali/com/noname81/lmt/`) | Change |
|---|---|
| `SettingsValuesBase.smali` | In `loadActions()`, change the pie loop bound from `0x18` (24) to `0x18 + 2*N` (e.g. 34 for N=5). Also bump any constant used as the pie-action vector size. |
| `PieControl.smali` | In `populateMenu()`, add a third `for` loop over the new slot range, calling `makeItem(..., 3)` (third arg = level). Mirror the ring-2 loop. |
| `PieFragment.smali` | In `onCreateView()`, add a third `addSection(...)` block with `pie_level_3` and `pie_level_3_item_N[_longpress]` items; bump `offsetLevel2` handling so `onItemClick` maps the new section to the right slot range. |
| `res/values/strings.xml` | Add `pie_level_3` + `pie_level_3_item_1..N` + `pie_level_3_item_1..N_longpress`. |
| `Action.smali` / `Launcher.smali` | **No changes** — action types are orthogonal to pie levels. |
| `PieMenu.smali` | **No changes** — engine is level-agnostic. |

Then rebuild + sign (see §7).

### 10.4 Patch plan for Interpretation B (third hold-tier)

More invasive — touches the input state machine. Sketch:

1. **`PieItem.smali`**: add a third `Drawable mDrawableLongLong` field +
   `selectImage(int)` branch for `i == 2`.
2. **`PieControl.smali`**: in `populateMenu()`, load a 3rd drawable per slot
   (a 3rd pref column, e.g. `PieItem<i> Icon2`).
3. **`PieMenu.smali`**: in `setLongpressTimer()`, add a second timer chained
   off the first (e.g. fire again at 1000ms) that sets a new `mLongLong`
   flag and calls `selectImages(2)`. Reset both on `ACTION_UP` / leaving the
   longpress zone.
4. **`SettingsValuesBase.smali`**: add `loadPieAction2(i)` (or extend the
   existing slot schema to 3 actions per position) + prefs
   `PieItem<i> Type2/String2/Icon2`.
5. **`PieFragment.smali`** + **`CommandSelectActivity.smali`**: a third row
   per position + a third picker invocation.
6. **`Launcher.smali`**: `fireAction` already takes an `Action`; the 3rd-tier
   action is just another `Action` instance, so no switch changes — only
   `PieControl.onClick/onLongClick` need a 3rd branch keyed on the
   `mLongLong` flag.

Bigger than A, smaller than C. Mainly input-state-machine work in `PieMenu`.

### 10.5 Patch plan for Interpretation C (nested sub-pie)

This is a feature design, not a patch. Required work:

- New state in `PieMenu`: a "drilled" `PieItem` + a secondary item set +
  enter/exit animation between sets.
- New touch handling: a hover-and-release vs. hover-and-hold distinction to
  decide between firing the item and drilling into it.
- New storage model — a slot is currently one `Action` pair
  (click/long-click). A sub-pie slot needs a *list* of action pairs. Schema
  change to prefs (e.g. `PieSubItem<slot>_<index>`), new picker flow in
  `CommandSelectActivity`, new adapter.
- The closest existing pattern is `PieRecentApps`
  (`PieControl.activatePieRecentApps()`), which proves the swap mechanism
  works — but it's whole-pie replacement, not per-slot. Generalising to
  "swap just the hovered slot's children" is the bulk of the work.

Recommend doing A first; revisit C only if A's always-visible ring doesn't
fit the use case (e.g. you want deep menus without 3 rings eating screen).

### 10.6 UX constraints (not code blockers)

Apply to Interpretation A; worth tuning via existing prefs:

- **Screen height.** Each ring is `mRadiusInc` dp further out (default
  `PieOuterRadius − PieInnerRadius` = 80−60 = 20dp per ring). A 3rd ring
  from the bottom edge can collide with the status bar/notch on smaller
  phones. Mitigation: lower `PieInnerRadius`/`PieOuterRadius`. The
  `getIsSmallScreen()` hook exists but is hardcoded `return false` — that's
  where device-aware defaults would go.
- **Slice thinness.** Level 2 already has 7 items → ~22° slices. A 3rd ring
  with 7 items pushes icons to ~14° — still tappable, getting cramped.
  Longpress slop and hit-testing still work; it's a legibility concern.
- **`PiePointer`/`PieStatusInfo`** position off the outermost ring; they
  receive `mLevels` in `layout()` and adapt, but their offsets may want
  nudging.

### 10.7 Open decisions before coding

1. **Which interpretation** — A (3rd ring), B (3rd hold-tier), or C
   (nested sub-pie)? Recommend A.
2. **How many items on Layer 3** (if A)? 5 like level 1, 7 like level 2, or
   variable?
3. **Patch the APK in smali, or rebuild from decompiled Java?** Smali is
   fiddlier for adding loops/UI sections but keeps the signed-build path
   simple; rebuild-from-decompiled is cleaner authoring but jadx output
   isn't always recompilable as-is and would need a Gradle project set up.

> **Resolved (2026-07, see §11.1):** Interpretation A, 7 items, smali path.
> All three decisions landed on the recommended/smali options above.

### 10.8 Verification step before coding

Before writing the patch, confirm in smali that `PieMenu` has no level-gated
visibility logic that the Java decompile missed (the `init()` method was
partially decompiled). Concretely:

```bash
# Look for any conditional on level in PieMenu.smali beyond layoutPie/findItem
grep -nE 'level|Level|mLevels' \
  LMT_decompiled/apktool/smali/com/noname81/lmt/PieMenu.smali
```

Expected: references only in `addItem`, `clearItems`, `layoutPie`, `show`,
and the `PieView.layout(...)` calls. Any `if-.*Level` outside those would
indicate hidden gating and would change the patch plan.

**Verified (2026-07):** the §10.8 check was run against
`apktool/smali/com/noname81/lmt/PieMenu.smali`. `mLevels` is referenced only
in `addItem`, `clearItems`, `layoutPie`, `show`, and the `PieView.layout(...)`
calls — no level-gated visibility. `mCounts` is `new-array … 0x5` → `int[5]`
(`MAX_LEVELS = 5`), so indexing `mCounts[3]` for a third ring is safe.
`clearItems()` loops `i < 5`. Conclusion: the engine is genuinely
level-agnostic up to 5 rings; the §10.3 patch plan holds.

---

## 11. Applied patches (smali) — build `LMT_v3.4_beta2_3rings.apk`

Patches applied to `apktool/` and rebuilt with `apktool b` + zipalign +
`apksigner` (signed with a new key)
The full per-change rationale is in `CHANGELOG.md`; the summary:

### 11.1 Third concentric Pie ring (Interpretation A of §10.1)

7 items at level 3, mirroring level 2's slot layout (slots 24..37).
Touch points (all smali):

- `res/values/strings.xml` + `res/values/public.xml` + `R$string.smali` —
  added 15 strings (`pie_level_3` + `pie_level_3_item_1..7` + `_longpress`)
  with IDs `0x7f0d008a`..`0x7f0d0098`. **All three files must be kept in
  sync** — `R$string.smali` is a pre-compiled snapshot, apktool does not
  regenerate it; a missing field declaration causes `NoSuchFieldError` at
  runtime (verified — was the first crash during patching).
- `SettingsValuesBase.smali` `loadActions()` — pie-action loop bound
  `0x18`→`0x26` (24→38 slots).
- `PieControl.smali` `populateMenu()` — added a third loop
  (`:goto_3`/`:cond_6`/`:cond_7`), start `0x18`, bound `0x25`, calling
  `makeItem(..., 0x3)` (level 3). Mirrors the ring-2 loop exactly.
- `PieFragment.smali` — added `offsetLevel3 = 0x18` field; 3rd `LinkedList`
  with 14 items + `addSection(..., 0x18)`; 3rd `if-lt p3, 0x18` decrement
  in `onItemClick`.

### 11.2 Scoped-storage icon save fix (Android 13+/14)

`IconUtils.saveImageToFile` was throwing
`FileNotFoundException: /storage/emulated/0/Android/data/com.noname81.lmt/files/pieN.png: open failed: ENOENT`
on Android 14 — `FileUtils.createFolder()`'s `mkdirs()` was silently failing
because the legacy `Environment.getExternalStorageDirectory().getPath() +
"/Android/data/<pkg>/files/"` path is no longer writable via the raw
`java.io.File` API on scoped-storage Android.

Patched `SettingsValuesBase.smali` `loadResourceSearchPath()` and
`saveResourceSearchPath()` to use `Context.getExternalFilesDir(null).getPath()`
instead — resolves to the same path but inside the app's writable sandbox, no
runtime permission required. The framework creates the dir on first access, so
`mkdirs()` + `FileOutputStream` now succeed.

Also removed the `PermissionChecker.checkAndRequestExternalStorageWritePermission`
gate in `PieFragment.smali` `onActivityResult()` — the permission is now
genuinely unneeded for the icon-save path, and the gate was blocking the save
+ showing a misleading "Please grant LMT permission to read external storage"
toast on fresh installs.

### 11.2b Main-activity external-storage read toast (Android 13+)

The §11.2 fix above only removed the *write*-permission gate inside
`PieFragment.onActivityResult`. The **main activity** (`LMT.onCreate` →
`checkAndRequestPermissions()`) still called
`PermissionChecker.checkAndRequestExternalStorageReadPermission()` on every
launch, which on Android 13+ (SDK ≥ 33) is a no-op permission: `READ_EXTERNAL_STORAGE`
is deprecated, and `checkSelfPermission` always returns DENIED regardless of
any grant, so the "Please grant LMT permission to read external storage" toast
fired on every launch.

Patched `PermissionChecker.smali` `checkAndRequestExternalStorageReadPermission()`:
flipped the SDK gate from `if-lt v0, 0x17` (skip on SDK < 23) to
`if-ge v0, 0x21` (skip on SDK ≥ 33). On Android 13+ the method now returns
`true` immediately and never shows the toast; the icon-save path uses
app-private `getExternalFilesDir` storage (§11.2), so the permission is
genuinely unused.

### 11.3 Root prompt never appearing on Android 13+ (missing InputContext34.jar)

`RootContext.copyRemote()` selects `InputContext34.jar` when
`SDK_INT >= 34`, but **only 5 InputContext jars ship in the APK**
(`InputContext20/21/24/28/29.jar`) — there is no `InputContext34.jar`
(see §5.2 correction). `copyRemote()` threw `FileNotFoundException` *before*
`initRoot()`/`su` was ever spawned, so `mInitialized` stayed `false` and no
Magisk prompt appeared.

Patched `RootContext.smali` `copyRemote()` to raise the SDK threshold from
`0x22` (34) to `0x3c` (60). Any real SDK (currently 36 / Android 16) is below
60, so the `>= 34` branch is now dead code and execution always falls through
to the `>= 0x1d (29)` branch, using `InputContext29.jar`, which works under
`app_process`+root on modern Android (reflection on hidden APIs is unblocked
there).

> **History note.** The initial patch set the threshold to `0x23` (35),
> assuming the target device was Android 14 (SDK 34). Verification on a real
> Android 16 (SDK 36) device showed that still hit the `InputContext34.jar`
> branch — `36 >= 35`. The `0x3c` (60) value is chosen so no current or
> near-future Android release selects the missing jar. Verified working on
> Android 16 with Magisk (root prompt appears, `InputContext29.jar` loads,
> `mInitialized` becomes `true`).

### 11.4 App picker missing ~half of installed apps (2026-07-01, later)

`MultiSelectActivity` (the "App" action picker launched from
`CommandSelectActivity`) silently dropped any package whose
`ApplicationInfo.category` was `CATEGORY_UNDEFINED (-1)`. Because
`android:appCategory` is an optional manifest attribute (added in API 26,
used for Play-Store-style classification, not for launchability), a large
fraction of installed apps never set it — so they were filtered out of the
picker, leaving only the ones that did declare it.

Root cause was an over-aggressive filter in the list-building loop:

```java
// BROKEN — the last two conditions are wrong
if (packageInfo.activities != null
        && Build.VERSION.SDK_INT >= 26
        && packageInfo.applicationInfo.category > -1) { ... }
else { mPackageInfos.remove(i); i5--; }
```

The `activities != null` test alone already removes non-launchable packages
(libraries, services with no activities); that was the original intent. The
`SDK_INT >= 26` and `category > -1` checks were a later addition (the
`category` access is desugared through `Launcher$$ExternalSyntheticApiModelOutline0`,
confirming it was a backport shim) and have no relationship to launchability.

Patch: `apktool/smali/com/noname81/lmt/MultiSelectActivity.smali` — in the
`getInstalledPackages` filter loop, deleted the `if-lt v5, v6, :cond_6`
(SDK ≥ 26) and `if-le v5, v6, :cond_6` (`category > -1`) checks and the
intervening `Launcher$$ExternalSyntheticApiModelOutline0.m()` call. Only
`if-eqz activities, :cond_6` remains. The `loadLabel` block (`:goto_4`) is
unchanged.

Build helper: `build.sh` at the repo root wraps `apktool b` + `zipalign` +
`apksigner`, using a dedicated LMT signing key in
`keystore/release-keystore.jks` (credentials in `keystore/key.properties`,
both git-ignored — see `.gitignore`).

`build.sh` also auto-bumps the app version on every run: it reads
`VERSION` (e.g. `3.6`), increments the minor component (`3.6` → `3.7`),
writes the new value back to `VERSION`, and patches
`apktool/apktool.yml` `versionInfo` so the rebuilt APK carries the new
`versionName` (`3.7`) and `versionCode` (`major*1000 + minor*100`, e.g.
`3700`). This means each successive build shows an incremented version in
Android Settings → Apps → LMT and is treated as an upgrade by
`adb install -r` / Package Installer (no "INSTALL_FAILED_VERSION_DOWNGRADE").

Output: `$HOME/Syncthing/APKs/LMT-Launcher-v<VERSION>.apk`
(e.g. `LMT-Launcher-v3.7.apk`). Each build produces a distinct
versioned filename rather than overwriting a single file.

### 11.5 Reorder main-activity tabs (Info last, Pie middle)

The stock app's `LMT.createTabs()` added tabs in this order:
Settings → Info → [Gestures → Isas] → Pie. Under the default `TSMode=2`
this yielded **Settings, Info, Pie**, so Info sat between the two most-used
tabs and required swiping past it to reach Pie.

Patched `apktool/smali/com/noname81/lmt/LMT.smali` `createTabs()` — moved
the `InfoFragment` `addTab(...)` block from after the `SettingsViewFragment`
block to immediately before `return-void` (i.e. after the `PieFragment`
block). The conditional Gestures/Isas and Pie blocks stay in place; only the
unconditional Info block was relocated.

Resulting order:
- `TSMode=0` (full): Settings, Gestures, Isas, Pie, Info
- `TSMode=1/2` (Pie only): Settings, Pie, Info

No resource or layout changes — pure smali instruction reorder inside one
method. Verified on-device (Android 16): tab row reads `SETTINGS | PIE | INFO`.

---

## 12. For the next agent: documentation maintenance

**When you make any change to this codebase, you MUST:**

1. **Update `CHANGELOG.md`** — add an entry under the existing top section
   describing what changed, *why* (the bug/feature motivation), and the
   concrete files/methods touched. Include the root-cause analysis for any
   bug fix (the failure mode, the exception, the smali/JDK-level reason),
   not just "fixed X". Future debugging benefits enormously from knowing
   *why* a change was made, not just *what*.
2. **Update this README** — if your change:
   - touches a component in §2 or §9, update the file index;
   - changes the prefs schema (§6), add the new keys;
   - adds/changes an action type, update §4;
   - corrects any claim already in the README, **edit the claim in place**
     (don't leave a stale contradiction — the README is the source of truth,
     and §10/§11 already carry inline corrections like the §5.2 one);
   - adds a new patch, add a sub-section under §11.
3. **Keep `R$string.smali` and `public.xml` in sync** with
   `res/values/strings.xml` — apktool does not regenerate `R$string.smali`
   or `public.xml` from your string additions; you must edit all three
   (§11.1). A missing field declaration compiles fine but crashes with
   `NoSuchFieldError` at runtime.
4. **Rebuild + sign** before claiming a change is done. rebuild the app using the following script:
   ```bash
   ./build.sh
   ```
5. **Verify on-device with logcat.** Smali edits are field-symbolic and
   assemble even when broken; runtime crashes only surface at install time.
   `adb logcat -c && timeout 30 adb logcat *:E System.err:V com.noname81.lmt:V`
   catches both `AndroidRuntime` (Java) and `System.err` (the app's
   swallowed-exception `e.printStackTrace()` path — several methods,
   e.g. `IconUtils.saveImageToFile`, swallow exceptions silently).

---

## 13. Git workflow (this repo)

This directory is a git repo (`.git/` at the repo root). The initial commit
on `main` captures the full decompiled tree + applied patches as a clean
baseline. The signing material under `keystore/`, build outputs under
`dist/`, and `*.apk` files are git-ignored (see `.gitignore`) — never
commit secrets or build artefacts.

### 13.1 Branch per change

**Always start a new branch from `main` before making any feature, fix, or
patch.** Never commit directly to `main`. Branch names should be short,
kebab-case, and describe the change, e.g.:

```bash
git checkout main
git pull --ff-only           # if a remote is configured
git checkout -b fix/app-picker-filter   # branch for §11.4-style work
```

Suggested branch prefixes:

| Prefix   | Use for                                           |
|---|---|---|
| `feat/`  | new functionality (new action type, new pie ring) |
| `fix/`   | bug fixes (e.g. §11.2 scoped-storage fix)        |
| `docs/`  | README / CHANGELOG-only changes                   |
| `build/` | `build.sh`, keystore, signing pipeline changes    |

### 13.2 Commit after each completed change

Commit **after** a change has been added/completed and verified (build
passes, on-device logcat clean — see §12.5), not mid-edit. Keep commits
focused: one logical change per commit. Write a message that answers *what
and why*, mirroring the CHANGELOG style in §12.1:

```bash
git add apktool/smali/com/noname81/lmt/MultiSelectActivity.smali
git commit -m "fix(MultiSelectActivity): drop category>-1 filter that hid apps

The SDK>=26 && category>-1 checks in getInstalledPackages filtered out
apps that never set android:appCategory (most apps). Only the
activities!=null check is meaningful for launchability.

Fixes the missing-apps bug reported in §11.4."
```

When a feature spans multiple files, stage them together in one commit so
the repo is in a consistent state at every revision. After committing, push
the branch (if a remote exists) and open a PR for review before merging to
`main`.

### 13.3 Merging back

Once a branch is reviewed/verified:

```bash
git checkout main
git merge --no-ff <branch>   # keep the merge commit for history
git branch -d <branch>      # delete the now-merged local branch
```

`--no-ff` preserves the branch topology in `git log --graph` so you can
trace which patches landed together.

---

*Generated from a static read of the decompiled bytecode; runtime behaviour on
a given device/ROM may differ (especially anything that goes through the root
shell or hidden Android APIs via reflection). The `PieMenu.init()` method was
partially decompiled by jadx — its readable portion shows only paint/dimension
setup, but the §10.8 smali check (now run — see §10.8 "Verified") confirms no
level-gated visibility, so the level-agnostic claim in §10 holds.*
