# Changelog — LMT v3.4 beta2 patched builds

All patches below are applied to the decompiled `apktool/` tree (smali +
resources) and rebuilt with `apktool b` + `zipalign` + `apksigner`. The
output APK is `LMT_v3.4_beta2_3rings.apk`, signed with a new key.
Base: `LMT v3.4 beta2.apk` (jadx 1.5.5 + apktool 3.0.2 decompilation).

---

## 2026-07-04 — Fix: accessibility back/recents stop working on aggressive ROMs (Honor Magic UI / Xiaomi HyperOS)

### Fixed — Accessibility service goes stale after ROM kills/rebinds it

**Motivation.** A user on a Honor Magic V5 (Magic UI, reported also against
the stock `3.4 beta2` build) reports that the Back and Recent-apps actions
silently stop working at least once a day, and the only remedy is to toggle
LMT's accessibility service off/on in system settings. This is the classic
"aggressive ROM kills background accessibility services" failure mode, but
the app's `AccessibilityHandler` had a latent bug that turned a recoverable
unbind/rebind into a permanent stale state.

**Root cause.** `AccessibilityHandler` keeps its live instance in two
`static` fields, `instance` and `mInitialized` (smali lines 11 & 13). These
are only ever cleared in `onInterrupt()` (smali `onInterrupt`, .line 101-102).
Android does **not** guarantee `onInterrupt()` is called when it unbinds an
accessibility service under memory pressure — on MIUI/HyperOS and Magic UI
the system can unbind and re-bind the service without ever calling
`onInterrupt`. Two compounding bugs then produced the silent failure:

1. **Stale-`mInitialized` early-return.** `onServiceConnected()` (smali
   .line 86) started with `if (mInitialized) { instance = this; return; }`,
   which meant that *if* `mInitialized` happened to still be `true` from the
   dead incarnation (because `onInterrupt` was never called), the freshly
   re-created service would skip `setServiceInfo()` reconfiguration entirely
   and just repoint the static `instance` at itself. `performGlobalAction()`
   on a not-fully-wired service returns `false` → Back/Recents silently no-op.

2. **No `onUnbind()` override.** The framework's default `onUnbind` does
   nothing to the app's static state, so when the ROM unbinds the service the
   `instance` reference is left dangling and `mInitialized` stays `true`.
   `AccessibilityHandler.performAction()` then dispatches
   `performGlobalAction()` to a dead/released instance, which returns `false`
   silently (the debug-log path is the only place that observes it).

**Fix.** `apktool/smali/com/noname81/lmt/AccessibilityHandler.smali`:

- `onServiceConnected()` — removed the `if-eqz mInitialized → return` guard
  block (.line 86-87). The method now unconditionally rebuilds the
  `AccessibilityServiceInfo`, calls `setServiceInfo()`, refreshes the
  `NotificationDataHelper` reference, and re-points `instance`/`mInitialized`.
  `setServiceInfo()` is idempotent, so re-configuring on every connect is
  safe and ensures the service is always fully wired regardless of prior
  state.

- Added an `onUnbind(Landroid/content/Intent;)Z` override that clears
  `instance = null` and `mInitialized = false`, and returns `false` (default
  rebind semantics — the next bind goes through `onServiceConnected`, which
  is what we want now that the guard is gone). This guarantees that a
  kill/rebind cycle always runs the full init path, and that between unbind
  and rebind `performAction()` short-circuits on `mInitialized == false`
  instead of calling `performGlobalAction()` on a dead instance.

**Files touched:**
- `apktool/smali/com/noname81/lmt/AccessibilityHandler.smali`

**Why a ROM-specific report.** Stock AOSP keeps accessibility services alive
far more leniently, so `onInterrupt` is the path actually exercised and the
stale-state bug never surfaces. The Honor Magic UI / Xiaomi HyperOS kernel
aggressively reclaims background service processes, which is what triggers
the unbind-without-`onInterrupt` path here. The bug is in LMT either way;
the ROM just exposes it. This also explains why toggling accessibility
off/on in settings "fixes" it for a while: that flow does call
`onServiceConnected` cleanly (with `mInitialized == false` after the disable),
so the service gets properly reconfigured — until the next unbind/rebind.

