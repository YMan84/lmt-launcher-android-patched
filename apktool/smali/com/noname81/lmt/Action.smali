.class Lcom/noname81/lmt/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field static final Activity:I = 0x1b

.field static final Apex:I = 0x29

.field static final App:I = 0x2

.field static final Assistant:I = 0x25

.field static final Back:I = 0x7

.field static final BackLongpress:I = 0x8

.field static final BluetoothToggle:I = 0x16

.field static final DataToggle:I = 0x15

.field static final GPSToggle:I = 0x17

.field static final Holo:I = 0x2a

.field static final Home:I = 0x3

.field static final HomeLongpress:I = 0x4

.field static final ImmersiveModeToggle:I = 0x18

.field static final Key:I = 0x1a

.field static final KillAllApps:I = 0x1f

.field static final KillApp:I = 0x1e

.field static final LastApp:I = 0xe

.field static final Menu:I = 0x5

.field static final MenuLongpress:I = 0x6

.field static final NextApp:I = 0xc

.field static final None:I = 0x1

.field static final Nova:I = 0x28

.field static final NowOnTap:I = 0x24

.field static final OffsetAdvancedCommands:I = 0x19

.field static final OffsetAppDrawer:I = 0x27

.field static final OffsetNormalCommands:I = 0x0

.field static final OffsetPieActions:I = 0x2b

.field static final OffsetToggleCommands:I = 0x13

.field static final OpenKeyboard:I = 0x11

.field static final OpenNotificationBar:I = 0xf

.field static final OpenPowerMenu:I = 0x12

.field static final OpenQuickSettings:I = 0x10

.field static final PiePointer:I = 0x2c

.field static final PieRecentApps:I = 0x2d

.field static final PrevApp:I = 0xd

.field static final RecentApps:I = 0x9

.field static final Screenshot:I = 0x22

.field static final Script:I = 0x1d

.field static final Search:I = 0xa

.field static final SearchLongpress:I = 0xb

.field static final Shortcut:I = 0x21

.field static final SplitScreen:I = 0x26

.field private static final TAG:Ljava/lang/String; = "LMT::Action"

.field static final TaskerTask:I = 0x20

.field static final UnpinApp:I = 0x23

.field static final WebPage:I = 0x1c

.field static final WifiToggle:I = 0x14

