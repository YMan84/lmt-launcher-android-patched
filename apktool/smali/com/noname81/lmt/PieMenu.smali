.class Lcom/noname81/lmt/PieMenu;
.super Landroid/widget/FrameLayout;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/PieMenu$PieView;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_LEVELS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LMT::PieMenu"


# instance fields
.field private mAnimationTime:I

.field private mCenter:Landroid/graphics/Point;

.field private mCounts:[I

.field private mCurrentItem:Lcom/noname81/lmt/PieItem;

.field private mExpandTriggerArea:Z

.field private mIconColor:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noname81/lmt/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastItem:Lcom/noname81/lmt/PieItem;

.field private mLevels:I

.field private mLongpress:Z

.field private mLongpressHandler:Landroid/os/Handler;

.field private mLongpressRunnable:Ljava/lang/Runnable;

.field private mNormalGradient:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOpen:Z

.field private mOutlineGradient:I

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

.field private mPointerColor:I

.field private mRadius:I

.field private mRadiusInc:I

.field private mRotateImages:Z

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSettings:Lcom/noname81/lmt/SettingsValues;

.field private mShiftPaint:Landroid/graphics/Paint;

.field private mSlop:I

.field private mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

.field private mStatusInfoClockColor:I

.field private mStatusInfoDimColor:I

.field private mStatusInfoNotificationsColor:I

.field private mToaster:Lcom/noname81/lmt/Toaster;

.field private mTouchOffset:I

.field private mWindow:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/PieMenu;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/noname81/lmt/PieMenu;)Lcom/noname81/lmt/SettingsValues;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-object p0
.end method

.method static synthetic access$200(Lcom/noname81/lmt/PieMenu;)Lcom/noname81/lmt/Toaster;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/noname81/lmt/PieMenu;->mToaster:Lcom/noname81/lmt/Toaster;

    return-object p0
.end method

.method static synthetic access$302(Lcom/noname81/lmt/PieMenu;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/noname81/lmt/PieMenu;->mLongpress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/noname81/lmt/PieMenu;)Lcom/noname81/lmt/PieItem;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    return-object p0
.end method