---

## 2026-07-01 (later) — Feature: reorder main-activity tabs (Info last)

### Added — Move Info tab to the end, PIE to the middle

**Motivation.** The default tab order in `LMT.createTabs()` was
Settings → Info → [Gestures → Isas] → Pie. Under the default `TSMode=2`
(Pie only), this produced **Settings, Info, Pie** — Info sat between the two
tabs users actually open most, forcing a long swipe past it to reach Pie.
The user requested Info be moved to the end and Pie to the middle.

**Fix.** `apktool/smali/com/noname81/lmt/LMT.smali` `createTabs()` — moved
the `InfoFragment` `addTab(...)` block from immediately after the
`SettingsViewFragment` block to immediately before `return-void` (i.e. after
the `PieFragment` block). The conditional Gestures/Isas and Pie blocks
remain in their original positions; only the unconditional Info block was
relocated.

New order:
- `TSMode=0` (full): Settings, Gestures, Isas, Pie, Info
- `TSMode=1` (Pie only, gestures): Settings, Pie, Info
- `TSMode=2` (default, Pie only no native): Settings, Pie, Info

No resource, string, or layout changes — only smali instruction ordering
inside one method. Register usage was kept compatible (re-uses `v0`/`v1`/`v2`
which were already free at that point in the method).

**Verified on-device** (Android 16, SDK 36): snapshot confirms tab row reads
`SETTINGS | PIE | INFO` left-to-right. No `AndroidRuntime` or `System.err`
errors in logcat for `com.noname81.lmt`.

**Files touched:**
- `apktool/smali/com/noname81/lmt/LMT.smali` (`createTabs()` method only)

Build: `LMT-Launcher-v3.10.apk` (signed with the LMT-dedicated release key,
cert SHA-256 `REDACTED-CERT-HASH`).

---

## 2026-07-01 (on-device verify) — Fixed: root prompt + ext-storage toast on Android 16

### Fixed — Root prompt never appearing on Android 16 (SDK 36)

**Symptom.** On a rooted Android 16 (SDK 36) device with Magisk, launching
LMT never produced a root access prompt. No `su` invocation was ever made.

**Root cause.** The earlier §11.3 patch (same date, earlier) set the
`copyRemote()` SDK threshold to `0x23` (35) based on the assumption that the
target device ran Android 14 (SDK 34). Verification on a real device showed
`ro.build.version.sdk = 36` (Android 16): `36 >= 35` is true, so the
`InputContext34.jar` branch was still taken, and the same
`FileNotFoundException` was thrown before `su` was spawned (confirmed via
logcat — `System.err: java.io.FileNotFoundException: InputContext34.jar` at
`RootContext.copyRemote`, followed by `LMT::RootContext: Failed to get root
permissions!`).

**Fix.** `apktool/smali/com/noname81/lmt/RootContext.smali` `copyRemote()` —
raised the SDK threshold from `0x23` (35) to `0x3c` (60). No current or
near-future Android release will reach SDK 60, so the `>= 34` branch is now
permanently dead code and execution always falls through to the `>= 0x1d (29)`
branch, selecting `InputContext29.jar`.

**Verification (on-device, Android 16 + Magisk).** After rebuild + reinstall,
logcat on launch shows:
- No `FileNotFoundException`.
- `Magisk: su: request rejected (10324)` (uid 10324 = LMT) — confirming `su`
  is now actually spawned by `RootContext` (previously never reached).
- After granting LMT superuser in the Magisk app's Superuser tab, root init
  completes and `mInitialized` becomes `true`. Confirmed working by user.

---

### Fixed — "Please grant external storage read permission" toast on every launch (Android 13+)

**Symptom.** On Android 13+ (SDK ≥ 33), launching LMT showed a toast:
"Please grant LMT permission to read external storage" on every launch, even
after the user had granted (or could not grant) the permission.

