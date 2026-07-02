.class Lcom/noname81/lmt/SettingsValues;
.super Lcom/noname81/lmt/SettingsValuesBase;
.source "SettingsValues.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static instance:Lcom/noname81/lmt/SettingsValues;


# instance fields
.field private mOrientation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mVisiblePieActivationAreas:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/noname81/lmt/SettingsValuesBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/noname81/lmt/SettingsValues;->mVisiblePieActivationAreas:Z

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;
    .locals 1

    .line 52
    sget-object v0, Lcom/noname81/lmt/SettingsValues;->instance:Lcom/noname81/lmt/SettingsValues;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/noname81/lmt/SettingsValues;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/SettingsValues;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noname81/lmt/SettingsValues;->instance:Lcom/noname81/lmt/SettingsValues;

    .line 55
    :cond_0
    sget-object p0, Lcom/noname81/lmt/SettingsValues;->instance:Lcom/noname81/lmt/SettingsValues;

    return-object p0
.end method


# virtual methods
.method getDays()J
    .locals 5

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x17e412dddc0L

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 67
    div-long/2addr v2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    div-long/2addr v2, v0

    const-wide/16 v0, 0x18

    div-long v0, v2, v0

    :cond_0
    return-wide v0
.end method

.method getIsaAction(IFF)Lcom/noname81/lmt/Action;
    .locals 4

    .line 105
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mTouchscreenScreenFactorX:F

    div-float/2addr p2, v0

    .line 106
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mTouchscreenScreenFactorY:F

    div-float/2addr p3, v0

    .line 109
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mOrientation:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenHeight:I

    int-to-float v0, v0

    sub-float p3, v0, p3

    .line 113
    :cond_1
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenHeight:I

    iget v3, p0, Lcom/noname81/lmt/SettingsValues;->mSingleSwipesAArea:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    mul-float p2, p2, v3

    .line 115
    iget p1, p0, Lcom/noname81/lmt/SettingsValues;->mScreenWidth:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 116
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/SettingsValues;->getIsaAction(I)Lcom/noname81/lmt/Action;

    move-result-object p1

    return-object p1

    .line 118
    :cond_2
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mSingleSwipesAArea:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3

    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    mul-float p2, p2, v3

    .line 120
    iget p1, p0, Lcom/noname81/lmt/SettingsValues;->mScreenWidth:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p1, v1

    .line 121
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/SettingsValues;->getIsaAction(I)Lcom/noname81/lmt/Action;

    move-result-object p1

    return-object p1

    .line 123
    :cond_3
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mSingleSwipesAArea:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    const/16 v0, 0xe

    if-ne p1, v0, :cond_4

    mul-float p3, p3, v3

    .line 125
    iget p1, p0, Lcom/noname81/lmt/SettingsValues;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    add-int/lit8 p1, p1, 0x6

    .line 126
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/SettingsValues;->getIsaAction(I)Lcom/noname81/lmt/Action;

    move-result-object p1

    return-object p1

    .line 128
    :cond_4
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenWidth:I

    iget v1, p0, Lcom/noname81/lmt/SettingsValues;->mSingleSwipesAArea:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_5

    const/16 p2, 0xf

    if-ne p1, p2, :cond_5

    mul-float p3, p3, v3

    .line 130
    iget p1, p0, Lcom/noname81/lmt/SettingsValues;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    add-int/lit8 p1, p1, 0x9

    .line 131
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/SettingsValues;->getIsaAction(I)Lcom/noname81/lmt/Action;

    move-result-object p1

    return-object p1

    .line 134
    :cond_5
    new-instance p1, Lcom/noname81/lmt/Action;

    invoke-direct {p1, v2}, Lcom/noname81/lmt/Action;-><init>(I)V

    return-object p1
.end method

.method getOrientation()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mOrientation:I

    return v0
.end method

.method getPackageNamesOfRecentApps(I)Ljava/lang/String;
    .locals 11

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const-string v2, " "

    const/4 v3, 0x0

    const-string v4, ""

    if-lt v0, v1, :cond_8

    .line 140
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v3}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mRootContext:Lcom/noname81/lmt/RootContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "am get-recent-app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/RootContext;->runCommandRemoteResult(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mContext:Landroid/content/Context;

    const-string v5, "usagestats"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStatsManager;

    move-result-object v5

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v6, 0x0

    .line 147
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long v7, v9, v7

    invoke-static/range {v5 .. v10}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/UsageStatsManager;IJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    if-le p1, v1, :cond_5

    .line 151
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStats;

    move-result-object v4

    .line 153
    invoke-static {v4}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/UsageStats;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStats;

    move-result-object v4

    invoke-static {v4}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/UsageStats;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v3, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    const-wide/16 v1, 0x0

    const/4 p1, 0x0

    .line 171
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStats;

    move-result-object v4

    invoke-static {v4}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/UsageStats;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_6

    .line 174
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStats;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/UsageStats;)J

    move-result-wide v1

    move p1, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 178
    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/UsageStats;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/usage/UsageStats;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v4, p1

    goto :goto_6

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    if-eqz v3, :cond_9

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_9
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 192
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    :goto_6
    return-object v4
.end method

.method getScreenHeight()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenHeight:I

    return v0
.end method

.method getScreenWidth()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenWidth:I

    return v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v3.10"

    return-object v0
.end method

.method getVisiblePieActivationAreas()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/noname81/lmt/SettingsValues;->mVisiblePieActivationAreas:Z

    return v0
.end method

.method isNotBlacklisted()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/SettingsValues;->getPackageNamesOfRecentApps(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method isNotBlacklistedPie()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mBlacklistPie:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/SettingsValues;->getPackageNamesOfRecentApps(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method rotate()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/noname81/lmt/SettingsValues;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 88
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/noname81/lmt/SettingsValues;->mOrientation:I

    .line 89
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 91
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenWidth:I

    .line 92
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/noname81/lmt/SettingsValues;->mScreenHeight:I

    return-void
.end method

.method setVisiblePieActivationAread(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/noname81/lmt/SettingsValues;->mVisiblePieActivationAreas:Z

    return-void
.end method
