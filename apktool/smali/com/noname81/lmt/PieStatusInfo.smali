.class public Lcom/noname81/lmt/PieStatusInfo;
.super Ljava/lang/Object;
.source "PieStatusInfo.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/noname81/lmt/PieMenu$PieView;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AIContentInvalid:I = 0x0

.field private static final AIContentOverview:I = 0x1

.field private static final AINotification1:I = 0x2

.field private static final AINotification2:I = 0x3

.field private static final AINotification3:I = 0x4

.field private static final AINotification4:I = 0x5

.field private static final AINotification5:I = 0x6


# instance fields
.field private mAIAnimationIn:F

.field private mAIAnimationInOut:F

.field private mAIAnimationInOutReversed:Z

.field private mAIAnimatorIn:Landroid/animation/ValueAnimator;

.field private mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

.field private mAIContent:I

.field private final mAIPath:Landroid/graphics/Path;

.field private mAISelected:Z

.field private final mAIStrings:[Ljava/lang/String;

.field private final mAITextPaint:Landroid/graphics/Paint;

.field private final mAITextSize:I

.field private final mAnimationActive:Z

.field private final mAnimationTime:I

.field private mAnimationTimer:Ljava/util/Timer;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackroundAlpha:I

.field private mCenter:Landroid/graphics/Point;

.field private mClockAnimationIn:F

.field private mClockAnimatorIn:Landroid/animation/ValueAnimator;

.field private final mClockPath:Landroid/graphics/Path;

.field private mClockSelected:Z

.field private final mClockStrings:[Ljava/lang/String;

.field private final mClockTextPaint:Landroid/graphics/Paint;

.field private final mClockTextSizeBig:I

.field private final mClockTextSizeSmall:I

.field private final mColorClock:I

.field private final mColorNotifications:I

.field private final mColorSelected:I

.field private final mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/lang/String;

.field private final mLauncher:Lcom/noname81/lmt/Launcher;

.field private mLevels:I

.field private final mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

.field private mOnTheBottom:Z

.field private mOnTheLeft:Z

.field private final mPieMenu:Landroid/widget/FrameLayout;

.field private final mPositionOffset:I

.field private mRadius:I

.field private mRadiusInc:I

.field private final mRadiusOffset:I

.field private final mRootContext:Lcom/noname81/lmt/RootContext;

.field private final mSensorActivated:Z

.field private final mSensorAlpha:F

.field private mSensorAnimation:F

.field private mSensorAnimator:Landroid/animation/ValueAnimator;

.field private final mSensorGravity:[F

.field private mSensorLastUpdate:J

.field private final mSensorLinearAcceleration:[F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettings:Lcom/noname81/lmt/SettingsValues;

.field private final mTwentyFour:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/widget/FrameLayout;Landroid/content/Context;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 132
    iput-object v4, v0, Lcom/noname81/lmt/PieStatusInfo;->mPieMenu:Landroid/widget/FrameLayout;

    .line 133
    iput-object v1, v0, Lcom/noname81/lmt/PieStatusInfo;->mContext:Landroid/content/Context;

    .line 134
    invoke-static/range {p2 .. p2}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v4

    iput-object v4, v0, Lcom/noname81/lmt/PieStatusInfo;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 135
    invoke-static {}, Lcom/noname81/lmt/NotificationDataHelper;->getInstance()Lcom/noname81/lmt/NotificationDataHelper;

    move-result-object v5

    iput-object v5, v0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    .line 136
    invoke-static/range {p2 .. p2}, Lcom/noname81/lmt/Launcher;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Launcher;

    move-result-object v5

    iput-object v5, v0, Lcom/noname81/lmt/PieStatusInfo;->mLauncher:Lcom/noname81/lmt/Launcher;

    .line 137
    invoke-static/range {p2 .. p2}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object v5

    iput-object v5, v0, Lcom/noname81/lmt/PieStatusInfo;->mRootContext:Lcom/noname81/lmt/RootContext;

    .line 139
    iput v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    .line 140
    iput v3, v0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    move/from16 v5, p5

    .line 141
    iput v5, v0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    const/4 v5, 0x1

    .line 143
    iput-boolean v5, v0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    .line 144
    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadPieAnimation()I

    move-result v6

    iput v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    .line 146
    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadPieShowStatusInfos()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-ne v6, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorActivated:Z

    const-string v6, "sensor"

    .line 147
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    iput-object v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorManager:Landroid/hardware/SensorManager;

    .line 148
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    .line 149
    iput v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimation:F

    const v9, 0x3f4ccccd    # 0.8f

    .line 150
    iput v9, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAlpha:F

    new-array v9, v8, [F

    .line 151
    iput-object v9, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLinearAcceleration:[F

    new-array v9, v8, [F

    .line 152
    iput-object v9, v0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x41200000    # 10.0f

    .line 155
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v5, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusOffset:I

    const/high16 v10, 0x40a00000    # 5.0f

    .line 156
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v5, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Lcom/noname81/lmt/PieStatusInfo;->mPositionOffset:I

    .line 159
    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadPieFont()I

    move-result v4

    const/4 v10, 0x2

    const/16 v11, 0x2d

    const/16 v12, 0x8

    const/16 v13, 0x41

    const/16 v14, 0xd

    if-ge v4, v8, :cond_5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v11, 0x41

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v12, 0xd

    :goto_2
    if-ne v4, v10, :cond_3

    add-int/lit8 v11, v11, 0xf

    :cond_3
    if-ne v4, v10, :cond_4

    add-int/lit8 v12, v12, 0x4

    .line 168
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v13, "Roboto-Thin.ttf"

    invoke-static {v4, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_6

    :cond_5
    const/4 v15, 0x6

    if-ge v4, v15, :cond_a

    if-ne v4, v8, :cond_6

    goto :goto_3

    :cond_6
    const/16 v11, 0x41

    :goto_3
    if-ne v4, v8, :cond_7

    goto :goto_4

    :cond_7
    const/16 v12, 0xd

    :goto_4
    const/4 v13, 0x5

    if-ne v4, v13, :cond_8

    add-int/lit8 v11, v11, 0xf

    :cond_8
    if-ne v4, v13, :cond_9

    add-int/lit8 v12, v12, 0x4

    .line 175
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v13, "Roboto-Light.ttf"

    invoke-static {v4, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_6

    :cond_a
    if-ne v4, v15, :cond_b

    goto :goto_5

    :cond_b
    const/16 v11, 0x41

    :goto_5
    if-ne v4, v15, :cond_c

    const/16 v14, 0x8

    :cond_c
    if-ne v4, v12, :cond_d

    add-int/lit8 v11, v11, 0xf

    :cond_d
    if-ne v4, v12, :cond_e

    add-int/lit8 v14, v14, 0x4

    :cond_e
    move v12, v14

    .line 182
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 185
    :goto_6
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iput-object v13, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    .line 186
    new-instance v13, Landroid/animation/ValueAnimator;

    invoke-direct {v13}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v13, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    .line 187
    iput v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    int-to-float v11, v11

    .line 188
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v5, v11, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextSizeBig:I

    int-to-float v11, v12

    .line 189
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v5, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    iput v12, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextSizeSmall:I

    .line 190
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    .line 191
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-array v2, v10, [Ljava/lang/String;

    .line 196
    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    .line 197
    iput-boolean v7, v0, Lcom/noname81/lmt/PieStatusInfo;->mClockSelected:Z

    .line 199
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    .line 200
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorIn:Landroid/animation/ValueAnimator;

    .line 201
    iput v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    .line 202
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    .line 203
    iput v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    .line 204
    iput-boolean v7, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOutReversed:Z

    .line 205
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v11, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mAITextSize:I

    .line 206
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    .line 207
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v2, v2

    .line 212
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-array v2, v8, [Ljava/lang/String;

    .line 213
    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    .line 214
    iput v7, v0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    .line 215
    iput-boolean v7, v0, Lcom/noname81/lmt/PieStatusInfo;->mAISelected:Z

    .line 217
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mBackgroundPaint:Landroid/graphics/Paint;

    move/from16 v3, p6

    .line 218
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mBackroundAlpha:I

    .line 222
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x18

    goto :goto_7

    :cond_f
    const/16 v2, 0xc

    :goto_7
    iput v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mTwentyFour:I

    .line 223
    new-instance v2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, v0, Lcom/noname81/lmt/PieStatusInfo;->mDateFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/PieStatusInfo;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    return p0
.end method

.method static synthetic access$002(Lcom/noname81/lmt/PieStatusInfo;F)F
    .locals 0

    .line 57
    iput p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    return p1
.end method

.method static synthetic access$100(Lcom/noname81/lmt/PieStatusInfo;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    return p0
.end method

.method static synthetic access$1000(Lcom/noname81/lmt/PieStatusInfo;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOutReversed:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/noname81/lmt/PieStatusInfo;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOutReversed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/noname81/lmt/PieStatusInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->fillAdditionalInfoStrings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/noname81/lmt/PieStatusInfo;F)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieStatusInfo;->makePath(F)V

    return-void
.end method

.method static synthetic access$1302(Lcom/noname81/lmt/PieStatusInfo;F)F
    .locals 0

    .line 57
    iput p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimation:F

    return p1
.end method

.method static synthetic access$1400(Lcom/noname81/lmt/PieStatusInfo;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/noname81/lmt/PieStatusInfo;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mBackroundAlpha:I

    return p0
.end method

.method static synthetic access$400(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$500(Lcom/noname81/lmt/PieStatusInfo;)Landroid/widget/FrameLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mPieMenu:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/noname81/lmt/PieStatusInfo;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    return p0
.end method

.method static synthetic access$602(Lcom/noname81/lmt/PieStatusInfo;F)F
    .locals 0

    .line 57
    iput p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    return p1
.end method

.method static synthetic access$700(Lcom/noname81/lmt/PieStatusInfo;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    return p0
.end method

.method static synthetic access$800(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$900(Lcom/noname81/lmt/PieStatusInfo;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    return p0
.end method

.method static synthetic access$902(Lcom/noname81/lmt/PieStatusInfo;F)F
    .locals 0

    .line 57
    iput p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    return p1
.end method

.method private fillAdditionalInfoStrings()V
    .locals 6

    .line 542
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 545
    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 546
    invoke-direct {p0, v0}, Lcom/noname81/lmt/PieStatusInfo;->fillOverview(Ljava/util/Calendar;)V

    .line 547
    iput v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 550
    invoke-direct {p0, v0, v1}, Lcom/noname81/lmt/PieStatusInfo;->fillNotification(Ljava/util/Calendar;I)V

    .line 551
    iput v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v3, :cond_2

    .line 553
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v1}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataSize()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 554
    invoke-direct {p0, v0, v2}, Lcom/noname81/lmt/PieStatusInfo;->fillNotification(Ljava/util/Calendar;I)V

    .line 555
    iput v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    goto :goto_0

    .line 557
    :cond_2
    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    const/4 v5, 0x4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v1}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataSize()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 558
    invoke-direct {p0, v0, v3}, Lcom/noname81/lmt/PieStatusInfo;->fillNotification(Ljava/util/Calendar;I)V

    .line 559
    iput v5, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    goto :goto_0

    .line 561
    :cond_3
    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    const/4 v3, 0x5

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v1}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataSize()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 562
    invoke-direct {p0, v0, v4}, Lcom/noname81/lmt/PieStatusInfo;->fillNotification(Ljava/util/Calendar;I)V

    .line 563
    iput v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    goto :goto_0

    .line 565
    :cond_4
    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v1}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataSize()I

    move-result v1

    if-le v1, v5, :cond_5

    .line 566
    invoke-direct {p0, v0, v5}, Lcom/noname81/lmt/PieStatusInfo;->fillNotification(Ljava/util/Calendar;I)V

    const/4 v0, 0x6

    .line 567
    iput v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    goto :goto_0

    .line 571
    :cond_5
    invoke-direct {p0, v0}, Lcom/noname81/lmt/PieStatusInfo;->fillOverview(Ljava/util/Calendar;)V

    .line 572
    iput v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    :goto_0
    return-void
.end method

.method private fillClockStrings()V
    .locals 9

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 531
    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mTwentyFour:I

    const/16 v2, 0x18

    const/4 v3, 0x2

    const-string v4, "%02d:%02d"

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v2, :cond_0

    .line 532
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 533
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    const-string v1, "24h"

    aput-object v1, v0, v6

    goto :goto_2

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_1

    const/16 v3, 0xc

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 537
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AM"

    goto :goto_1

    :cond_2
    const-string v0, "PM"

    :goto_1
    aput-object v0, v1, v6

    :goto_2
    return-void
.end method

.method private fillNotification(Ljava/util/Calendar;I)V
    .locals 8

    .line 590
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v0}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataSize()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, p2, :cond_3

    .line 591
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v0, p2}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataTime(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 592
    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mTwentyFour:I

    const/16 v4, 0xc

    const/16 v5, 0x18

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    const-string p1, "%02d:%02d"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    goto :goto_1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AM"

    goto :goto_0

    :cond_1
    const-string p1, "PM"

    :goto_0
    aput-object p1, v6, v1

    const-string p1, "%02d:%02d %s"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 594
    :goto_1
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v0, p2}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 595
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "..."

    const/16 v4, 0x19

    if-le p1, v4, :cond_2

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v2

    .line 596
    :cond_2
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-virtual {v2, p2}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataText(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 597
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v4, :cond_4

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    goto :goto_2

    .line 601
    :cond_3
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    const-string p2, "No notifications"

    aput-object p2, p1, v3

    .line 602
    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->getCPUInfo()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 603
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->getMemInfo()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    :cond_4
    :goto_2
    return-void
.end method

.method private fillOverview(Ljava/util/Calendar;)V
    .locals 8

    .line 578
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mDateFormat:Ljava/lang/String;

    const-string v1, "%02d | %02d | %04d"

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const-string v7, "dMy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v7, "yMd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "%04d | %02d | %02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    .line 582
    :goto_0
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    .line 584
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "level"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x64

    mul-int/lit8 v2, v2, 0x64

    const-string v7, "scale"

    invoke-virtual {p1, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    div-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->getRingerModeString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "Battery %02d%% | %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    .line 585
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->getConnectivityString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    return-void
.end method

.method private getCPUInfo()Ljava/lang/String;
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 656
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MHz | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v3, "cat /sys/devices/system/cpu/online"

    invoke-virtual {v1, v3, v2}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    .line 661
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Core "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " active"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getConnectivityString()Ljava/lang/String;
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "Not connected"

    if-nez v0, :cond_0

    return-object v1

    .line 611
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 614
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "Connected"

    .line 615
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " | "

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 618
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 620
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dBm"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 625
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method private getMemInfo()Ljava/lang/String;
    .locals 10

    .line 671
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 672
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 674
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const-string v3, " MB"

    const-wide/32 v4, 0x100000

    if-lt v0, v2, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Used "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v6

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB | Free "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Free "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRingerModeString()Ljava/lang/String;
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 638
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const-string v0, "Ringer"

    goto :goto_0

    .line 646
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ringer | "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "Ringer | vibrate"

    goto :goto_0

    :cond_3
    const-string v0, "Ringer | silent"

    :goto_0
    return-object v0
.end method

.method private handleSensorListener(Z)V
    .locals 4

    .line 684
    iget-boolean v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorActivated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLastUpdate:J

    goto :goto_0

    .line 690
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 691
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 692
    iput p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimation:F

    .line 693
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isClockArea(Landroid/graphics/PointF;)Z
    .locals 7

    .line 463
    iget-boolean v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mOnTheBottom:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 464
    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 467
    :cond_1
    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v3, p1

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double p1, v3, v5

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private makePath(F)V
    .locals 11

    .line 472
    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadius:I

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusInc:I

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mLevels:I

    mul-int v2, v2, v1

    add-int/2addr v2, v0

    int-to-float v2, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 474
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 475
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 477
    iget-boolean v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mOnTheLeft:Z

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x43340000    # 180.0f

    if-eqz v1, :cond_0

    .line 478
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    add-float/2addr v9, v2

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 479
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v9, v2

    iget-object v10, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float v0, v0, v4

    add-float/2addr v10, v0

    invoke-direct {p0, v9, v10, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result v0

    iget-object v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v9, v2

    invoke-direct {p0, v4, v9, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result p1

    invoke-direct {v6, v7, v8, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 484
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 485
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    invoke-virtual {p1, v6, v5, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 487
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 488
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_0

    .line 490
    :cond_0
    iget-boolean v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mOnTheBottom:Z

    if-eqz v1, :cond_1

    .line 491
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object v6, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    add-float/2addr v7, v2

    invoke-direct {v0, v1, v3, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 492
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object v6, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float v4, v4, v2

    sub-float/2addr v7, v4

    invoke-direct {p0, v6, v7, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result v6

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v7, v2

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v9, v9, v2

    add-float/2addr v8, v9

    invoke-direct {p0, v7, v8, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result v7

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-direct {p0, v8, v2, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result v2

    invoke-direct {v1, v3, v6, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43610000    # 225.0f

    .line 494
    invoke-direct {p0, v2, v3, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result p1

    const/high16 v2, 0x42b40000    # 90.0f

    .line 497
    iget-object v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 498
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p1, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 500
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 501
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 504
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    add-float/2addr v9, v2

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 505
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float v0, v0, v4

    sub-float/2addr v8, v0

    invoke-direct {p0, v7, v8, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result v0

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float v4, v4, v2

    add-float/2addr v9, v4

    invoke-direct {p0, v8, v9, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result v4

    iget-object v8, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v9, v2

    invoke-direct {p0, v8, v9, p1}, Lcom/noname81/lmt/PieStatusInfo;->mix(FFF)F

    move-result p1

    invoke-direct {v6, v0, v7, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 510
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 511
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    invoke-virtual {p1, v6, v5, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 513
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 514
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method

.method private mix(FFF)F
    .locals 1

    sub-float v0, p1, p2

    mul-float v0, v0, p3

    .line 519
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    add-float/2addr p1, p3

    return p1

    :cond_0
    sub-float/2addr p1, p3

    return p1
.end method


# virtual methods
.method public activate()V
    .locals 0

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 p1, 0x0

    return p1
.end method

.method public drawForeground(Landroid/graphics/Canvas;)Z
    .locals 11

    .line 357
    iget-boolean v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mOnTheLeft:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 360
    :goto_0
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextSizeBig:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 361
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v5, v2, v3

    iget-object v6, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    add-float/2addr v2, v1

    mul-float v2, v2, v0

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextSizeBig:I

    int-to-float v4, v4

    mul-float v7, v2, v4

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusOffset:I

    neg-int v2, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 362
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextSizeSmall:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 363
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockStrings:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v6, v2, v4

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mPositionOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v8, v0, v2

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    add-float/2addr v2, v1

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextSizeBig:I

    int-to-float v5, v1

    mul-float v2, v2, v5

    int-to-float v1, v1

    sub-float v9, v2, v1

    iget-object v10, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 367
    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    const/16 v2, 0x50

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 368
    :goto_1
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    aget-object v6, v2, v3

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mPositionOffset:I

    int-to-float v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    mul-float v8, v0, v2

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextSize:I

    neg-int v2, v2

    int-to-float v2, v2

    const v3, 0x4019999a    # 2.4f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusOffset:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    iget-object v10, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 369
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    aget-object v6, v2, v4

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mPositionOffset:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    mul-float v8, v0, v2

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextSize:I

    neg-int v2, v2

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusOffset:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    iget-object v10, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 370
    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIStrings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v6, v2, v3

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mPositionOffset:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    mul-float v8, v0, v2

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusOffset:I

    neg-int v0, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return v4
.end method

.method public layout(ZLandroid/graphics/Point;IIIZZZ)V
    .locals 3

    .line 231
    iget-boolean v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    .line 233
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 234
    iget-boolean v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 235
    :cond_1
    iput v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    .line 236
    iget-boolean v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 237
    :cond_2
    iput v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    .line 238
    iput-boolean v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOutReversed:Z

    .line 239
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    iput v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    .line 241
    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 242
    iget-boolean v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 244
    :cond_3
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieStatusInfo;->handleSensorListener(Z)V

    if-nez p1, :cond_4

    return-void

    .line 250
    :cond_4
    iput-object p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mCenter:Landroid/graphics/Point;

    .line 251
    iput p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadius:I

    .line 252
    iput p4, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusInc:I

    .line 253
    iput p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mLevels:I

    .line 254
    iput-boolean p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mOnTheLeft:Z

    .line 255
    iput-boolean p7, p0, Lcom/noname81/lmt/PieStatusInfo;->mOnTheBottom:Z

    .line 256
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadPieShowStatusInfos()I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x2

    if-ne p1, p3, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_5
    invoke-direct {p0, v0}, Lcom/noname81/lmt/PieStatusInfo;->makePath(F)V

    .line 258
    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->fillClockStrings()V

    .line 259
    invoke-direct {p0}, Lcom/noname81/lmt/PieStatusInfo;->fillAdditionalInfoStrings()V

    .line 262
    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz p1, :cond_6

    if-nez p8, :cond_6

    new-array p1, p3, [F

    .line 264
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    .line 265
    new-instance p2, Lcom/noname81/lmt/PieStatusInfo$1;

    invoke-direct {p2, p0}, Lcom/noname81/lmt/PieStatusInfo$1;-><init>(Lcom/noname81/lmt/PieStatusInfo;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long p4, p2

    const-wide/16 p6, 0x8

    mul-long p4, p4, p6

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 276
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long p4, p2

    const-wide/16 p6, 0x6

    mul-long p4, p4, p6

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 277
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, p3, [F

    .line 281
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorIn:Landroid/animation/ValueAnimator;

    .line 282
    new-instance p2, Lcom/noname81/lmt/PieStatusInfo$2;

    invoke-direct {p2, p0}, Lcom/noname81/lmt/PieStatusInfo$2;-><init>(Lcom/noname81/lmt/PieStatusInfo;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorIn:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long p4, p2

    const-wide/16 p6, 0xa

    mul-long p4, p4, p6

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 292
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorIn:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long p4, p2

    const-wide/16 p6, 0xe

    mul-long p4, p4, p6

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, p3, [F

    .line 296
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    .line 297
    new-instance p2, Lcom/noname81/lmt/PieStatusInfo$3;

    invoke-direct {p2, p0}, Lcom/noname81/lmt/PieStatusInfo$3;-><init>(Lcom/noname81/lmt/PieStatusInfo;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 323
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 325
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 331
    :cond_6
    iput p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    .line 332
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    iput p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    .line 334
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-nez p8, :cond_7

    .line 338
    new-instance p4, Lcom/noname81/lmt/PieStatusInfo$4;

    invoke-direct {p4, p0}, Lcom/noname81/lmt/PieStatusInfo$4;-><init>(Lcom/noname81/lmt/PieStatusInfo;)V

    .line 345
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTimer:Ljava/util/Timer;

    const-wide/16 p5, 0xbb8

    const-wide/16 p7, 0xbb8

    .line 346
    invoke-virtual/range {p3 .. p8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 700
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 702
    iget-wide v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLastUpdate:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAlpha:F

    const/4 v5, 0x0

    aget v6, v0, v5

    mul-float v6, v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v4, v7, v4

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v5

    mul-float v4, v4, v8

    add-float/2addr v6, v4

    aput v6, v0, v5

    .line 706
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAlpha:F

    aget v6, v0, v1

    mul-float v6, v6, v4

    sub-float v4, v7, v4

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v1

    mul-float v4, v4, v8

    add-float/2addr v6, v4

    aput v6, v0, v1

    .line 707
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAlpha:F

    const/4 v6, 0x2

    aget v8, v0, v6

    mul-float v8, v8, v4

    sub-float/2addr v7, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    mul-float v7, v7, v4

    add-float/2addr v8, v7

    aput v8, v0, v6

    .line 710
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLinearAcceleration:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    aget v7, v7, v5

    sub-float/2addr v4, v7

    aput v4, v0, v5

    .line 711
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLinearAcceleration:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    iget-object v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    aget v7, v7, v1

    sub-float/2addr v4, v7

    aput v4, v0, v1

    .line 712
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLinearAcceleration:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v6

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorGravity:[F

    aget v1, v1, v6

    sub-float/2addr p1, v1

    aput p1, v0, v6

    .line 716
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLinearAcceleration:[F

    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v0, 0x0

    const v1, 0x409ce80a

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 719
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 720
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 721
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 722
    iput v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    .line 723
    iput-boolean v5, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOutReversed:Z

    .line 724
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 725
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    iget v4, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    sub-int/2addr v4, v6

    invoke-virtual {p1, v4}, Lcom/noname81/lmt/NotificationDataHelper;->removeNotificationData(I)V

    .line 727
    iput-wide v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLastUpdate:J

    .line 730
    :cond_1
    iget-wide v7, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLastUpdate:J

    sub-long v7, v2, v7

    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long v9, p1

    const-wide/16 v11, 0xc

    mul-long v9, v9, v11

    cmp-long p1, v7, v9

    if-gez p1, :cond_2

    return-void

    .line 731
    :cond_2
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLinearAcceleration:[F

    aget p1, p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    new-array p1, v6, [F

    .line 734
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimator:Landroid/animation/ValueAnimator;

    .line 735
    new-instance v1, Lcom/noname81/lmt/PieStatusInfo$5;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/PieStatusInfo$5;-><init>(Lcom/noname81/lmt/PieStatusInfo;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 746
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long v6, v1

    mul-long v6, v6, v11

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 747
    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimation:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 748
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 751
    :cond_3
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 755
    :goto_0
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationTime:I

    int-to-long v6, v1

    const-wide/16 v8, 0x18

    mul-long v6, v6, v8

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 756
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 757
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 758
    iput v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOut:F

    .line 759
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 760
    iput-boolean v5, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationInOutReversed:Z

    .line 762
    iput-wide v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mSensorLastUpdate:J

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onShrink()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(IFFFFLandroid/graphics/PointF;)Z
    .locals 3

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x2

    if-ne p5, p1, :cond_a

    .line 379
    iget p1, p6, Landroid/graphics/PointF;->y:F

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadius:I

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusInc:I

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mLevels:I

    mul-int v0, v0, v1

    add-int/2addr p5, v0

    int-to-float p5, p5

    const/4 v0, -0x1

    cmpl-float p1, p1, p5

    if-lez p1, :cond_6

    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    cmpl-float p1, p1, p2

    if-gez p1, :cond_0

    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-nez p1, :cond_6

    .line 382
    :cond_0
    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 384
    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 386
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 387
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 389
    :cond_1
    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimationIn:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    .line 391
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 396
    :cond_2
    :goto_0
    invoke-direct {p0, p6}, Lcom/noname81/lmt/PieStatusInfo;->isClockArea(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 398
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result p5

    iget p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result p6

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, p5, p6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result p5

    iget p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result p6

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, p5, p6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockSelected:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mPieMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 401
    :cond_3
    iput-boolean p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockSelected:Z

    .line 402
    iput-boolean p4, p0, Lcom/noname81/lmt/PieStatusInfo;->mAISelected:Z

    goto/16 :goto_2

    .line 406
    :cond_4
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result p5

    iget p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result p6

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorSelected:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, p5, p6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result p5

    iget p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result p6

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, p5, p6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAISelected:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mPieMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 409
    :cond_5
    iput-boolean p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mAISelected:Z

    .line 410
    iput-boolean p4, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockSelected:Z

    goto/16 :goto_2

    .line 414
    :cond_6
    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 416
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 417
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 418
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIAnimatorOutIn:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 422
    :cond_7
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p3

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {p5}, Landroid/graphics/Color;->green(I)I

    move-result p5

    iget p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorClock:I

    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result p6

    invoke-static {p2, p3, p5, p6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget p3, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p3

    iget p5, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {p5}, Landroid/graphics/Color;->green(I)I

    move-result p5

    iget p6, p0, Lcom/noname81/lmt/PieStatusInfo;->mColorNotifications:I

    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result p6

    invoke-static {p2, p3, p5, p6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockSelected:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAISelected:Z

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mPieMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 425
    :cond_9
    iput-boolean p4, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockSelected:Z

    .line 426
    iput-boolean p4, p0, Lcom/noname81/lmt/PieStatusInfo;->mAISelected:Z

    goto :goto_1

    :cond_a
    if-ne p3, p1, :cond_f

    .line 430
    iget p1, p6, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadius:I

    iget v1, p0, Lcom/noname81/lmt/PieStatusInfo;->mRadiusInc:I

    iget v2, p0, Lcom/noname81/lmt/PieStatusInfo;->mLevels:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_f

    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mClockAnimationIn:F

    cmpl-float p1, p1, p2

    if-gez p1, :cond_b

    iget-boolean p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAnimationActive:Z

    if-nez p1, :cond_f

    .line 433
    :cond_b
    invoke-direct {p0, p6}, Lcom/noname81/lmt/PieStatusInfo;->isClockArea(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 434
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mLauncher:Lcom/noname81/lmt/Launcher;

    invoke-virtual {p1}, Lcom/noname81/lmt/Launcher;->doOpenNotificationBar()V

    goto :goto_2

    .line 437
    :cond_c
    iget p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    if-ne p1, p3, :cond_d

    .line 438
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mLauncher:Lcom/noname81/lmt/Launcher;

    invoke-virtual {p1}, Lcom/noname81/lmt/Launcher;->doOpenQuickSettings()V

    goto :goto_2

    :cond_d
    if-le p1, p3, :cond_10

    .line 442
    iget-object p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    sub-int/2addr p1, p5

    invoke-virtual {p2, p1}, Lcom/noname81/lmt/NotificationDataHelper;->getNotificationDataStartIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 445
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :catch_0
    :cond_e
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    iget p2, p0, Lcom/noname81/lmt/PieStatusInfo;->mAIContent:I

    sub-int/2addr p2, p5

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/NotificationDataHelper;->removeNotificationData(I)V

    goto :goto_2

    :cond_f
    :goto_1
    const/4 p3, 0x0

    :cond_10
    :goto_2
    return p3
.end method