.field static final captions:[Ljava/lang/String;

.field static final names:[Ljava/lang/String;


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mString:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x2e

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "OffsetNormalCommands"

    aput-object v3, v1, v2

    const-string v4, "None"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "App"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "Home"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    const-string v4, "HomeLongpress"

    const/4 v8, 0x4

    aput-object v4, v1, v8

    const-string v4, "Menu"

    const/4 v9, 0x5

    aput-object v4, v1, v9

    const-string v4, "MenuLongpress"

    const/4 v10, 0x6

    aput-object v4, v1, v10

    const-string v4, "Back"

    const/4 v11, 0x7

    aput-object v4, v1, v11

    const-string v4, "BackLongpress"

    const/16 v12, 0x8

    aput-object v4, v1, v12

    const-string v4, "RecentApps"

    const/16 v13, 0x9

    aput-object v4, v1, v13

    const-string v4, "Search"

    const/16 v14, 0xa

    aput-object v4, v1, v14

    const-string v4, "SearchLongpress"

    const/16 v15, 0xb

    aput-object v4, v1, v15

    const-string v4, "NextApp"

    const/16 v16, 0xc

    aput-object v4, v1, v16

    const-string v4, "PrevApp"

    const/16 v17, 0xd

    aput-object v4, v1, v17

    const-string v4, "LastApp"

    const/16 v18, 0xe

    aput-object v4, v1, v18

    const-string v4, "OpenNotificationBar"

    const/16 v19, 0xf

    aput-object v4, v1, v19

    const-string v4, "OpenQuickSettings"

    const/16 v20, 0x10

    aput-object v4, v1, v20

    const-string v4, "OpenKeyboard"

    const/16 v21, 0x11

    aput-object v4, v1, v21

    const-string v4, "OpenPowerMenu"

    const/16 v22, 0x12

    aput-object v4, v1, v22

    const-string v4, "OffsetToggleCommands"

    const/16 v23, 0x13

    aput-object v4, v1, v23

    const/16 v4, 0x14

    const-string v24, "Wifi"

    aput-object v24, v1, v4

    const/16 v4, 0x15

    const-string v24, "Data"

    aput-object v24, v1, v4

    const/16 v4, 0x16

    const-string v24, "Bluetooth"

    aput-object v24, v1, v4

    const/16 v4, 0x17

    const-string v24, "GPS"

    aput-object v24, v1, v4

    const/16 v4, 0x18

    const-string v24, "ImmersiveMode"

    aput-object v24, v1, v4

    const/16 v4, 0x19

    const-string v24, "OffsetAdvancedCommands"

    aput-object v24, v1, v4

    const/16 v4, 0x1a

    const-string v24, "Key"

    aput-object v24, v1, v4

    const/16 v4, 0x1b

    const-string v24, "Activity"

    aput-object v24, v1, v4

    const/16 v4, 0x1c

    const-string v24, "WebPage"

    aput-object v24, v1, v4

    const/16 v4, 0x1d

    const-string v24, "Script"

    aput-object v24, v1, v4

    const/16 v4, 0x1e

    const-string v24, "KillApp"

    aput-object v24, v1, v4

    const/16 v4, 0x1f

    const-string v24, "KillAllApps"

    aput-object v24, v1, v4

    const/16 v4, 0x20

    const-string v24, "TaskerTask"

    aput-object v24, v1, v4

    const/16 v4, 0x21

    const-string v24, "Shortcut"

    aput-object v24, v1, v4

    const/16 v4, 0x22

    const-string v24, "Screenshot"

    aput-object v24, v1, v4

    const/16 v4, 0x23

    const-string v24, "UnpinApp"

    aput-object v24, v1, v4

    const/16 v4, 0x24

    const-string v24, "NowOnTap"

    aput-object v24, v1, v4

    const/16 v4, 0x25

    const-string v24, "Assistant"

    aput-object v24, v1, v4

    const/16 v4, 0x26

    const-string v24, "SplitScreen"

    aput-object v24, v1, v4

    const/16 v4, 0x27

    const-string v24, "OffsetAppDrawer"

    aput-object v24, v1, v4

    const/16 v4, 0x28

    const-string v24, "NovaLauncher"

    aput-object v24, v1, v4

    const/16 v4, 0x29

    const-string v24, "ApexLauncher"

    aput-object v24, v1, v4

    const/16 v4, 0x2a

    const-string v24, "HoloLauncher"

    aput-object v24, v1, v4

    const/16 v4, 0x2b

    const-string v24, "OffsetPieActions"

    aput-object v24, v1, v4

    const/16 v4, 0x2c

    const-string v24, "PiePointer"

    aput-object v24, v1, v4

    const/16 v4, 0x2d

    const-string v24, "PieRecentApps"

    aput-object v24, v1, v4

    .line 82
    sput-object v1, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v1, "Trigger no command"

    aput-object v1, v0, v5

    const-string v1, "Start an app [Root|None]"

    aput-object v1, v0, v6

    const-string v1, "Trigger home key [Accessibility|Root|None]"

    aput-object v1, v0, v7

    const-string v1, "Trigger longpress home key [Root]"

    aput-object v1, v0, v8

    const-string v1, "Trigger menu key [Root]"

    aput-object v1, v0, v9

    const-string v1, "Trigger longpress menu key [Root]"

    aput-object v1, v0, v10

    const-string v1, "Trigger back key [Accessibility|Root]"

    aput-object v1, v0, v11

    const-string v1, "Trigger longpress back key [Root]"

    aput-object v1, v0, v12

    const-string v1, "Trigger recent apps [Accessibility|Root]"

    aput-object v1, v0, v13

    const-string v1, "Activate search [Root|None]"

    aput-object v1, v0, v14

    const-string v1, "Activate voice search [None]"

    aput-object v1, v0, v15

    const-string v1, "Switch to next active app [Root]"

    aput-object v1, v0, v16

    const-string v1, "Switch to previous active app [Root]"

    aput-object v1, v0, v17

    const-string v1, "Switch to last active app [Root]"

    aput-object v1, v0, v18

    const-string v1, "Open the notification bar [Accessibility]"

    aput-object v1, v0, v19

    const-string v1, "Open the quick settings [Accessibility]"

    aput-object v1, v0, v20

    const-string v1, "Open the keyboard [None]"

    aput-object v1, v0, v21

    const-string v1, "Open the power menu [Accessibility|Root]"

    aput-object v1, v0, v22

    const-string v1, "OffsetToggleCommands"

    aput-object v1, v0, v23

    const/16 v1, 0x14

    const-string v2, "Toggle Wifi mode [None]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Toggle mobile data mode [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Toggle Bluetooth mode [None]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Toggle GPS mode [None]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Toggle Immersive mode [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "OffsetAdvancedCommands"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Trigger an arbitrary key [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Start an activity [Root|None]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Open an arbitrary webpage [None]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Trigger an arbitrary script [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Kill the current app and switch to homescreen [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Kill all apps and switch to homescreen [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Trigger a tasker task [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Trigger a shortcut [None]"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Trigger a screenshot [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Unpin pinned app [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Activate Google Now On Tap [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Activate Google Assistant [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Toggle Split Screen [Accessibility]"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "OffsetAppDrawer"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Open AppDrawer from NovaLauncher [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Open AppDrawer from ApexLauncher [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Open AppDrawer from HoloLauncher [Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "OffsetPieActions"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Activate pie pointer extension [Accessibility|Root]"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Activate Pie Recent Apps [Root|UsageStats]"

    aput-object v2, v0, v1

    .line 131
    sput-object v0, Lcom/noname81/lmt/Action;->captions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Lcom/noname81/lmt/Action;->mType:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/noname81/lmt/Action;->mType:I

    .line 190
    iput-object p2, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/noname81/lmt/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lcom/noname81/lmt/Action;->mType:I

    .line 196
    iput-object p2, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    .line 197
    iput-object p3, p0, Lcom/noname81/lmt/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/noname81/lmt/Action;->mType:I

    .line 202
    iput-object p2, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    .line 203
    invoke-static {p4, p3}, Lcom/noname81/lmt/IconUtils;->convertBase64StringToDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method checkNeededPermissions(Landroid/app/Activity;Z)V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lcom/noname81/lmt/Action;->getType()I

    move-result v0

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 335
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2

    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 336
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/noname81/lmt/PermissionChecker;->checkAndRequestUsageStatsPermission(Landroid/app/Activity;Z)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 330
    iget-object p2, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    const-string v0, "android.intent.action.CALL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 331
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/noname81/lmt/PermissionChecker;->checkAndRequestPhoneCallPermission(Landroid/app/Activity;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 240
    iget v0, p0, Lcom/noname81/lmt/Action;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p5, :cond_0

    return-object v1

    :cond_0
    const/4 p5, 0x0

    .line 246
    :try_start_0
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadResourceSearchPath()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    iget v5, p0, Lcom/noname81/lmt/Action;->mType:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "LMT::Action"

    const-string v5, "Failed to load available image "

    if-eqz p2, :cond_2

    .line 251
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 254
    invoke-virtual {v6, v2, p5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 257
    invoke-static {p1, v6, p3}, Lcom/noname81/lmt/IconUtils;->resizeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 260
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    new-instance p2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 270
    invoke-static {p1, p2, p3}, Lcom/noname81/lmt/IconUtils;->resizeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 273
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 280
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/noname81/lmt/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 281
    invoke-static {p1, p2, p4}, Lcom/noname81/lmt/IconUtils;->resizeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 285
    :cond_5
    iget p2, p0, Lcom/noname81/lmt/Action;->mType:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_6

    if-lez p4, :cond_6

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 288
    :try_start_2
    iget-object v0, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 289
    invoke-static {p1, p2, p4}, Lcom/noname81/lmt/IconUtils;->resizeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    nop

    .line 295
    :cond_6
    iget p2, p0, Lcom/noname81/lmt/Action;->mType:I

    const/16 v0, 0x1b

    if-ne p2, v0, :cond_7

    if-lez p4, :cond_7

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 298
    :try_start_3
    iget-object v0, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, p5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 300
    invoke-static {p1, p2, p4}, Lcom/noname81/lmt/IconUtils;->resizeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    .line 307
    :catch_2
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 309
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p4

    invoke-virtual {p4}, Lcom/noname81/lmt/SettingsValues;->loadPieNavButtonStyle()I

    move-result p4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v0, "drawable"

    if-ne p4, v2, :cond_8

    .line 311
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    iget p5, p0, Lcom/noname81/lmt/Action;->mType:I

    aget-object p4, p4, p5

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_kitkat"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, v0, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    goto :goto_1

    :cond_8
    if-ne p4, p3, :cond_9

    .line 314
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    iget p5, p0, Lcom/noname81/lmt/Action;->mType:I

    aget-object p4, p4, p5

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_pixel"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, v0, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    :cond_9
    :goto_1
    if-nez p5, :cond_a

    .line 317
    sget-object p3, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    iget p4, p0, Lcom/noname81/lmt/Action;->mType:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, v0, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 319
    :cond_a
    invoke-static {p1, p5}, Lcom/noname81/lmt/IconUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object p1

    :catch_3
    return-object v1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/noname81/lmt/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/noname81/lmt/Action;->mType:I

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/noname81/lmt/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/noname81/lmt/Action;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 232
    iget v0, p0, Lcom/noname81/lmt/Action;->mType:I

    const-string v1, "none"

    if-lez v0, :cond_0

    sget-object v2, Lcom/noname81/lmt/Action;->names:[Ljava/lang/String;

    array-length v3, v2

    if-gt v0, v3, :cond_0

    aget-object v0, v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/noname81/lmt/Action;->mString:Ljava/lang/String;

    .line 234
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", string: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
