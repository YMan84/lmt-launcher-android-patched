.class Lcom/noname81/lmt/Toaster;
.super Ljava/lang/Object;
.source "Toaster.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final Debug:I = 0x1

.field static final Image:I = 0x2

.field static final None:I = 0x0

.field static final Vibrate:I = 0x3

.field private static instance:Lcom/noname81/lmt/Toaster;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mSettings:Lcom/noname81/lmt/SettingsValues;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadFeedbackMode()I

    move-result p1

    iput p1, p0, Lcom/noname81/lmt/Toaster;->mMode:I

    .line 43
    iget-object p1, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/noname81/lmt/Toaster;->mVibrator:Landroid/os/Vibrator;

    .line 44
    iget-object p1, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/Toaster;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Toaster;
    .locals 1

    .line 48
    sget-object v0, Lcom/noname81/lmt/Toaster;->instance:Lcom/noname81/lmt/Toaster;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/noname81/lmt/Toaster;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/Toaster;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noname81/lmt/Toaster;->instance:Lcom/noname81/lmt/Toaster;

    .line 51
    :cond_0
    sget-object p0, Lcom/noname81/lmt/Toaster;->instance:Lcom/noname81/lmt/Toaster;

    return-object p0
.end method

.method private showDebug(Lcom/noname81/lmt/TouchServiceResult;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showImage(Lcom/noname81/lmt/TouchServiceResult;)V
    .locals 5

    .line 87
    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    sget v1, Lcom/noname81/lmt/R$layout;->toaster:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/noname81/lmt/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 94
    iget-object v2, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result p1

    aget-object p1, v3, p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 95
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance p1, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/noname81/lmt/Toaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private vibrateGestures()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/noname81/lmt/Toaster;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/noname81/lmt/Toaster;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadGestureVibrationTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method getMode()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/noname81/lmt/Toaster;->mMode:I

    return v0
.end method

.method setMode(I)V
    .locals 1

    .line 60
    iput p1, p0, Lcom/noname81/lmt/Toaster;->mMode:I

    .line 61
    iget-object v0, p0, Lcom/noname81/lmt/Toaster;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0, p1}, Lcom/noname81/lmt/SettingsValues;->saveFeedbackMode(I)V

    return-void
.end method

.method show(Lcom/noname81/lmt/TouchServiceResult;)V
    .locals 2

    .line 65
    iget v0, p0, Lcom/noname81/lmt/Toaster;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/noname81/lmt/Toaster;->vibrateGestures()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lcom/noname81/lmt/Toaster;->showImage(Lcom/noname81/lmt/TouchServiceResult;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0, p1}, Lcom/noname81/lmt/Toaster;->showDebug(Lcom/noname81/lmt/TouchServiceResult;)V

    :goto_0
    return-void
.end method

.method vibratePie()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/noname81/lmt/Toaster;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/noname81/lmt/Toaster;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrationTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
