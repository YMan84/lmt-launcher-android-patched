.class Lcom/noname81/lmt/SettingsValuesBase;
.super Lcom/noname81/lmt/SettingsSharedPrefsWrapper;
.source "SettingsValuesBase.java"


# static fields
.field static final path:Ljava/lang/String; = "/Android/data/com.noname81.lmt/files/"


# instance fields
.field mActivityManager:Landroid/app/ActivityManager;

.field mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlacklistPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentGesture:I

.field private mCurrentIsa:I

.field private mCurrentPie:I

.field private mGestureActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/noname81/lmt/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mIsaActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/noname81/lmt/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mPieActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/noname81/lmt/Action;",
            ">;"
        }
    .end annotation
.end field

.field mRootContext:Lcom/noname81/lmt/RootContext;

.field private mServiceState:I

.field mSingleSwipesAArea:I

.field mTouchscreenScreenFactorX:F

.field mTouchscreenScreenFactorY:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/noname81/lmt/SettingsSharedPrefsWrapper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mServiceState:I

    .line 55
    iget-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mRootContext:Lcom/noname81/lmt/RootContext;

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mGestureActions:Ljava/util/Vector;

    .line 59
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mPieActions:Ljava/util/Vector;

    .line 61
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    .line 62
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mIsaActions:Ljava/util/Vector;

    .line 64
    iget-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mActivityManager:Landroid/app/ActivityManager;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->loadSingleSwipesAArea()I

    move-result p1

    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mSingleSwipesAArea:I

    .line 69
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->loadTouchscreenScreenFactorX()F

    move-result p1

    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mTouchscreenScreenFactorX:F

    .line 70
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->loadTouchscreenScreenFactorY()F

    move-result p1

    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mTouchscreenScreenFactorY:F

    .line 72
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->loadActions()V

    .line 73
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->loadBlacklist()V

    .line 74
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->loadBlacklistPie()V

    return-void
.end method