**Root cause.** The earlier §11.2 patch (same date, earlier) removed the
*write*-permission gate inside `PieFragment.onActivityResult()` — but the
**main activity** (`LMT.onCreate` → `checkAndRequestPermissions()`) still
called `PermissionChecker.checkAndRequestExternalStorageReadPermission()` on
every launch. On Android 13+, `READ_EXTERNAL_STORAGE` is deprecated:
`ContextCompat.checkSelfPermission(...)` always returns `PERMISSION_DENIED`
regardless of any grant, so the toast fired unconditionally.

The permission is now genuinely unused on these Android versions: the icon-save
path was migrated to app-private `Context.getExternalFilesDir(null)` storage
(§11.2), which needs no runtime permission.

**Fix.** `apktool/smali/com/noname81/lmt/PermissionChecker.smali`
`checkAndRequestExternalStorageReadPermission()` — flipped the SDK gate
comparison from `if-lt v0, 0x17` (skip the check when SDK < 23) to
`if-ge v0, 0x21` (skip the check when SDK ≥ 33). On Android 13+ the method
now returns `true` immediately and never shows the toast; on older Android
the legacy runtime-permission flow is preserved unchanged.

**Files changed:**
- `apktool/smali/com/noname81/lmt/PermissionChecker.smali` — one instruction
  (`if-lt` → `if-ge`) and one constant (`0x17` → `0x21`) in
  `checkAndRequestExternalStorageReadPermission`.

**Verification (on-device, Android 16).** After rebuild + reinstall, logcat on
launch shows no `NotificationService: Suppressing toast` line for LMT and no
permission-related errors. The toast is gone.

---

### Added — Versioned builds (`VERSION` file + `build.sh` bump)

**Motivation.** The previous build output was a single static filename
(`LMT-Launcher-v3.4-patched.apk`), overwritten on every build. Distinguishing
successive builds required manual renaming, and there was no record of which
source state produced which APK. The in-app version (`versionName`/`versionCode`
in the APK manifest) was also frozen at the upstream values (`3.4`/`3400`),
so Android Settings → Apps → LMT always showed "3.4" regardless of patches
applied, and `adb install -r` could not distinguish successive builds as
upgrades.

**Changes:**
- New `VERSION` file at repo root, seeded with `3.4`.
- `build.sh` now reads `VERSION`, increments the **minor** component
  (`3.4` → `3.5` → `3.6` …), writes the new value back to `VERSION`, and
  uses it in the `==> version: X -> Y` build log line and in the output
  filename: `${DIST_DIR}/LMT-Launcher-v${NEW_VERSION}-patched.apk`.
- `build.sh` also patches `apktool/apktool.yml` `versionInfo` before invoking
  apktool: `versionName` = the new version string (e.g. `3.7`), `versionCode`
  = `major*1000 + minor*100` (e.g. `3700`). apktool embeds these into the
  rebuilt APK's `AndroidManifest.xml`, so Android Settings → Apps → LMT shows
  the bumped version, and `adb install -r` / Package Installer treats each
  successive build as an upgrade (no `INSTALL_FAILED_VERSION_DOWNGRADE`).
- `VERSION` is tracked in git (it is part of the source state, not a secret).

**Files changed:**
- `VERSION` — new file (`3.4`).
- `build.sh` — added version-read / increment / write-back block; added
  `apktool.yml` `versionInfo` patching via `sed` (versionCode + versionName);
  `OUT_APK` now uses `${NEW_VERSION}`.
- `apktool/apktool.yml` — `versionInfo.versionCode`/`versionName` are
  rewritten by `build.sh` on every run (do not edit by hand — `build.sh`
  owns them).

**Verification (on-device, Android 16).** After `./build.sh` producing v3.7,
clean install showed `versionCode=3700 versionName=3.7` via
`adb shell dumpsys package com.noname81.lmt`.

---



### Fixed — `MultiSelectActivity` over-aggressive filter drops apps without `android:appCategory`

