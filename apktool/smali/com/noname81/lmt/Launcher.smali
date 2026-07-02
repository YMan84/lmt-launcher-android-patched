.class Lcom/noname81/lmt/Launcher;
.super Ljava/lang/Object;
.source "Launcher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LMT::Launcher"

.field private static instance:Lcom/noname81/lmt/Launcher;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mRecentTaskInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRootContext:Lcom/noname81/lmt/RootContext;

.field private mRunningTaskInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/noname81/lmt/SettingsValues;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    .line 58
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    .line 59
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/Launcher;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/Launcher;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/noname81/lmt/Launcher;)Lcom/noname81/lmt/RootContext;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/noname81/lmt/Launcher;)Landroid/app/ActivityManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private doActivityAction(Ljava/lang/String;)V
    .locals 4

    .line 439
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doActivityAction("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_6

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 441
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 444
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "am move-to-front-or-start "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 446
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 448
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, p1, v0}, Lcom/noname81/lmt/Launcher;->moveTaskToFront(Ljava/lang/String;I)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_3
    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->startActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_4
    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->startActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 464
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 465
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 466
    iget-object p1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private doAppAction(Ljava/lang/String;)Z
    .locals 2

    .line 401
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doAppAction("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 404
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doActivityAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private doAssistantAction()V
    .locals 2

    .line 736
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doAssistantAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "219"

    .line 737
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(Ljava/lang/String;)V

    return-void
.end method

.method private doBackAction()V
    .locals 3

    .line 245
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doBackAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 247
    invoke-static {v2}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 250
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method

.method private doBackLongpressAction()V
    .locals 2

    .line 258
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doBackLongpressAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x7d4

    .line 259
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    return-void
.end method

.method private doBluetoothToggleAction()V
    .locals 2

    .line 563
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doBluetoothToggleAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 566
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_0
    return-void
.end method

.method private doDataToggleAction()V
    .locals 9

    .line 526
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doDataToggleAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    const/4 v2, 0x2

    const-string v3, "phone"

    const/4 v4, 0x1

    if-lt v0, v1, :cond_2

    .line 528
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 530
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 531
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "svc data disable"

    invoke-virtual {v0, v1, v4}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    goto :goto_1

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "svc data enable"

    invoke-virtual {v0, v1, v4}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    goto :goto_1

    .line 539
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 540
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "mService"

    .line 545
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 547
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setMobileDataEnabled"

    new-array v6, v4, [Ljava/lang/Class;

    .line 552
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v4, [Ljava/lang/Object;

    .line 556
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private doGPSToggleAction()V
    .locals 2

    .line 574
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doGPSToggleAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 576
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private doHomeAction()V
    .locals 2

    .line 199
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doHomeAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 201
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 204
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    goto :goto_0

    .line 207
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private doHomeLongpressAction()V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doHomeLongpressAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x7d3

    .line 216
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    return-void
.end method

.method private doImmersiveModeToggleAction()V
    .locals 3

    .line 581
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doImmersiveModeToggleAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v2, "settings get global policy_control"

    invoke-virtual {v1, v2, v0}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v2, "settings put global policy_control immersive.navigation=*,-com.android.systemui,-com.whatsapp"

    invoke-virtual {v1, v2, v0}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "navigation"

    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v2, "settings put global policy_control immersive.full=*,-com.android.systemui,-com.whatsapp"

    invoke-virtual {v1, v2, v0}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v2, "settings put global policy_control null*"

    invoke-virtual {v1, v2, v0}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private doKeyAction(I)V
    .locals 3

    .line 396
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doKeyAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input keyevent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    return-void
.end method

.method private doKeyAction(Ljava/lang/String;)V
    .locals 3

    .line 391
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doKeyAction("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input keyevent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    return-void
.end method

.method private doKillAllAppsAction()V
    .locals 4

    .line 620
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doKillAllAppsAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 623
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am kill-all-apps 0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    .line 627
    new-instance v0, Lcom/noname81/lmt/Launcher$2;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/Launcher$2;-><init>(Lcom/noname81/lmt/Launcher;)V

    const/4 v1, 0x3

    .line 640
    invoke-direct {p0, v1}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    .line 641
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 642
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void
.end method

.method private doKillAppAction()V
    .locals 4

    .line 596
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doKillAppAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 599
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am kill-app 0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRunningTaskInfo:Ljava/util/List;

    .line 603
    new-instance v0, Lcom/noname81/lmt/Launcher$1;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/Launcher$1;-><init>(Lcom/noname81/lmt/Launcher;)V

    const/4 v1, 0x3

    .line 613
    invoke-direct {p0, v1}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    .line 614
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 615
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void
.end method

.method private doLastApp()V
    .locals 6

    .line 347
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doLastApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v0, v1, :cond_2

    .line 350
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v3}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am last-app 0"

    invoke-virtual {v0, v1, v5}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/SettingsValues;->getPackageNamesOfRecentApps(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_5

    const-string v1, " "

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 357
    aget-object v2, v1, v5

    invoke-direct {p0, v2}, Lcom/noname81/lmt/Launcher;->doAppAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 358
    aget-object v0, v1, v4

    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doAppAction(Ljava/lang/String;)Z

    goto :goto_1

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    .line 366
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "android.intent.category.HOME"

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v3, 0x2

    .line 372
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-direct {p0, v0, v1}, Lcom/noname81/lmt/Launcher;->moveTaskToFront(Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private doMenuAction()V
    .locals 2

    .line 234
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doMenuAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x52

    .line 235
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    return-void
.end method

.method private doMenuLongpressAction()V
    .locals 2

    .line 239
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doMenuLongpressAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x822

    .line 240
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    return-void
.end method

.method private doNextApp()V
    .locals 9

    .line 293
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doNextApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am next-app 0"

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    const v0, 0x7fffffff

    const v1, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 304
    :goto_0
    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 305
    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const-string v7, "android.intent.category.HOME"

    if-ge v6, v0, :cond_2

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v8, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-le v6, v8, :cond_2

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v6}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 306
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move v4, v2

    .line 309
    :cond_2
    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ge v6, v1, :cond_3

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v6}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 310
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move v5, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 314
    :cond_4
    iget-object v2, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    if-lez v4, :cond_5

    move v5, v4

    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v2}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v2

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    if-lez v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/noname81/lmt/Launcher;->moveTaskToFront(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method private doNowOnTapAction()V
    .locals 2

    .line 730
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doNowOnTapAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "219"

    .line 731
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(Ljava/lang/String;)V

    return-void
.end method

.method private doOpenApex()V
    .locals 3

    .line 757
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doOpenApex()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am start -a com.anddoes.launcher.ACTION -n com.anddoes.launcher/.Launcher -e LAUNCHER_ACTION \'APP_DRAWER\'"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    return-void
.end method

.method private doOpenHolo()V
    .locals 3

    .line 762
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doOpenHolo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am start -a com.mobint.hololauncher.ACTION -n com.mobint.hololauncher/.Launcher -e ACTION \'DRAWER\'"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    return-void
.end method

.method private doOpenKeyboard()V
    .locals 3

    .line 703
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doOpenKeyboard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 706
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method private doOpenNova()V
    .locals 3

    .line 752
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doOpenNova()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am start -a com.teslacoilsw.launcher.ACTION -n com.teslacoilsw.launcher/.NovaShortcutHandler"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    return-void
.end method

.method private doPowerMenuAction()V
    .locals 2

    .line 378
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doPowerMenuAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 380
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x402

    .line 383
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method

.method private doPrevApp()V
    .locals 9

    .line 320
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doPrevApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am prev-app 0"

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 331
    :goto_0
    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 332
    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const-string v7, "android.intent.category.HOME"

    if-le v6, v1, :cond_2

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v8, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ge v6, v8, :cond_2

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v6}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 333
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move v0, v2

    .line 336
    :cond_2
    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-le v6, v5, :cond_3

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v6}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 337
    iget-object v4, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move v4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 341
    :cond_4
    iget-object v2, p0, Lcom/noname81/lmt/Launcher;->mRecentTaskInfo:Ljava/util/List;

    if-lez v0, :cond_5

    move v4, v0

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v2}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v2

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v5

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/noname81/lmt/Launcher;->moveTaskToFront(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method private doRecentAppsAction()V
    .locals 2

    .line 221
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doRecentAppsAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 223
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xbb

    .line 226
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method

.method private doScreenshotAction()V
    .locals 2

    .line 720
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doScreenshotAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "1000 120"

    .line 721
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(Ljava/lang/String;)V

    return-void
.end method

.method private doScriptAction(Ljava/lang/String;)V
    .locals 4

    .line 494
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doScriptAction("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ".sh"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sh "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private doSearchAction()V
    .locals 2

    .line 263
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doSearchAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x54

    .line 265
    invoke-direct {p0, v0}, Lcom/noname81/lmt/Launcher;->doKeyAction(I)V

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doSearchLongpressAction()V
    .locals 2

    .line 280
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doSearchLongpressAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doShortcutAction(Ljava/lang/String;)V
    .locals 2

    .line 710
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doShortcutAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 712
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 713
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private doSplitScreenAction()V
    .locals 2

    .line 742
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doSplitScreenAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 744
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method

.method private doTaskerAction(Ljava/lang/String;)V
    .locals 3

    .line 647
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doTaskerAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 648
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "am broadcast -a net.dinglisch.android.tasker.ACTION_TASK -e task_name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private doUnpinAppAction()V
    .locals 3

    .line 725
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doUnpinAppAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "am task lock stop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    return-void
.end method

.method private doWebPageAction(Ljava/lang/String;)V
    .locals 2

    .line 472
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doWebPageAction("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "http"

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "www"

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 478
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 482
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 485
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 488
    :try_start_0
    iget-object p1, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private doWifiToggleAction()V
    .locals 4

    .line 506
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doWifiToggleAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "wifi"

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    .line 508
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 510
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "svc wifi disable"

    invoke-virtual {v0, v1, v3}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "svc wifi enable"

    invoke-virtual {v0, v1, v3}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 520
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Launcher;
    .locals 1

    .line 63
    sget-object v0, Lcom/noname81/lmt/Launcher;->instance:Lcom/noname81/lmt/Launcher;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/noname81/lmt/Launcher;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/Launcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noname81/lmt/Launcher;->instance:Lcom/noname81/lmt/Launcher;

    .line 66
    :cond_0
    sget-object p0, Lcom/noname81/lmt/Launcher;->instance:Lcom/noname81/lmt/Launcher;

    return-object p0
.end method

.method private moveTaskToFront(Ljava/lang/String;I)V
    .locals 2

    .line 415
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveTaskToFront("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LMT::Launcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 417
    iget-object p1, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "am move-to-front "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/noname81/lmt/Launcher;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :goto_0
    return-void
.end method

.method static setDebug(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    sput-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    return-void
.end method

.method private startActivity(Ljava/lang/String;)V
    .locals 4

    .line 428
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startActivity("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x1

    const-string v3, "am start -a android.intent.action.MAIN -n "

    if-lt v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method doOpenNotificationBar()V
    .locals 6

    .line 655
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doOpenNotificationBar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 657
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 659
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const-string v3, "android.app.StatusBarManager"

    const-string v4, "statusbar"

    const/4 v5, 0x1

    if-lt v0, v2, :cond_2

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 662
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "expandNotificationsPanel"

    new-array v4, v1, [Ljava/lang/Class;

    .line 663
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 664
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 671
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 672
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "expand"

    new-array v4, v1, [Ljava/lang/Class;

    .line 673
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 674
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 676
    :catch_1
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method

.method doOpenQuickSettings()V
    .locals 6

    .line 683
    sget-boolean v0, Lcom/noname81/lmt/Launcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::Launcher"

    const-string v1, "doOpenQuickSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 685
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->performAction(I)V

    goto :goto_0

    .line 687
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android.app.StatusBarManager"

    .line 690
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "expandSettingsPanel"

    new-array v5, v1, [Ljava/lang/Class;

    .line 691
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 692
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/Launcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method

.method fireAction(Lcom/noname81/lmt/Action;)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fire action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 190
    :pswitch_1
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doOpenHolo()V

    goto/16 :goto_0

    .line 187
    :pswitch_2
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doOpenApex()V

    goto/16 :goto_0

    .line 184
    :pswitch_3
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doOpenNova()V

    goto/16 :goto_0

    .line 181
    :pswitch_4
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doSplitScreenAction()V

    goto/16 :goto_0

    .line 178
    :pswitch_5
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doAssistantAction()V

    goto/16 :goto_0

    .line 175
    :pswitch_6
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doNowOnTapAction()V

    goto/16 :goto_0

    .line 172
    :pswitch_7
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doUnpinAppAction()V

    goto/16 :goto_0

    .line 169
    :pswitch_8
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doScreenshotAction()V

    goto/16 :goto_0

    .line 166
    :pswitch_9
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doShortcutAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :pswitch_a
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doTaskerAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :pswitch_b
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doKillAllAppsAction()V

    goto/16 :goto_0

    .line 157
    :pswitch_c
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doKillAppAction()V

    goto/16 :goto_0

    .line 154
    :pswitch_d
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doScriptAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :pswitch_e
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doWebPageAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :pswitch_f
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doActivityAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :pswitch_10
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doKeyAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :pswitch_11
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doImmersiveModeToggleAction()V

    goto/16 :goto_0

    .line 139
    :pswitch_12
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doGPSToggleAction()V

    goto :goto_0

    .line 136
    :pswitch_13
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doBluetoothToggleAction()V

    goto :goto_0

    .line 133
    :pswitch_14
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doDataToggleAction()V

    goto :goto_0

    .line 130
    :pswitch_15
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doWifiToggleAction()V

    goto :goto_0

    .line 127
    :pswitch_16
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doPowerMenuAction()V

    goto :goto_0

    .line 124
    :pswitch_17
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doOpenKeyboard()V

    goto :goto_0

    .line 121
    :pswitch_18
    invoke-virtual {p0}, Lcom/noname81/lmt/Launcher;->doOpenQuickSettings()V

    goto :goto_0

    .line 118
    :pswitch_19
    invoke-virtual {p0}, Lcom/noname81/lmt/Launcher;->doOpenNotificationBar()V

    goto :goto_0

    .line 115
    :pswitch_1a
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doLastApp()V

    goto :goto_0

    .line 112
    :pswitch_1b
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doPrevApp()V

    goto :goto_0

    .line 109
    :pswitch_1c
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doNextApp()V

    goto :goto_0

    .line 106
    :pswitch_1d
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doSearchLongpressAction()V

    goto :goto_0

    .line 103
    :pswitch_1e
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doSearchAction()V

    goto :goto_0

    .line 100
    :pswitch_1f
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doRecentAppsAction()V

    goto :goto_0

    .line 97
    :pswitch_20
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doBackLongpressAction()V

    goto :goto_0

    .line 94
    :pswitch_21
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doBackAction()V

    goto :goto_0

    .line 91
    :pswitch_22
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doMenuLongpressAction()V

    goto :goto_0

    .line 88
    :pswitch_23
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doMenuAction()V

    goto :goto_0

    .line 85
    :pswitch_24
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doHomeLongpressAction()V

    goto :goto_0

    .line 82
    :pswitch_25
    invoke-direct {p0}, Lcom/noname81/lmt/Launcher;->doHomeAction()V

    goto :goto_0

    .line 79
    :pswitch_26
    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/noname81/lmt/Launcher;->doAppAction(Ljava/lang/String;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
