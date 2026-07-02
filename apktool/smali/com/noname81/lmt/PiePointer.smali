.class Lcom/noname81/lmt/PiePointer;
.super Ljava/lang/Object;
.source "PiePointer.java"

# interfaces
.implements Lcom/noname81/lmt/PieMenu$PieView;


# static fields
.field private static final EMPTY_ANGLE:F = 0.19634955f

.field private static final STROKE_SIZE:I = 0x4


# instance fields
.field private mActivated:Z

.field private mCenter:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private final mFromTheEgdes:Z

.field private mLevels:I

.field private final mMargin:F

.field private mOnTheBottom:Z

.field private final mPointerPaint:Landroid/graphics/Paint;

.field private final mPointerPaintOutline:Landroid/graphics/Paint;

.field private mPolar:Landroid/graphics/PointF;

.field private mRadius:I

.field private mRadiusInc:I

.field private final mRootContext:Lcom/noname81/lmt/RootContext;

.field private final mSettings:Lcom/noname81/lmt/SettingsValues;

.field private final mWarpFactor:F

.field private mX:F

.field private mXO:F

.field private mY:F

.field private mYO:F


# direct methods
.method public static synthetic $r8$lambda$W339mKjgApzL7ZiSCuTuewP9CFY(Lcom/noname81/lmt/PiePointer;)V
    .locals 0

    invoke-direct {p0}, Lcom/noname81/lmt/PiePointer;->sendTap()V

    return-void
.end method

.method constructor <init>(Landroid/widget/FrameLayout;Landroid/content/Context;I)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/noname81/lmt/PiePointer;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p2}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/PiePointer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 65
    invoke-static {p2}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p2

    iput-object p2, p0, Lcom/noname81/lmt/PiePointer;->mRootContext:Lcom/noname81/lmt/RootContext;

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 70
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaintOutline:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p3, -0x1

    .line 77
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p3, 0x64

    .line 78
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p2, 0x0

    .line 80
    iput-boolean p2, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    .line 81
    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerFromEdges()I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mFromTheEgdes:Z

    .line 82
    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerWarpFactor()I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    double-to-float p2, p2

    iput p2, p0, Lcom/noname81/lmt/PiePointer;->mWarpFactor:F

    .line 83
    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getScreenWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result p1

    mul-int p2, p2, p1

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iput p1, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    return-void
.end method

.method private sendTap()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    iget v1, p0, Lcom/noname81/lmt/PiePointer;->mXO:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    iget v2, p0, Lcom/noname81/lmt/PiePointer;->mYO:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->performClick(FF)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "input tap "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    iget v3, p0, Lcom/noname81/lmt/PiePointer;->mXO:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    iget v3, p0, Lcom/noname81/lmt/PiePointer;->mYO:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/noname81/lmt/PiePointer;->mRootContext:Lcom/noname81/lmt/RootContext;

    invoke-virtual {v2, v0, v1}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)Z
    .locals 10

    .line 107
    iget-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/noname81/lmt/PiePointer;->mPolar:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 108
    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    iget v0, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    const/high16 v7, 0x40800000    # 4.0f

    add-float v4, v0, v7

    iget v0, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    add-float v5, v0, v7

    iget-object v6, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaintOutline:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/noname81/lmt/PiePointer;->mPolar:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget v0, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    add-float/2addr v1, v7

    iget-object v2, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaintOutline:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v0

    iget v7, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    iget v8, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    iget-object v9, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/noname81/lmt/PiePointer;->mPolar:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 114
    iget v0, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    iget v1, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    iget-object v2, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    :cond_0
    iget-boolean p1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    return p1
.end method

.method public drawForeground(Landroid/graphics/Canvas;)Z
    .locals 0

    .line 103
    iget-boolean p1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    return p1
.end method