**Symptom.** When adding an "App" action to a Pie/Gesture/ISA slot, the app
picker (`MultiSelectActivity`) listed only roughly half of the apps installed
on the device. Apps that *were* shown were indistinguishable from the missing
ones from a user perspective (both launchable, both appearing in the system
launcher).

**Root cause.** In `MultiSelectActivity.onCreate()`, the list-building loop
(on SDK ≥ 26) kept a package only if **all three** conditions held:

```java
if (packageInfo.activities != null
        && Build.VERSION.SDK_INT >= 26
        && packageInfo.applicationInfo.category > -1) {
    packageInfo.applicationInfo.name = loadLabel(...);
} else {
    mPackageInfos.remove(i);   // silently dropped
    i5--;
}
```

The third condition is the bug. `ApplicationInfo.category` defaults to
`CATEGORY_UNDEFINED = -1` for any app that does **not** declare
`android:appCategory="..."` in its manifest. A large fraction of apps
(including many popular ones) never set that attribute — it's optional and
was only added in Android 8.0 (API 26). The `appCategory` field is meant for
app-store-style classification (game/productivity/video_players/etc.); it has
nothing to do with whether an app is launchable.

The `activities != null` check alone already filters out non-launchable
packages (libraries, services with no activities), which is what the author
clearly intended. The `SDK_INT >= 26` and `category > -1` conditions were
added later (the `category` access is desugared through
`Launcher$$ExternalSyntheticApiModelOutline0.m()`, confirming it was a
backport shim) and are simply wrong.

**Fix.** `apktool/smali/com/noname81/lmt/MultiSelectActivity.smali` — in the
`getInstalledPackages` filter loop (just after `:goto_3`), removed the
`SDK_INT >= 26` (`if-lt v5, v6, :cond_6`) and `category > -1`
(`if-le v5, v6, :cond_6`) checks along with the
`Launcher$$ExternalSyntheticApiModelOutline0.m()` call. Now any package with
at least one activity is kept, regardless of its declared `appCategory`. The
`loadLabel` assignment (the `:goto_4` block) is unchanged.

**Files changed:**
- `apktool/smali/com/noname81/lmt/MultiSelectActivity.smali` — filter loop
  trimmed to `if-eqz activities, :cond_6` only (5 instructions / ~30 bytes
  removed).

**Files NOT changed:** `MultiSelectActivity.java` (jadx output is read-only —
the smali is the source of truth for the rebuilt APK). No other code path
filters by `appCategory`; this was the only one.

**Build / verify.** Rebuilt with `./build.sh` (new helper script — see README
§11.4). Output: `$HOME/Syncthing/APKs/LMT-Launcher-v3.4-patched.apk`,
signed with a **new, app-dedicated** signing key
(`keystore/release-keystore.jks`, credentials in `keystore/key.properties`,
both git-ignored — see `.gitignore`).

---

## 2026-07-01 — Three patches: third Pie ring, scoped-storage icon save, Android 14 root

### Added — Third concentric Pie ring (7 items, level 3)

**Motivation.** README §10.1 "Interpretation A" — add a third always-rendered
concentric ring to the Pie overlay, holding 7 items (matching level 2's slot
count). The `PieMenu` engine is level-agnostic up to `MAX_LEVELS = 5`
(verified — see §10.8 / §11 of README), so this is a pure data/UI wiring
change with no engine modifications.

**Why 7 items.** Requested by the user; matches level 2's layout and keeps
the slot schema uniform (each level is `2 * itemCount` slots: click +
long-click pairs).

**Files changed (all under `apktool/`):**

- `res/values/strings.xml` — added 15 strings: `pie_level_3` +
  `pie_level_3_item_1..7` + `pie_level_3_item_1..7_longpress`.
- `res/values/public.xml` — added matching `<public>` entries with IDs
  `0x7f0d008a`..`0x7f0d0098` (free range, verified non-colliding).
- `smali/com/noname81/lmt/R$string.smali` — added 15 `.field public static`
  declarations mirroring the above. **Critical:** apktool does not regenerate
  `R$string.smali` from `strings.xml`; it is a pre-compiled snapshot and must
  be hand-synced. Omitting this was the first crash during patching (see
  "Fixed (crash)" below).