.method private getIsSmallScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadActions()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 189
    :goto_0
    sget-object v2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mGestureActions:Ljava/util/Vector;

    invoke-direct {p0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadGestureAction(I)Lcom/noname81/lmt/Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x26

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mPieActions:Ljava/util/Vector;

    invoke-direct {p0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mIsaActions:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/noname81/lmt/SettingsValuesBase;->loadIsaAction(I)Lcom/noname81/lmt/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private loadBlacklist()V
    .locals 5

    const-string v0, "Blacklist"

    const-string v1, ""

    .line 361
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 363
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 364
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 365
    iget-object v4, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadBlacklistPie()V
    .locals 5

    const-string v0, "BlacklistPie"

    const-string v1, ""

    .line 371
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 373
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadGestureAction(I)Lcom/noname81/lmt/Action;
    .locals 5

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    aget-object p1, v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Icon"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance v2, Lcom/noname81/lmt/Action;

    iget-object v3, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object v2
.end method

.method private loadIsaAction(I)Lcom/noname81/lmt/Action;
    .locals 5

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsaItem"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Icon"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    new-instance v1, Lcom/noname81/lmt/Action;

    iget-object v3, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object v1
.end method

.method private loadPieAction(I)Lcom/noname81/lmt/Action;
    .locals 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PieItem"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " String"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Icon"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v1, Lcom/noname81/lmt/Action;

    iget-object v3, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object v1
.end method

.method private saveBlacklist()V
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 384
    :goto_0
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, ";"

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Blacklist"

    invoke-virtual {p0, v2, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private saveBlacklistPie()V
    .locals 3

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 397
    :goto_0
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, ";"

    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BlacklistPie"

    invoke-virtual {p0, v2, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private saveGestureAction(ILcom/noname81/lmt/Action;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getType()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Icon"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/noname81/lmt/IconUtils;->convertDrawableToBase64String(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private saveIsaAction(ILcom/noname81/lmt/Action;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsaItem"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getType()I

    move-result v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " String"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Icon"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/noname81/lmt/IconUtils;->convertDrawableToBase64String(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private savePieAction(ILcom/noname81/lmt/Action;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PieItem"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getType()I

    move-result v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " String"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Icon"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/noname81/lmt/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/noname81/lmt/IconUtils;->convertDrawableToBase64String(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method clearBlacklisted()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->saveBlacklist()V

    return-void
.end method

.method clearBlacklistedPie()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->saveBlacklistPie()V

    return-void
.end method

.method getCurrentAction()Lcom/noname81/lmt/Action;
    .locals 2

    .line 136
    iget v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mGestureActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/Action;

    return-object v0

    .line 138
    :cond_0
    iget v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    if-ltz v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mPieActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/Action;

    return-object v0

    .line 140
    :cond_1
    iget v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    if-ltz v0, :cond_2

    .line 141
    iget-object v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mIsaActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/Action;

    return-object v0

    .line 143
    :cond_2
    new-instance v0, Lcom/noname81/lmt/Action;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/noname81/lmt/Action;-><init>(I)V

    return-object v0
.end method

.method getGestureAction(I)Lcom/noname81/lmt/Action;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mGestureActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mGestureActions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/Action;

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Lcom/noname81/lmt/Action;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/noname81/lmt/Action;-><init>(I)V

    return-object p1
.end method

.method getIsaAction(I)Lcom/noname81/lmt/Action;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mIsaActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mIsaActions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/Action;

    return-object p1

    .line 131
    :cond_0
    new-instance p1, Lcom/noname81/lmt/Action;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/noname81/lmt/Action;-><init>(I)V

    return-object p1
.end method

.method getPieAction(I)Lcom/noname81/lmt/Action;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mPieActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mPieActions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/Action;

    return-object p1

    .line 122
    :cond_0
    new-instance p1, Lcom/noname81/lmt/Action;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/noname81/lmt/Action;-><init>(I)V

    return-object p1
.end method

.method getServiceState()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mServiceState:I

    return v0
.end method

.method loadAutostart()I
    .locals 2

    const-string v0, "Autostart"

    const/4 v1, 0x1

    .line 353
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadFeedbackMode()I
    .locals 2

    const-string v0, "Feedback"

    const/4 v1, 0x3

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadGestureVibrationTime()I
    .locals 2

    const-string v0, "Vibration"

    const/16 v1, 0x1e

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadInputDevice()I
    .locals 2

    const-string v0, "Input"

    const/4 v1, 0x4

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadInputDeviceString()Ljava/lang/String;
    .locals 3

    const-string v0, "Input"

    const/4 v1, 0x4

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/dev/input/event"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadMinPathLength()I
    .locals 2

    const-string v0, "MinPathLength"

    const/4 v1, 0x7

    .line 345
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadMinScore()I
    .locals 2

    const-string v0, "MinScore"

    const/16 v1, 0x46

    .line 337
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieAnimation()I
    .locals 2

    const-string v0, "PieAnimation"

    const/16 v1, 0x50

    .line 567
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieAreaBehindKeyboard()I
    .locals 2

    const-string v0, "PieBehindKeyboard"

    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieAreaGravity()I
    .locals 2

    const-string v0, "PieAreaGravity"

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieAreaX()I
    .locals 2

    const-string v0, "PieAreaX"

    const/16 v1, 0x32

    .line 447
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieAreaY()I
    .locals 2

    .line 455
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->getIsSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    :goto_0
    const-string v1, "PieAreaY"

    invoke-virtual {p0, v1, v0}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieColor()Ljava/lang/String;
    .locals 2

    const-string v0, "PieColorString"

    const-string v1, "0"

    .line 471
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadPieExpandTriggerArea()I
    .locals 2

    const-string v0, "PieExpandTriggerArea"

    const/4 v1, 0x1

    .line 641
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieFont()I
    .locals 2

    .line 495
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->getIsSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const-string v1, "PieFont"

    invoke-virtual {p0, v1, v0}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieInnerRadius()I
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->getIsSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    const-string v1, "PieInnerRadius"

    invoke-virtual {p0, v1, v0}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieLongpress()I
    .locals 2

    const-string v0, "PieLongpress"

    const/16 v1, 0x1f4

    .line 559
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieMultiCommand()I
    .locals 2

    const-string v0, "PieMultiCommand"

    const/4 v1, 0x0

    .line 583
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieNavButtonStyle()I
    .locals 2

    const-string v0, "NavButtonStyle"

    const/4 v1, 0x0

    .line 633
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieOnLockScreen()I
    .locals 2

    const-string v0, "PieOnLockScreen"

    const/4 v1, 0x0

    .line 657
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieOuterRadius()I
    .locals 2

    .line 511
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->getIsSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    const-string v1, "PieOuterRadius"

    invoke-virtual {p0, v1, v0}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieOutlineSize()I
    .locals 2

    const-string v0, "PieOutlineSize"

    const/4 v1, 0x3

    .line 527
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPiePointerColor()Ljava/lang/String;
    .locals 2

    const-string v0, "PiePointerColorString"

    const-string v1, "0"

    .line 487
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadPiePointerFromEdges()I
    .locals 2

    const-string v0, "PiePointerFromEdges"

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPiePointerWarpFactor()I
    .locals 2

    const-string v0, "PiePointerWarpFactorPercent"

    const/16 v1, 0x12c

    .line 599
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPiePos()I
    .locals 2

    const-string v0, "PiePos"

    const/4 v1, 0x7

    .line 439
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieRotateImages()I
    .locals 2

    const-string v0, "PieRotateImages"

    const/4 v1, 0x1

    .line 551
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieShiftSize()I
    .locals 2

    const-string v0, "PieShiftSize"

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieShowScaleAppImages()I
    .locals 2

    const-string v0, "PieShowAppImages"

    const/4 v1, 0x1

    .line 617
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieShowScaleUserImages()I
    .locals 2

    const-string v0, "PieUserImageScaling"

    const/4 v1, 0x0

    .line 625
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieShowStatusInfos()I
    .locals 2

    const-string v0, "PieShowStatusInfos"

    const/4 v1, 0x0

    .line 609
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieSliceGap()I
    .locals 2

    const-string v0, "PieSliceGap"

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieStartGap()I
    .locals 2

    const-string v0, "PieStartGap"

    const/4 v1, 0x0

    .line 543
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieStatusInfoColor()Ljava/lang/String;
    .locals 2

    const-string v0, "PieStatusInfoColorString"

    const-string v1, "0"

    .line 479
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadPieVibrate()I
    .locals 2

    const-string v0, "PieVibrate"

    const/4 v1, 0x1

    .line 575
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPieVibrationTime()I
    .locals 2

    const-string v0, "PieVibration"

    const/16 v1, 0x1e

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadResourceSearchPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method loadSingleSwipesAArea()I
    .locals 2

    const-string v0, "SingleSwipesAArea"

    const/16 v1, 0x3c

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mSingleSwipesAArea:I

    return v0
.end method

.method loadSingleSwipesBBox()I
    .locals 2

    const-string v0, "SingleSwipesBBox"

    const/4 v1, 0x1

    .line 299
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSingleTouchGestureSupport()I
    .locals 2

    const-string v0, "STSupport"

    const/4 v1, 0x1

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadTouchServiceMode()I
    .locals 2

    const-string v0, "TSMode"

    const/4 v1, 0x2

    .line 431
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadTouchscreenScreenFactorX()F
    .locals 2

    const-string v0, "TouchscreenScreenFactorX"

    const/16 v1, 0x64

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mTouchscreenScreenFactorX:F

    return v0
.end method

.method loadTouchscreenScreenFactorY()F
    .locals 2

    const-string v0, "TouchscreenScreenFactorY"

    const/16 v1, 0x64

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/SettingsValuesBase;->loadInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mTouchscreenScreenFactorY:F

    return v0
.end method

.method restartServiceIfRequired()V
    .locals 1

    .line 102
    iget v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mServiceState:I

    if-lez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->stopService()V

    .line 104
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->startService()V

    :cond_0
    return-void
.end method

.method saveAutostart(I)V
    .locals 2

    const-string v0, "Autostart"

    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveFeedbackMode(I)V
    .locals 2

    const-string v0, "Feedback"

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveGestureVibrationTime(I)V
    .locals 2

    const-string v0, "Vibration"

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveInputDevice(I)V
    .locals 2

    const-string v0, "Input"

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveMinPathLength(I)V
    .locals 2

    const-string v0, "MinPathLength"

    const/4 v1, 0x0

    .line 349
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveMinScore(I)V
    .locals 2

    const-string v0, "MinScore"

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieAnimation(I)V
    .locals 2

    const-string v0, "PieAnimation"

    const/4 v1, 0x0

    .line 571
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieAreaBehindKeyboard(I)V
    .locals 2

    const-string v0, "PieBehindKeyboard"

    const/4 v1, 0x0

    .line 653
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieAreaGravity(I)V
    .locals 2

    const-string v0, "PieAreaGravity"

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieAreaX(I)V
    .locals 2

    const-string v0, "PieAreaX"

    const/4 v1, 0x0

    .line 451
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieAreaY(I)V
    .locals 2

    const-string v0, "PieAreaY"

    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieColor(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PieColorString"

    const/4 v1, 0x0

    .line 475
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieExpandTriggerArea(I)V
    .locals 2

    const-string v0, "PieExpandTriggerArea"

    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieFont(I)V
    .locals 2

    const-string v0, "PieFont"

    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieInnerRadius(I)V
    .locals 2

    const-string v0, "PieInnerRadius"

    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieLongpress(I)V
    .locals 2

    const-string v0, "PieLongpress"

    const/4 v1, 0x0

    .line 563
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieMultiCommand(I)V
    .locals 2

    const-string v0, "PieMultiCommand"

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieNavButtonsStyle(I)V
    .locals 2

    const-string v0, "NavButtonStyle"

    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieOnLockScreen(I)V
    .locals 2

    const-string v0, "PieOnLockScreen"

    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieOuterRadius(I)V
    .locals 2

    const-string v0, "PieOuterRadius"

    const/4 v1, 0x0

    .line 515
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieOutlineSize(I)V
    .locals 2

    const-string v0, "PieOutlineSize"

    const/4 v1, 0x0

    .line 531
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePiePointerColor(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PiePointerColorString"

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePiePointerFromEdges(I)V
    .locals 2

    const-string v0, "PiePointerFromEdges"

    const/4 v1, 0x0

    .line 595
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePiePointerWarpFactor(I)V
    .locals 2

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/16 p1, 0xc8

    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    const/16 p1, 0x3e8

    :cond_1
    const-string v0, "PiePointerWarpFactorPercent"

    const/4 v1, 0x0

    .line 605
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePiePos(I)V
    .locals 2

    const-string v0, "PiePos"

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieRotateImages(I)V
    .locals 2

    const-string v0, "PieRotateImages"

    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieShiftSize(I)V
    .locals 2

    const-string v0, "PieShiftSize"

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieShowScaleAppImages(I)V
    .locals 2

    const-string v0, "PieShowAppImages"

    const/4 v1, 0x0

    .line 621
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieShowScaleUserImages(I)V
    .locals 2

    const-string v0, "PieUserImageScaling"

    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieShowStatusInfos(I)V
    .locals 2

    const-string v0, "PieShowStatusInfos"

    const/4 v1, 0x0

    .line 613
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieSliceGap(I)V
    .locals 2

    const-string v0, "PieSliceGap"

    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieStartGap(I)V
    .locals 2

    const-string v0, "PieStartGap"

    const/4 v1, 0x0

    .line 547
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieStatusInfoColor(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PieStatusInfoColorString"

    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieVibrate(I)V
    .locals 2

    const-string v0, "PieVibrate"

    const/4 v1, 0x0

    .line 579
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method savePieVibrationTime(I)V
    .locals 2

    const-string v0, "PieVibration"

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveResourceSearchPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "/"

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "ResourceSearchPath"

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveString(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveSingleSwipesAArea(I)V
    .locals 2

    const-string v0, "SingleSwipesAArea"

    const/4 v1, 0x0

    .line 312
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    .line 313
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mSingleSwipesAArea:I

    return-void
.end method

.method saveSingleSwipesBBox(I)V
    .locals 2

    const-string v0, "SingleSwipesBBox"

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveSingleTouchGestureSupport(I)V
    .locals 2

    const-string v0, "STSupport"

    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveTouchServiceMode(I)V
    .locals 2

    const-string v0, "TSMode"

    const/4 v1, 0x0

    .line 435
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method saveTouchscreenScreenFactorX(I)V
    .locals 2

    const-string v0, "TouchscreenScreenFactorX"

    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 323
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mTouchscreenScreenFactorX:F

    return-void
.end method

.method saveTouchscreenScreenFactorY(I)V
    .locals 2

    const-string v0, "TouchscreenScreenFactorY"

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0, v0, p1, v1}, Lcom/noname81/lmt/SettingsValuesBase;->saveInt(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 333
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mTouchscreenScreenFactorY:F

    return-void
.end method

.method setBlacklisted(Ljava/lang/String;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->saveBlacklist()V

    return-void
.end method

.method setBlacklistedPie(Ljava/lang/String;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-direct {p0}, Lcom/noname81/lmt/SettingsValuesBase;->saveBlacklistPie()V

    return-void
.end method

.method setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->createAndReturnSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    if-ltz v1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mGestureActions:Ljava/util/Vector;

    invoke-virtual {v2, p2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 169
    iget v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    invoke-direct {p0, v1, p2, v0}, Lcom/noname81/lmt/SettingsValuesBase;->saveGestureAction(ILcom/noname81/lmt/Action;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 171
    :cond_0
    iget v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    if-ltz v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mPieActions:Ljava/util/Vector;

    invoke-virtual {v2, p2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 173
    iget v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    invoke-direct {p0, v1, p2, v0}, Lcom/noname81/lmt/SettingsValuesBase;->savePieAction(ILcom/noname81/lmt/Action;Landroid/content/SharedPreferences$Editor;)V

    .line 174
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->restartServiceIfRequired()V

    goto :goto_0

    .line 176
    :cond_1
    iget v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    if-ltz v1, :cond_2

    .line 177
    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mIsaActions:Ljava/util/Vector;

    invoke-virtual {v2, p2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 178
    iget v1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    invoke-direct {p0, v1, p2, v0}, Lcom/noname81/lmt/SettingsValuesBase;->saveIsaAction(ILcom/noname81/lmt/Action;Landroid/content/SharedPreferences$Editor;)V

    .line 179
    invoke-virtual {p0}, Lcom/noname81/lmt/SettingsValuesBase;->restartServiceIfRequired()V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    const/4 v0, 0x1

    .line 184
    invoke-virtual {p2, p1, v0}, Lcom/noname81/lmt/Action;->checkNeededPermissions(Landroid/app/Activity;Z)V

    return-void
.end method

.method setCurrentGesture(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    const/4 p1, -0x1

    .line 148
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    .line 149
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    return-void
.end method

.method setCurrentIsa(I)V
    .locals 1

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    .line 160
    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    .line 161
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    return-void
.end method

.method setCurrentPie(I)V
    .locals 1

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentGesture:I

    .line 154
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentPie:I

    .line 155
    iput v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mCurrentIsa:I

    return-void
.end method

.method setServiceState(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/noname81/lmt/SettingsValuesBase;->mServiceState:I

    return-void
.end method

.method startService()V
    .locals 4

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    const-class v3, Lcom/noname81/lmt/TouchService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    const-class v3, Lcom/noname81/lmt/TouchService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method stopService()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/noname81/lmt/SettingsValuesBase;->mContext:Landroid/content/Context;

    const-class v3, Lcom/noname81/lmt/TouchService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