.method static synthetic access$500(Lcom/noname81/lmt/PieMenu;Lcom/noname81/lmt/PieItem;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->fireHover(Lcom/noname81/lmt/PieItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/noname81/lmt/PieMenu;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->selectImages(I)V

    return-void
.end method

.method private animateOpen()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 435
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 436
    new-instance v2, Lcom/noname81/lmt/PieMenu$1;

    invoke-direct {v2, p0}, Lcom/noname81/lmt/PieMenu$1;-><init>(Lcom/noname81/lmt/PieMenu;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 448
    iget v2, p0, Lcom/noname81/lmt/PieMenu;->mAnimationTime:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private deselect()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 746
    invoke-virtual {v0, v1}, Lcom/noname81/lmt/PieItem;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/noname81/lmt/PieItem;)V
    .locals 6

    .line 610
    invoke-virtual {p2}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 611
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 613
    iget-boolean v2, p0, Lcom/noname81/lmt/PieMenu;->mRotateImages:Z

    if-eqz v2, :cond_1

    .line 614
    invoke-virtual {p2}, Lcom/noname81/lmt/PieItem;->getStartAngle()F

    move-result v2

    invoke-virtual {p2}, Lcom/noname81/lmt/PieItem;->getSweep()F

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    add-float/2addr v2, p2

    float-to-double v4, v2

    invoke-direct {p0, v4, v5}, Lcom/noname81/lmt/PieMenu;->getDegrees(D)F

    move-result p2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float/2addr p2, v2

    .line 615
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float p2, p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 623
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 624
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 632
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    if-eqz p3, :cond_1

    .line 636
    iget-object p3, p0, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 637
    iget-object p3, p0, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private findItem(Landroid/graphics/PointF;Z)Lcom/noname81/lmt/PieItem;
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/PieItem;

    .line 772
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getLevel()I

    move-result v2

    iget v3, p0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    .line 773
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getInnerRadius()I

    move-result v2

    iget v3, p0, Lcom/noname81/lmt/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 774
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getStartAngle()F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 775
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getStartAngle()F

    move-result v2

    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getSweep()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    return-object v1

    .line 780
    :cond_1
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getInnerRadius()I

    move-result v2

    iget v3, p0, Lcom/noname81/lmt/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 781
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getOuterRadius()I

    move-result v2

    iget v3, p0, Lcom/noname81/lmt/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 782
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getStartAngle()F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 783
    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getStartAngle()F

    move-result v2

    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getSweep()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireClick(Lcom/noname81/lmt/PieItem;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrate()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mToaster:Lcom/noname81/lmt/Toaster;

    invoke-virtual {v0}, Lcom/noname81/lmt/Toaster;->vibratePie()V

    :cond_0
    if-eqz p1, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    iget-boolean v0, p0, Lcom/noname81/lmt/PieMenu;->mLongpress:Z

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private fireHover(Lcom/noname81/lmt/PieItem;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    iget-boolean v0, p0, Lcom/noname81/lmt/PieMenu;->mLongpress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getDegrees(D)F
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4070e00000000000L    # 270.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method private getPolar(FF)Landroid/graphics/PointF;
    .locals 4

    .line 752
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const v1, 0x3fc90fdb

    .line 754
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 755
    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    .line 756
    iget-object p1, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/noname81/lmt/PieMenu;->mSlop:I

    if-ge p1, v2, :cond_0

    neg-float v1, v1

    .line 759
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    mul-float p2, v1, v1

    mul-float v2, p1, p1

    add-float/2addr p2, v2

    float-to-double v2, p2

    .line 760
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    iput p2, v0, Landroid/graphics/PointF;->y:F

    const/4 p2, 0x0

    cmpl-float v2, p1, p2

    if-lez v2, :cond_1

    .line 762
    iget p1, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, p1

    float-to-double p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 764
    iget p1, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, p1

    float-to-double p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    :cond_2
    :goto_0
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v7, p0

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    iput-object v0, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/noname81/lmt/Toaster;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Toaster;

    move-result-object v0

    iput-object v0, v7, Lcom/noname81/lmt/PieMenu;->mToaster:Lcom/noname81/lmt/Toaster;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v7, Lcom/noname81/lmt/PieMenu;->mLongpressHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 128
    iput-object v0, v7, Lcom/noname81/lmt/PieMenu;->mLongpressRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, v7, Lcom/noname81/lmt/PieMenu;->mLongpress:Z

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    .line 132
    iput v0, v7, Lcom/noname81/lmt/PieMenu;->mLevels:I

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 133
    iput-object v2, v7, Lcom/noname81/lmt/PieMenu;->mCounts:[I

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 136
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieInnerRadius()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mRadius:I

    .line 137
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieOuterRadius()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    .line 138
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mSlop:I

    .line 139
    sget v3, Lcom/noname81/lmt/R$dimen;->qc_touch_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mTouchOffset:I

    .line 140
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieRotateImages()I

    move-result v3

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v7, Lcom/noname81/lmt/PieMenu;->mRotateImages:Z

    .line 141
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieExpandTriggerArea()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v7, Lcom/noname81/lmt/PieMenu;->mExpandTriggerArea:Z

    .line 142
    iput-boolean v0, v7, Lcom/noname81/lmt/PieMenu;->mOpen:Z

    .line 143
    invoke-virtual {v7, v0}, Lcom/noname81/lmt/PieMenu;->setWillNotDraw(Z)V

    .line 144
    invoke-virtual {v7, v0}, Lcom/noname81/lmt/PieMenu;->setDrawingCacheEnabled(Z)V

    .line 145
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v7, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    .line 146
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    .line 147
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    .line 152
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    iget-object v4, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadPieShiftSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    iget-object v4, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadPieOutlineSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieAnimation()I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mAnimationTime:I

    .line 162
    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieColor()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v6, "0"

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, -0x1

    packed-switch v4, :pswitch_data_0

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :pswitch_0
    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x7

    goto :goto_3

    :pswitch_1
    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x6

    goto :goto_3

    :pswitch_2
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x5

    goto :goto_3

    :pswitch_3
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    goto :goto_3

    :pswitch_4
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    goto :goto_3

    :pswitch_5
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    goto :goto_3

    :pswitch_6
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    goto :goto_3

    :pswitch_7
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_3
    const-string v14, ","

    const-string v15, ""

    const-string v13, " "

    const/4 v8, -0x2

    packed-switch v4, :pswitch_data_1

    .line 252
    :try_start_0
    invoke-virtual {v3, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 254
    array-length v4, v3

    if-lez v4, :cond_a

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    .line 255
    iget-object v4, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    aget-object v16, v3, v0

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 257
    :cond_a
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v4, Lcom/noname81/lmt/R$color;->qc_normal_blue:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    :goto_4
    array-length v1, v3

    if-le v1, v5, :cond_b

    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    .line 260
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    aget-object v4, v3, v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    :cond_b
    new-array v1, v10, [F

    .line 263
    iget-object v4, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v4, v1, v11

    const v16, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v16

    aput v4, v1, v11

    .line 265
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 266
    iget-object v4, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    :goto_5
    array-length v1, v3

    if-le v1, v11, :cond_c

    aget-object v1, v3, v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 269
    aget-object v1, v3, v11

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    goto :goto_6

    .line 271
    :cond_c
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 273
    :goto_6
    array-length v1, v3

    if-le v1, v10, :cond_d

    aget-object v1, v3, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    .line 274
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    aget-object v4, v3, v10

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 276
    :cond_d
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 278
    :goto_7
    array-length v1, v3

    if-le v1, v9, :cond_e

    aget-object v1, v3, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 279
    aget-object v1, v3, v9

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    goto :goto_8

    .line 281
    :cond_e
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 283
    :goto_8
    array-length v1, v3

    const/4 v4, 0x5

    if-le v1, v4, :cond_f

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    .line 284
    aget-object v1, v3, v4

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto :goto_9

    .line 286
    :cond_f
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    .line 288
    :goto_9
    array-length v1, v3

    const/4 v4, 0x6

    if-le v1, v4, :cond_10

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 289
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_a

    .line 291
    :cond_10
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 295
    :catch_0
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_normal_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 299
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 301
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 302
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    .line 242
    :pswitch_8
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const/16 v3, 0x7f

    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v4, 0x40

    const/16 v9, 0xff

    invoke-static {v4, v9, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    invoke-static {v4, v9, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-static {v3, v9, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xc8

    .line 246
    invoke-static {v1, v9, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 247
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 248
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    :pswitch_9
    const/16 v3, 0x7f

    const/16 v9, 0xff

    .line 233
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v4, 0x40

    invoke-static {v4, v0, v9, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    invoke-static {v4, v0, v9, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-static {v3, v0, v9, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xc8

    .line 237
    invoke-static {v1, v0, v9, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 238
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 239
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    .line 224
    :pswitch_a
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const/16 v3, 0x23

    const/16 v4, 0x5a

    const/16 v9, 0xbe

    invoke-static {v9, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v3, 0xf2

    const/16 v4, 0x1e

    const/16 v9, 0xff

    invoke-static {v9, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    const/16 v3, 0xf2

    invoke-static {v9, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 229
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 230
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    .line 213
    :pswitch_b
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_normal_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const v9, -0xbbbbbc

    invoke-virtual {v1, v3, v4, v4, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 215
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    sget v10, Lcom/noname81/lmt/R$color;->qc_selected_white:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const v10, -0x333334

    invoke-virtual {v1, v3, v4, v4, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 217
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    iput v9, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 220
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 221
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    .line 204
    :pswitch_c
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_normal_transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 209
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 210
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    .line 196
    :pswitch_d
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_normal_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_grey:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 201
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto/16 :goto_a

    .line 187
    :pswitch_e
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_normal_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 192
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 193
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto :goto_a

    .line 165
    :pswitch_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_11

    .line 166
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const v3, 0x106003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const v3, 0x106004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 172
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 173
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    goto :goto_a

    .line 176
    :cond_11
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_normal_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mShiftPaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    sget v3, Lcom/noname81/lmt/R$color;->qc_selected_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    .line 182
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    .line 183
    iput v8, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    .line 307
    :goto_a
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieStatusInfoColor()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 309
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoClockColor:I

    .line 310
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoNotificationsColor:I

    .line 311
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v3}, Lcom/noname81/lmt/PieMenu;->manipulateColor(IF)I

    move-result v1

    iput v1, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoDimColor:I

    goto :goto_d

    .line 315
    :cond_12
    :try_start_1
    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 317
    array-length v3, v1

    if-lez v3, :cond_13

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    .line 318
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoClockColor:I

    goto :goto_b

    .line 321
    :cond_13
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoClockColor:I

    .line 323
    :goto_b
    array-length v3, v1

    if-le v3, v5, :cond_14

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_14

    .line 324
    aget-object v3, v1, v5

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoNotificationsColor:I

    goto :goto_c

    .line 327
    :cond_14
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoNotificationsColor:I

    .line 329
    :goto_c
    array-length v3, v1

    if-le v3, v11, :cond_15

    aget-object v3, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    .line 330
    aget-object v1, v1, v11

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoDimColor:I

    goto :goto_d

    :cond_15
    const/16 v1, 0xc8

    .line 333
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoDimColor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    .line 337
    :catch_1
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoClockColor:I

    .line 338
    iput v12, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoNotificationsColor:I

    const/16 v1, 0xc8

    .line 339
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoDimColor:I

    .line 343
    :goto_d
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerColor()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_16

    const v0, 0x1060040

    .line 346
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v7, Lcom/noname81/lmt/PieMenu;->mPointerColor:I

    goto :goto_e

    .line 349
    :cond_16
    sget v0, Lcom/noname81/lmt/R$color;->qc_normal_blue:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v7, Lcom/noname81/lmt/PieMenu;->mPointerColor:I

    goto :goto_e

    .line 354
    :cond_17
    :try_start_2
    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 356
    array-length v3, v1

    if-lez v3, :cond_18

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_18

    .line 357
    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/noname81/lmt/PieMenu;->mPointerColor:I

    goto :goto_e

    .line 360
    :cond_18
    sget v0, Lcom/noname81/lmt/R$color;->qc_normal_blue:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v7, Lcom/noname81/lmt/PieMenu;->mPointerColor:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    .line 364
    :catch_2
    sget v0, Lcom/noname81/lmt/R$color;->qc_normal_blue:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v7, Lcom/noname81/lmt/PieMenu;->mPointerColor:I

    .line 368
    :goto_e
    new-instance v0, Lcom/noname81/lmt/PiePointer;

    iget v1, v7, Lcom/noname81/lmt/PieMenu;->mPointerColor:I

    move-object/from16 v2, p1

    invoke-direct {v0, v7, v2, v1}, Lcom/noname81/lmt/PiePointer;-><init>(Landroid/widget/FrameLayout;Landroid/content/Context;I)V

    iput-object v0, v7, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    .line 369
    iget-object v0, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowStatusInfos()I

    move-result v0

    if-lez v0, :cond_19

    new-instance v8, Lcom/noname81/lmt/PieStatusInfo;

    iget v3, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoClockColor:I

    iget v4, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoNotificationsColor:I

    iget-object v0, v7, Lcom/noname81/lmt/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    iget v6, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfoDimColor:I

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/PieStatusInfo;-><init>(Landroid/widget/FrameLayout;Landroid/content/Context;IIII)V

    iput-object v8, v7, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    :cond_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private isValidPosition(II)Z
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheRight()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private layoutPie()V
    .locals 25

    move-object/from16 v7, p0

    .line 534
    iget-object v0, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieStartGap()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v8, v0, v1

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x4036f025

    add-float/2addr v0, v8

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v8

    .line 538
    :goto_0
    iget-object v0, v7, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieSliceGap()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v10, v0, v1

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v0, v0, v10

    float-to-int v0, v0

    .line 541
    iget v1, v7, Lcom/noname81/lmt/PieMenu;->mRadius:I

    add-int v2, v1, v0

    .line 542
    iget v3, v7, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    move v11, v1

    move v12, v2

    .line 544
    :goto_1
    iget v1, v7, Lcom/noname81/lmt/PieMenu;->mLevels:I

    if-ge v0, v1, :cond_5

    add-int/lit8 v13, v0, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, v8, v0

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 546
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v1

    double-to-float v1, v3

    iget-object v2, v7, Lcom/noname81/lmt/PieMenu;->mCounts:[I

    aget v2, v2, v13

    int-to-float v2, v2

    div-float v14, v1, v2

    div-float v15, v14, v0

    add-float v16, v9, v15

    const-wide/16 v0, 0x0

    .line 548
    invoke-direct {v7, v0, v1}, Lcom/noname81/lmt/PieMenu;->getDegrees(D)F

    move-result v1

    float-to-double v2, v14

    invoke-direct {v7, v2, v3}, Lcom/noname81/lmt/PieMenu;->getDegrees(D)F

    move-result v2

    iget-object v5, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move v3, v11

    move v4, v12

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/PieMenu;->makeSlice(FFIILandroid/graphics/Point;F)Landroid/graphics/Path;

    move-result-object v0

    .line 549
    iget-object v1, v7, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v6, v16

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/noname81/lmt/PieItem;

    .line 550
    invoke-virtual {v5}, Lcom/noname81/lmt/PieItem;->getLevel()I

    move-result v1

    if-ne v1, v13, :cond_3

    .line 551
    invoke-virtual {v5}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 554
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 555
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, v11, v12

    mul-int/lit8 v4, v4, 0x2

    .line 556
    div-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v12

    move/from16 v16, v8

    move/from16 v18, v9

    int-to-double v8, v4

    move/from16 v19, v10

    move/from16 v20, v11

    float-to-double v10, v6

    .line 557
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v23, v12

    move/from16 v24, v13

    mul-double v12, v8, v21

    double-to-int v4, v12

    .line 558
    iget-object v12, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v8, v8

    sub-int/2addr v12, v8

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v12, v8

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 560
    iget-object v8, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    div-int/lit8 v4, v2, 0x2

    goto :goto_3

    .line 562
    :cond_1
    iget-object v8, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v4

    div-int/lit8 v4, v2, 0x2

    :goto_3
    sub-int/2addr v8, v4

    add-int/2addr v2, v8

    add-int/2addr v3, v12

    .line 564
    invoke-virtual {v1, v8, v12, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_2
    move/from16 v16, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v23, v12

    move/from16 v24, v13

    :goto_4
    sub-float v2, v6, v15

    move-object v1, v5

    move v3, v14

    move/from16 v4, v23

    move-object v8, v5

    move/from16 v5, v20

    move v9, v6

    move-object v6, v0

    .line 567
    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/PieItem;->setGeometry(FFIILandroid/graphics/Path;)V

    .line 568
    iget v1, v7, Lcom/noname81/lmt/PieMenu;->mIconColor:I

    invoke-virtual {v8, v1}, Lcom/noname81/lmt/PieItem;->setColor(I)V

    add-float v6, v9, v14

    goto :goto_5

    :cond_3
    move/from16 v16, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move v9, v6

    :goto_5
    move/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_2

    :cond_4
    move/from16 v16, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v23, v12

    move/from16 v24, v13

    .line 572
    iget v0, v7, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    add-int v12, v23, v0

    add-int v11, v20, v0

    move/from16 v0, v24

    goto/16 :goto_1

    .line 576
    :cond_5
    iget v0, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    iget-object v0, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RadialGradient;

    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v3

    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v10, v3

    iget v3, v7, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v4, v7, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    iget v5, v7, Lcom/noname81/lmt/PieMenu;->mLevels:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    int-to-float v11, v3

    iget-object v3, v7, Lcom/noname81/lmt/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    iget v13, v7, Lcom/noname81/lmt/PieMenu;->mNormalGradient:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 577
    :cond_6
    iget v0, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    if-eq v0, v1, :cond_7

    iget-object v0, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    iget-object v2, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v9, v2

    iget-object v2, v7, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v10, v2

    iget v2, v7, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v3, v7, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    iget v4, v7, Lcom/noname81/lmt/PieMenu;->mLevels:I

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    int-to-float v11, v2

    iget-object v2, v7, Lcom/noname81/lmt/PieMenu;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    iget v13, v7, Lcom/noname81/lmt/PieMenu;->mOutlineGradient:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7
    return-void
.end method

.method private makeSlice(FFIILandroid/graphics/Point;F)Landroid/graphics/Path;
    .locals 5

    .line 641
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p3

    int-to-float v2, v2

    iget v3, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, p3

    int-to-float p3, v4

    invoke-direct {v0, v1, v2, v3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 642
    new-instance p3, Landroid/graphics/RectF;

    iget v1, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p4

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p4

    int-to-float v2, v2

    iget v3, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v3, p4

    int-to-float v3, v3

    iget p5, p5, Landroid/graphics/Point;->y:I

    add-int/2addr p5, p4

    int-to-float p4, p5

    invoke-direct {p3, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 643
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    sub-float/2addr p1, p6

    add-float/2addr p2, p6

    sub-float p5, p2, p1

    const/4 p6, 0x1

    .line 646
    invoke-virtual {p4, v0, p1, p5, p6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    sub-float/2addr p1, p2

    .line 647
    invoke-virtual {p4, p3, p2, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 648
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-object p4
.end method

.method public static manipulateColor(IF)I
    .locals 3

    .line 792
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 793
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 794
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 795
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0xff

    .line 797
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 798
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 799
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 796
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private onEnter(Lcom/noname81/lmt/PieItem;)V
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0, v1}, Lcom/noname81/lmt/PieItem;->setSelected(Z)V

    .line 724
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    iput-object v0, p0, Lcom/noname81/lmt/PieMenu;->mLastItem:Lcom/noname81/lmt/PieItem;

    :cond_0
    if-eqz p1, :cond_3

    .line 728
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrate()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 729
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrate()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mToaster:Lcom/noname81/lmt/Toaster;

    invoke-virtual {v0}, Lcom/noname81/lmt/Toaster;->vibratePie()V

    .line 732
    :cond_2
    invoke-virtual {p0, v1}, Lcom/noname81/lmt/PieMenu;->playSoundEffect(I)V

    const/4 v0, 0x1

    .line 733
    invoke-virtual {p1, v0}, Lcom/noname81/lmt/PieItem;->setSelected(Z)V

    .line 734
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->fireHover(Lcom/noname81/lmt/PieItem;)V

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mLastItem:Lcom/noname81/lmt/PieItem;

    if-ne v0, p1, :cond_4

    .line 737
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieMultiCommand()I

    move-result v0

    if-lez v0, :cond_4

    .line 738
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->fireClick(Lcom/noname81/lmt/PieItem;)V

    .line 741
    :cond_4
    iput-object p1, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    return-void
.end method

.method private onTheBottom()Z
    .locals 3

    .line 409
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheRight()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/noname81/lmt/PieMenu;->mSlop:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onTheLeft()Z
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/noname81/lmt/PieMenu;->mSlop:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onTheRight()Z
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/noname81/lmt/PieMenu;->mSlop:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private selectImages(I)V
    .locals 2

    const/4 v0, 0x0

    .line 473
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/PieItem;

    invoke-virtual {v1, p1}, Lcom/noname81/lmt/PieItem;->selectImage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCenter(II)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 454
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 456
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 464
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPiePos()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPiePos()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 469
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/noname81/lmt/PieMenu;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCenter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " iny:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LMT::PieMenu"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method static setDebug(Z)V
    .locals 0

    .line 121
    sput-boolean p0, Lcom/noname81/lmt/PieMenu;->DEBUG:Z

    return-void
.end method

.method private setLongpressTimer(Landroid/graphics/PointF;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 502
    iget v0, p0, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v1, p0, Lcom/noname81/lmt/PieMenu;->mTouchOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieMenu;->mLongpressRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 527
    new-instance p1, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;

    invoke-direct {p1, p0}, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;-><init>(Lcom/noname81/lmt/PieMenu;)V

    iput-object p1, p0, Lcom/noname81/lmt/PieMenu;->mLongpressRunnable:Ljava/lang/Runnable;

    .line 528
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mLongpressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/noname81/lmt/PieMenu;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieLongpress()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 503
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/noname81/lmt/PieMenu;->mLongpressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 504
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mLongpressHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 505
    iput-object p1, p0, Lcom/noname81/lmt/PieMenu;->mLongpressRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 506
    iput-boolean p1, p0, Lcom/noname81/lmt/PieMenu;->mLongpress:Z

    .line 507
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->selectImages(I)V

    .line 508
    invoke-virtual {p0}, Lcom/noname81/lmt/PieMenu;->postInvalidate()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public activatePiePointer()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    invoke-interface {v0}, Lcom/noname81/lmt/PieMenu$PieView;->activate()V

    return-void
.end method

.method public addItem(Lcom/noname81/lmt/PieItem;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {p1}, Lcom/noname81/lmt/PieItem;->getLevel()I

    move-result p1

    .line 376
    iget v0, p0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    .line 377
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCounts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public clearItems()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 390
    iput v0, p0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mCounts:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 586
    iget-boolean v0, p0, Lcom/noname81/lmt/PieMenu;->mOpen:Z

    if-eqz v0, :cond_5

    .line 588
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/noname81/lmt/PieMenu$PieView;->drawBackground(Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 589
    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/noname81/lmt/PieMenu$PieView;->drawBackground(Landroid/graphics/Canvas;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noname81/lmt/PieItem;

    .line 593
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 594
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 595
    :cond_2
    invoke-virtual {v2}, Lcom/noname81/lmt/PieItem;->getStartAngle()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/noname81/lmt/PieMenu;->getDegrees(D)F

    move-result v4

    const/high16 v5, 0x43870000    # 270.0f

    sub-float/2addr v4, v5

    .line 596
    iget-object v5, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 597
    invoke-virtual {v2}, Lcom/noname81/lmt/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v2}, Lcom/noname81/lmt/PieItem;->isSelected()Z

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/noname81/lmt/PieMenu;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V

    .line 598
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 599
    invoke-direct {p0, p1, v2}, Lcom/noname81/lmt/PieMenu;->drawItem(Landroid/graphics/Canvas;Lcom/noname81/lmt/PieItem;)V

    goto :goto_1

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/noname81/lmt/PieMenu$PieView;->drawForeground(Landroid/graphics/Canvas;)Z

    move-result v1

    :cond_4
    if-nez v1, :cond_5

    .line 604
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/noname81/lmt/PieMenu$PieView;->drawForeground(Landroid/graphics/Canvas;)Z

    :cond_5
    return-void
.end method

.method public onShrink()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/noname81/lmt/PieMenu$PieView;->onShrink()V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/noname81/lmt/PieMenu$PieView;->onShrink()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 654
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/noname81/lmt/PieMenu;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 657
    sget-boolean v0, Lcom/noname81/lmt/PieMenu;->DEBUG:Z

    const-string v1, "LMT::PieMenu"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onTouchEvent base: height: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/noname81/lmt/PieMenu;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/noname81/lmt/PieMenu;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", window:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 661
    sget-boolean v3, Lcom/noname81/lmt/PieMenu;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTouchEvent patched:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " raw:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_2

    float-to-int p1, v0

    float-to-int v0, v2

    .line 666
    invoke-direct {p0, p1, v0}, Lcom/noname81/lmt/PieMenu;->setCenter(II)V

    .line 667
    invoke-direct {p0, p1, v0}, Lcom/noname81/lmt/PieMenu;->isValidPosition(II)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 668
    invoke-virtual {p0, v1, v10}, Lcom/noname81/lmt/PieMenu;->show(ZZ)V

    return v1

    :cond_2
    const/4 v11, 0x0

    if-ne v1, p1, :cond_6

    .line 672
    iget-boolean v3, p0, Lcom/noname81/lmt/PieMenu;->mOpen:Z

    if-eqz v3, :cond_c

    .line 674
    invoke-direct {p0, v0, v2}, Lcom/noname81/lmt/PieMenu;->getPolar(FF)Landroid/graphics/PointF;

    move-result-object v12

    .line 675
    iget-object v3, p0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v4

    move v4, p1

    move v5, v0

    move v6, v2

    move-object v9, v12

    invoke-interface/range {v3 .. v9}, Lcom/noname81/lmt/PieMenu$PieView;->onTouchEvent(IFFFFLandroid/graphics/PointF;)Z

    move-result v3

    move v13, v3

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    :goto_0
    if-nez v13, :cond_4

    .line 676
    iget-object v3, p0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v4

    move v4, p1

    move v5, v0

    move v6, v2

    move-object v9, v12

    invoke-interface/range {v3 .. v9}, Lcom/noname81/lmt/PieMenu$PieView;->onTouchEvent(IFFFFLandroid/graphics/PointF;)Z

    .line 677
    :cond_4
    iget-object p1, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    .line 678
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->deselect()V

    .line 679
    invoke-virtual {p0, v10, v10}, Lcom/noname81/lmt/PieMenu;->show(ZZ)V

    if-nez v13, :cond_5

    if-eqz p1, :cond_5

    .line 680
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->fireClick(Lcom/noname81/lmt/PieItem;)V

    .line 681
    :cond_5
    invoke-direct {p0, v11}, Lcom/noname81/lmt/PieMenu;->setLongpressTimer(Landroid/graphics/PointF;)V

    return v1

    :cond_6
    const/4 v3, 0x3

    if-ne v3, p1, :cond_7

    .line 685
    iget-boolean p1, p0, Lcom/noname81/lmt/PieMenu;->mOpen:Z

    if-eqz p1, :cond_c

    .line 686
    invoke-virtual {p0, v10, v10}, Lcom/noname81/lmt/PieMenu;->show(ZZ)V

    .line 687
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->deselect()V

    return v10

    :cond_7
    const/4 v3, 0x2

    if-ne v3, p1, :cond_c

    .line 691
    iget-boolean v3, p0, Lcom/noname81/lmt/PieMenu;->mOpen:Z

    if-eqz v3, :cond_c

    .line 693
    invoke-direct {p0, v0, v2}, Lcom/noname81/lmt/PieMenu;->getPolar(FF)Landroid/graphics/PointF;

    move-result-object v12

    .line 694
    iget-object v3, p0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v4

    move v4, p1

    move v5, v0

    move v6, v2

    move-object v9, v12

    invoke-interface/range {v3 .. v9}, Lcom/noname81/lmt/PieMenu$PieView;->onTouchEvent(IFFFFLandroid/graphics/PointF;)Z

    move-result v10

    :cond_8
    if-nez v10, :cond_9

    .line 695
    iget-object v3, p0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iget-object v4, p0, Lcom/noname81/lmt/PieMenu;->mWindow:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v4

    move v4, p1

    move v5, v0

    move v6, v2

    move-object v9, v12

    invoke-interface/range {v3 .. v9}, Lcom/noname81/lmt/PieMenu$PieView;->onTouchEvent(IFFFFLandroid/graphics/PointF;)Z

    move-result v10

    :cond_9
    if-eqz v10, :cond_a

    .line 697
    invoke-direct {p0}, Lcom/noname81/lmt/PieMenu;->deselect()V

    .line 698
    invoke-direct {p0, v11}, Lcom/noname81/lmt/PieMenu;->setLongpressTimer(Landroid/graphics/PointF;)V

    .line 699
    invoke-virtual {p0}, Lcom/noname81/lmt/PieMenu;->invalidate()V

    goto :goto_1

    .line 702
    :cond_a
    invoke-direct {p0, v12}, Lcom/noname81/lmt/PieMenu;->setLongpressTimer(Landroid/graphics/PointF;)V

    .line 703
    iget-boolean p1, p0, Lcom/noname81/lmt/PieMenu;->mExpandTriggerArea:Z

    invoke-direct {p0, v12, p1}, Lcom/noname81/lmt/PieMenu;->findItem(Landroid/graphics/PointF;Z)Lcom/noname81/lmt/PieItem;

    move-result-object p1

    .line 704
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    if-eq v0, p1, :cond_b

    .line 705
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieMenu;->onEnter(Lcom/noname81/lmt/PieItem;)V

    .line 706
    invoke-virtual {p0}, Lcom/noname81/lmt/PieMenu;->invalidate()V

    :cond_b
    :goto_1
    return v1

    :cond_c
    return v10
.end method

.method public relayoutPie()V
    .locals 1

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, v0, v0}, Lcom/noname81/lmt/PieMenu;->show(ZZ)V

    return-void
.end method

.method public removeItem(Lcom/noname81/lmt/PieItem;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public show(ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_1

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->animateOpen()V

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->layoutPie()V

    .line 420
    iget-object v2, v0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v0, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v6, v0, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    iget v7, v0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result v9

    move/from16 v10, p2

    invoke-interface/range {v2 .. v10}, Lcom/noname81/lmt/PieMenu$PieView;->layout(ZLandroid/graphics/Point;IIIZZZ)V

    .line 421
    :cond_0
    iget-object v10, v0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v10, :cond_3

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v13, v0, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v14, v0, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    iget v15, v0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result v17

    move/from16 v18, p2

    invoke-interface/range {v10 .. v18}, Lcom/noname81/lmt/PieMenu$PieView;->layout(ZLandroid/graphics/Point;IIIZZZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 423
    iput-object v2, v0, Lcom/noname81/lmt/PieMenu;->mCurrentItem:Lcom/noname81/lmt/PieItem;

    .line 424
    iput-object v2, v0, Lcom/noname81/lmt/PieMenu;->mLastItem:Lcom/noname81/lmt/PieItem;

    .line 425
    iget-object v3, v0, Lcom/noname81/lmt/PieMenu;->mPiePointer:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v6, v0, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v7, v0, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    iget v8, v0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result v10

    move/from16 v11, p2

    invoke-interface/range {v3 .. v11}, Lcom/noname81/lmt/PieMenu$PieView;->layout(ZLandroid/graphics/Point;IIIZZZ)V

    .line 426
    :cond_2
    iget-object v11, v0, Lcom/noname81/lmt/PieMenu;->mStatusInfo:Lcom/noname81/lmt/PieMenu$PieView;

    if-eqz v11, :cond_3

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/noname81/lmt/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v14, v0, Lcom/noname81/lmt/PieMenu;->mRadius:I

    iget v15, v0, Lcom/noname81/lmt/PieMenu;->mRadiusInc:I

    iget v2, v0, Lcom/noname81/lmt/PieMenu;->mLevels:I

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheLeft()Z

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->onTheBottom()Z

    move-result v18

    move/from16 v16, v2

    move/from16 v19, p2

    invoke-interface/range {v11 .. v19}, Lcom/noname81/lmt/PieMenu$PieView;->layout(ZLandroid/graphics/Point;IIIZZZ)V

    .line 428
    :cond_3
    :goto_0
    iput-boolean v1, v0, Lcom/noname81/lmt/PieMenu;->mOpen:Z

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/PieMenu;->invalidate()V

    return-void
.end method