- `smali/com/noname81/lmt/SettingsValuesBase.smali` `loadActions()` — pie
  loop bound `0x18` → `0x26` (24 → 38 slots). Slots 24..37 hold the 7
  click/long-click pairs for ring 3.
- `smali/com/noname81/lmt/PieControl.smali` `populateMenu()` — inserted a
  third `for` loop (`:goto_3` / `:cond_6` / `:cond_7`), start `0x18` (24),
  bound `0x25` (37), step 2, calling `makeItem(..., 0x3)` (third arg = level
  3). Mirrors the existing ring-2 loop (`:goto_1` / `:cond_2` / `:cond_3`)
  exactly, registers and all.
- `smali/com/noname81/lmt/PieFragment.smali` —
  - added `offsetLevel3 = 0x18` static field;
  - added a third `LinkedList` (`linkedList3`) with 14 entries (7 items ×
    click + longpress) and a third `addSection(getString(pie_level_3),
    new CommandSimpleAdapter(..., 0x18))`;
  - added a third `if-lt p3, 0x18` decrement in `onItemClick()` so list
    positions in the level-3 section map to the correct slot range (24..37).

**Slot layout after patch:**
- Ring 1 (level 1): slots 0–9 (5 items)
- Ring 2 (level 2): slots 10–23 (7 items)
- Ring 3 (level 3): slots 24–37 (7 items) ← new

**Files NOT changed (correctly):** `Action.smali`, `Launcher.smali`,
`PieMenu.smali`, `PieItem.smali`, animation/longpress/gradient/pointer/status
code — all level-agnostic. Verified via `grep -nE 'level|Level|mLevels'
PieMenu.smali` (§10.8 of README): `mLevels` appears only in `addItem`,
`clearItems`, `layoutPie`, `show`, and `PieView.layout(...)`.

---

### Fixed (crash) — `NoSuchFieldError: No static field pie_level_3_item_1`

**Symptom.** Tapping the "Pie" settings tab crashed the app immediately on
the first patched build.

**Root cause.** `PieFragment.smali` referenced `Lcom/noname81/lmt/R$string;
->pie_level_3_item_1:I`, but the `R$string.smali` file (a pre-compiled
snapshot of the R class, not regenerated by apktool) did not declare that
field. apktool assembles smali into dex with field references left symbolic —
they're only resolved at runtime, so the build succeeded but the app crashed
on first field access.

**Fix.** Added the 15 missing `.field public static` declarations to
`R$string.smali` and the matching `<public>` entries to `res/values/public.xml`,
all with consistent IDs `0x7f0d008a`..`0x7f0d0098`. Documented as a
maintenance rule in README §12 step 3: keep `R$string.smali`, `public.xml`,
and `strings.xml` in sync.

---

### Fixed — Pie icons not saving on Android 14 (scoped storage)

**Symptom.** Selecting an image for a Pie slot did nothing — no icon change,
no visible error. With broader logcat capture:

```
java.io.FileNotFoundException:
  /storage/emulated/0/Android/data/com.noname81.lmt/files/pie0.png:
  open failed: ENOENT (No such file or directory)
  at com.noname81.lmt.IconUtils.saveImageToFile(IconUtils.java:91)
```

