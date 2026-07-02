.class Lcom/noname81/lmt/DebugHelper;
.super Ljava/lang/Object;
.source "DebugHelper.java"


# static fields
.field private static instance:Lcom/noname81/lmt/DebugHelper;


# instance fields
.field private mDebugLauncherEnabled:Z

.field private mDebugPieEnabled:Z

.field private mDebugTouchServiceEnabled:Z

.field private mNoRootEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/noname81/lmt/DebugHelper;->mDebugLauncherEnabled:Z

    .line 25
    iput-boolean v0, p0, Lcom/noname81/lmt/DebugHelper;->mDebugTouchServiceEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/noname81/lmt/DebugHelper;->mDebugPieEnabled:Z

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/noname81/lmt/DebugHelper;->mNoRootEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/DebugHelper;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/noname81/lmt/DebugHelper;->mDebugLauncherEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/noname81/lmt/DebugHelper;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/noname81/lmt/DebugHelper;->mDebugLauncherEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/noname81/lmt/DebugHelper;Landroid/content/Context;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/noname81/lmt/DebugHelper;->setDebugLauncher(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/noname81/lmt/DebugHelper;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/noname81/lmt/DebugHelper;->mDebugTouchServiceEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/noname81/lmt/DebugHelper;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/noname81/lmt/DebugHelper;->mDebugTouchServiceEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/noname81/lmt/DebugHelper;Landroid/content/Context;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/noname81/lmt/DebugHelper;->setDebugTouchService(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/noname81/lmt/DebugHelper;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/noname81/lmt/DebugHelper;->mDebugPieEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/noname81/lmt/DebugHelper;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/noname81/lmt/DebugHelper;->mDebugPieEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/noname81/lmt/DebugHelper;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/noname81/lmt/DebugHelper;->setPieDebug(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/noname81/lmt/DebugHelper;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/noname81/lmt/DebugHelper;->mNoRootEnabled:Z

    return p0
.end method

.method static synthetic access$602(Lcom/noname81/lmt/DebugHelper;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/noname81/lmt/DebugHelper;->mNoRootEnabled:Z

    return p1
.end method

.method public static getInstance()Lcom/noname81/lmt/DebugHelper;
    .locals 1

    .line 33
    sget-object v0, Lcom/noname81/lmt/DebugHelper;->instance:Lcom/noname81/lmt/DebugHelper;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/noname81/lmt/DebugHelper;

    invoke-direct {v0}, Lcom/noname81/lmt/DebugHelper;-><init>()V

    sput-object v0, Lcom/noname81/lmt/DebugHelper;->instance:Lcom/noname81/lmt/DebugHelper;

    .line 36
    :cond_0
    sget-object v0, Lcom/noname81/lmt/DebugHelper;->instance:Lcom/noname81/lmt/DebugHelper;

    return-object v0
.end method

.method private setDebugLauncher(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 83
    invoke-static {p2}, Lcom/noname81/lmt/Launcher;->setDebug(I)V

    .line 84
    invoke-static {p2}, Lcom/noname81/lmt/AccessibilityHandler;->setDebug(I)V

    .line 85
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object v1

    const-string v2, "debug 1"

    invoke-virtual {v1, v2, v0}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    .line 86
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/RootContext;->setDebug(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/noname81/lmt/Launcher;->setDebug(I)V

    .line 90
    invoke-static {v0}, Lcom/noname81/lmt/AccessibilityHandler;->setDebug(I)V

    .line 91
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p2

    const-string v1, "debug 0"

    invoke-virtual {p2, v1, v0}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    .line 92
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/RootContext;->setDebug(I)V

    :goto_0
    return-void
.end method

.method private setDebugTouchService(Landroid/content/Context;Z)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/noname81/lmt/TouchServiceNative;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/TouchServiceNative;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/TouchServiceNative;->setDebug(I)I

    return-void
.end method

.method private setPieDebug(Z)V
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/noname81/lmt/PieContainer;->setDebug(Z)V

    .line 98
    invoke-static {p1}, Lcom/noname81/lmt/PieContainer;->setDebug(Z)V

    .line 99
    invoke-static {p1}, Lcom/noname81/lmt/PieMenu;->setDebug(Z)V

    return-void
.end method


# virtual methods
.method showDebugMenu(Landroid/content/Context;)V
    .locals 8

    .line 40
    new-instance v7, Lcom/noname81/lmt/DebugHelper$1;

    sget v0, Lcom/noname81/lmt/R$string;->dialog_set_debug_mode:I

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    sget v0, Lcom/noname81/lmt/R$string;->dialog_none:I

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    sget v0, Lcom/noname81/lmt/R$string;->dialog_launcher_debug:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    sget v0, Lcom/noname81/lmt/R$string;->dialog_touch_service_debug:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    sget v0, Lcom/noname81/lmt/R$string;->dialog_pie_service_debug:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v4, v2

    sget v0, Lcom/noname81/lmt/R$string;->dialog_no_root:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v4, v2

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/DebugHelper$1;-><init>(Lcom/noname81/lmt/DebugHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 74
    invoke-virtual {v7}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    return-void
.end method