.method public layout(ZLandroid/graphics/Point;IIIZZZ)V
    .locals 1

    .line 91
    iput-object p2, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    .line 92
    iput p3, p0, Lcom/noname81/lmt/PiePointer;->mRadius:I

    .line 93
    iput p4, p0, Lcom/noname81/lmt/PiePointer;->mRadiusInc:I

    .line 94
    iput p5, p0, Lcom/noname81/lmt/PiePointer;->mLevels:I

    .line 95
    iput-boolean p7, p0, Lcom/noname81/lmt/PiePointer;->mOnTheBottom:Z

    .line 97
    iget-object p1, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p2

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p4, p2

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mRadius:I

    iget p5, p0, Lcom/noname81/lmt/PiePointer;->mRadiusInc:I

    iget p6, p0, Lcom/noname81/lmt/PiePointer;->mLevels:I

    add-int/lit8 p6, p6, 0x1

    mul-int p5, p5, p6

    add-int/2addr p2, p5

    int-to-float p5, p2

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    iget-object p6, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result p6

    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result p6

    iget-object p7, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Landroid/graphics/Paint;->getColor()I

    move-result p7

    invoke-static {p7}, Landroid/graphics/Color;->blue(I)I

    move-result p7

    const/4 p8, 0x0

    invoke-static {p8, p2, p6, p7}, Landroid/graphics/Color;->argb(IIII)I

    move-result p6

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mPointerPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p7

    sget-object p8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object p2, v0

    invoke-direct/range {p2 .. p8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public onShrink()V
    .locals 4

    .line 156
    iget-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PiePointer;->mPolar:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/noname81/lmt/PiePointer;->mRadius:I

    iget v2, p0, Lcom/noname81/lmt/PiePointer;->mRadiusInc:I

    iget v3, p0, Lcom/noname81/lmt/PiePointer;->mLevels:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 159
    new-instance v1, Lcom/noname81/lmt/PiePointer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/PiePointer$$ExternalSyntheticLambda0;-><init>(Lcom/noname81/lmt/PiePointer;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/noname81/lmt/PiePointer;->mPolar:Landroid/graphics/PointF;

    return-void
.end method

.method public onTouchEvent(IFFFFLandroid/graphics/PointF;)Z
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mFromTheEgdes:Z

    if-eqz v0, :cond_4

    iget v0, p6, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/noname81/lmt/PiePointer;->mRadius:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 121
    iget-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mOnTheBottom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p6, Landroid/graphics/PointF;->x:F

    const v2, 0x3fafede0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p6, Landroid/graphics/PointF;->x:F

    const v2, -0x40501220

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 124
    :cond_1
    iput-boolean v1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    goto :goto_0

    .line 126
    :cond_2
    iget-boolean v0, p0, Lcom/noname81/lmt/PiePointer;->mOnTheBottom:Z

    if-nez v0, :cond_4

    iget v0, p6, Landroid/graphics/PointF;->x:F

    const v2, 0x403c7edd

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    iget v0, p6, Landroid/graphics/PointF;->x:F

    const v2, 0x3e490fdb

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 129
    :cond_3
    iput-boolean v1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    :cond_4
    :goto_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_9

    .line 134
    iget-boolean p1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    if-eqz p1, :cond_9

    .line 136
    iget p1, p0, Lcom/noname81/lmt/PiePointer;->mWarpFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iget-object v1, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    .line 137
    iget p1, p0, Lcom/noname81/lmt/PiePointer;->mWarpFactor:F

    sub-float/2addr p1, v0

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mCenter:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    sub-float p2, p3, p2

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    iput p3, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    .line 138
    iput p4, p0, Lcom/noname81/lmt/PiePointer;->mXO:F

    .line 139
    iput p5, p0, Lcom/noname81/lmt/PiePointer;->mYO:F

    .line 140
    iput-object p6, p0, Lcom/noname81/lmt/PiePointer;->mPolar:Landroid/graphics/PointF;

    .line 141
    iget p1, p6, Landroid/graphics/PointF;->y:F

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mWarpFactor:F

    mul-float p1, p1, p2

    iput p1, p6, Landroid/graphics/PointF;->y:F

    .line 143
    iget p1, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    iput p2, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    .line 144
    :cond_5
    iget p1, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mXO:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p2}, Lcom/noname81/lmt/SettingsValues;->getScreenWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/noname81/lmt/PiePointer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mXO:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/noname81/lmt/PiePointer;->mX:F

    .line 145
    :cond_6
    iget p1, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    iput p2, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    .line 146
    :cond_7
    iget p1, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mYO:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/noname81/lmt/PiePointer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p2}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/noname81/lmt/PiePointer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mYO:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/noname81/lmt/PiePointer;->mMargin:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/noname81/lmt/PiePointer;->mY:F

    .line 148
    :cond_8
    iget p1, p6, Landroid/graphics/PointF;->y:F

    float-to-double p1, p1

    iget p3, p0, Lcom/noname81/lmt/PiePointer;->mRadius:I

    int-to-double p3, p3

    iget p5, p0, Lcom/noname81/lmt/PiePointer;->mRadiusInc:I

    int-to-double p5, p5

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p3, p5

    cmpg-double p5, p1, p3

    if-gez p5, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    .line 152
    :cond_9
    iget-boolean p1, p0, Lcom/noname81/lmt/PiePointer;->mActivated:Z

    return p1
.end method