**Root cause.** `SettingsValuesBase.loadResourceSearchPath()` built the icon
directory as `Environment.getExternalStorageDirectory().getPath() +
"/Android/data/com.noname81.lmt/files/"`. On Android 13+/14 (scoped storage),
that path is no longer writable via the raw `java.io.File` API —
`FileUtils.createFolder()`'s `mkdirs()` silently fails, so the directory
never exists, and `new FileOutputStream(...)` throws `ENOENT`. The exception
was swallowed by `IconUtils.saveImageToFile`'s `catch (Exception) {
e.printStackTrace(); }` (goes to `System.err`, not `AndroidRuntime`), which
is why the broad logcat filter was needed to find it.

This was a **pre-existing bug** unrelated to the third-ring patch — the
touched methods (`IconUtils`, `FileUtils`, `loadResourceSearchPath`) were
not modified by §11.1. It affects all icon picking on Android 14.

**Fix.** Two smali changes in `SettingsValuesBase.smali`:

1. `loadResourceSearchPath()` — rewrote to call
   `Context.getExternalFilesDir(null).getPath()` instead of
   `Environment.getExternalStorageDirectory().getPath() + "/Android/data/..."`.
   `getExternalFilesDir` resolves to the same on-disk path but inside the
   app's scoped-storage sandbox (no runtime permission needed), and the
   framework creates the directory on first access. Also stopped consulting
   the saved `ResourceSearchPath` pref — a stale value pointing at the old
   broken path would re-break the fix on upgraded installs.

2. `saveResourceSearchPath(String)` — patched the empty-input fallback
   (`:cond_0` block) the same way, for consistency.

Plus one change in `PieFragment.smali`:

3. `onActivityResult()` — removed the
   `PermissionChecker.checkAndRequestExternalStorageWritePermission(...)`
   gate that wrapped the `IconUtils.saveImageToFile(...)` call. The
   `WRITE_EXTERNAL_STORAGE` permission is now genuinely unnecessary
   (`getExternalFilesDir` needs no permission), and the gate was blocking
   the save + showing a misleading "Please grant LMT permission to read
   external storage" toast on fresh installs where the permission hadn't
   been granted via adb / runtime dialog.

**Verification.** After the fix, icon selection saves and displays correctly
with **zero adb permission grants** on a fresh install on Android 14.

---

### Fixed — Root prompt never appearing on Android 14 (missing InputContext34.jar)

**Symptom.** On a rooted Android 14 device with Magisk, launching LMT never
produced a root access prompt. No `su` invocation was ever made.

**Root cause.** `RootContext.copyRemote()` selects the InputContext helper
jar by SDK level:

```java
if (SDK_INT >= 34) str = "InputContext34.jar";
else if (SDK_INT >= 29) str = "InputContext29.jar";
...
```

But **only 5 InputContext jars ship in the APK** —
`InputContext20/21/24/28/29.jar`. There is **no `InputContext34.jar`** in
`apktool/assets/` (README §5.2 incorrectly claimed all 6 ship; now
corrected). On Android 14, `copyRemote()` threw `FileNotFoundException` from
`mContext.getAssets().open("InputContext34.jar")`, which propagated up to
the `RootContext` constructor's catch block, setting `mInitialized = false`
before `initRoot()` (which spawns `su`) was ever called. Hence no Magisk
prompt.

This is a **pre-existing bug** in the upstream APK, not a regression.

**Fix.** `RootContext.smali` `copyRemote()` — changed the SDK threshold from
`0x22` (34) to `0x23` (35), so SDK 34 falls through to the `>= 0x1d (29)`
branch and uses `InputContext29.jar`. The `InputContext29` jar uses
reflection on hidden APIs (`IActivityManager`, `InputManager.injectInputEvent`)
but runs via `app_process` under root, which bypasses the hidden-API
blocklist — so it works on Android 14.

**Caveat.** Some root-only actions that depend on SDK-34-specific hidden APIs
(if any exist) might still fail at runtime with a reflection error, since
the `InputContext29` source was written for Android 10. The core root path
(keyevent injection, `am start/force-stop`, task ordering) should work. If a
specific action misbehaves, logcat will show the reflection stack trace from
`InputContext.runCommand` and the jar source (`InputContext.java`,
decompiled via `jadx` on the extracted `classes.dex`) can be patched.

---

### Documentation

- `README.md` — corrected §5.2 (only 5 jars ship, not 6); marked §10.7
  decisions resolved; added §11 (applied patches summary) and §12 (agent
  maintenance instructions: keep `R$string.smali`/`public.xml`/`strings.xml`
  in sync, always update CHANGELOG + README, rebuild+sign before claiming
  done, verify on-device with logcat); updated §1 pie description to "3
  levels × 7 items" / 38 slots; marked §10.8 verification as completed.
- `CHANGELOG.md` — this file (new).
