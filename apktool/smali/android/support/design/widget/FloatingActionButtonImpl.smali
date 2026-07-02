.class Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;,
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final ELEVATION_ANIM_DELAY:J = 0x64L

.field static final ELEVATION_ANIM_DURATION:J = 0x64L

.field static final ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field private static final HIDE_ICON_SCALE:F = 0.0f

.field private static final HIDE_OPACITY:F = 0.0f

.field private static final HIDE_SCALE:F = 0.0f

.field static final HOVERED_ENABLED_STATE_SET:[I

.field static final HOVERED_FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field private static final SHOW_ICON_SCALE:F = 1.0f

.field private static final SHOW_OPACITY:F = 1.0f

.field private static final SHOW_SCALE:F = 1.0f


# instance fields
.field animState:I

.field borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field contentBackground:Landroid/graphics/drawable/Drawable;

.field currentAnimator:Landroid/animation/Animator;

.field private defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

.field private defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

.field elevation:F

.field private hideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field hideMotionSpec:Landroid/support/design/animation/MotionSpec;

.field hoveredFocusedTranslationZ:F

.field imageMatrixScale:F

.field maxImageSize:I

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field pressedTranslationZ:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private rotation:F

.field shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field final shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field shapeDrawable:Landroid/graphics/drawable/Drawable;

.field private showListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field showMotionSpec:Landroid/support/design/animation/MotionSpec;

.field private final stateListAnimator:Landroid/support/design/widget/StateListAnimator;

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;

.field final view:Landroid/support/design/widget/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const v0, 0x10100a7

    const v1, 0x101009e

    .line 113
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    const v0, 0x1010367

    const v2, 0x101009c

    .line 116
    filled-new-array {v0, v2, v1}, [I

    move-result-object v3

    sput-object v3, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 119
    filled-new-array {v2, v1}, [I

    move-result-object v2

    sput-object v2, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 122
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    .line 125
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 126
    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 139
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 140
    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 142
    new-instance p2, Landroid/support/design/widget/StateListAnimator;

    invoke-direct {p2}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 145
    sget-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 147
    invoke-direct {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 145
    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 148
    sget-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 150
    invoke-direct {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 148
    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 151
    sget-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 153
    invoke-direct {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 151
    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 154
    sget-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 156
    invoke-direct {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 154
    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 158
    sget-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 159
    invoke-direct {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 158
    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 161
    sget-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 162
    invoke-direct {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 161
    invoke-virtual {p2, v0, v1}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 164
    invoke-virtual {p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    return-void
.end method

.method private calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 290
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 292
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 296
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 302
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private createAnimator(Landroid/support/design/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 519
    invoke-virtual {p1, v1}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 520
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 523
    invoke-virtual {p1, v1}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 524
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 527
    invoke-virtual {p1, v1}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 528
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 531
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    new-instance p3, Landroid/support/design/animation/ImageMatrixProperty;

    invoke-direct {p3}, Landroid/support/design/animation/ImageMatrixProperty;-><init>()V

    new-instance p4, Landroid/support/design/animation/MatrixEvaluator;

    invoke-direct {p4}, Landroid/support/design/animation/MatrixEvaluator;-><init>()V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 532
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    .line 534
    invoke-virtual {p1, p3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 535
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 538
    invoke-static {p1, v0}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method private createElevationAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 651
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 652
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 653
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 654
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 655
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 656
    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ensurePreDrawListener()V
    .locals 1

    .line 607
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$3;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method private getDefaultHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 2

    .line 505
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 507
    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$animator;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultHideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method private getDefaultShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 2

    .line 497
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 499
    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$animator;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->defaultShowMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 725
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateFromViewRotation()V
    .locals 3

    .line 729
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 732
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 744
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_2

    .line 745
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 747
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_3

    .line 748
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;
    .locals 6

    .line 582
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    .line 584
    sget v2, Landroid/support/design/R$color;->design_fab_stroke_top_outer_color:I

    .line 585
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/R$color;->design_fab_stroke_top_inner_color:I

    .line 586
    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/R$color;->design_fab_stroke_end_inner_color:I

    .line 587
    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/R$color;->design_fab_stroke_end_outer_color:I

    .line 588
    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 584
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    int-to-float p1, p1

    .line 589
    invoke-virtual {v1, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 590
    invoke-virtual {v1, p2}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 620
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 621
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    .line 622
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 543
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getElevation()F
    .locals 1

    .line 241
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    return v0
.end method

.method final getHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 1

    .line 317
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method getHoveredFocusedTranslationZ()F
    .locals 1

    .line 245
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 1

    .line 558
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method getPressedTranslationZ()F
    .locals 1

    .line 249
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    return v0
.end method

.method final getShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 1

    .line 308
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object v0
.end method

.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 2

    .line 371
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 380
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getDefaultHideMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 382
    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 387
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 419
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 420
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 423
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 426
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    if-eqz p1, :cond_6

    .line 428
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    :cond_6
    :goto_3
    return-void
.end method

.method isOrWillBeHidden()Z
    .locals 4

    .line 641
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 643
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 646
    :cond_1
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isOrWillBeShown()Z
    .locals 4

    .line 631
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 633
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 636
    :cond_1
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->animState:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method jumpDrawableToCurrentState()V
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 1

    .line 595
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 627
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 2

    .line 564
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 566
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 571
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 573
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->stateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 0

    .line 326
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz p2, :cond_0

    .line 327
    iget p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr p3, p1

    invoke-virtual {p2, p1, p3}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 328
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updatePadding()V

    :cond_0
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method onPreDraw()V
    .locals 2

    .line 599
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    .line 600
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 601
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rotation:F

    .line 602
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updateFromViewRotation()V

    :cond_0
    return-void
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 363
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 7

    .line 174
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 177
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 185
    invoke-static {p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    invoke-static {p3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 186
    invoke-static {p2, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-lez p4, :cond_1

    .line 191
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, v0

    .line 192
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, p2

    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    new-array p4, p3, [Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, v0

    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, p2

    .line 198
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 200
    new-instance p1, Landroid/support/design/widget/ShadowDrawableWrapper;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 202
    invoke-virtual {p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 204
    invoke-interface {p2}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v4

    iget v5, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float v6, v5, p2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 207
    invoke-virtual {p1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 208
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {p1, p2}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method final setElevation(F)V
    .locals 2

    .line 234
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 235
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    .line 236
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_0
    return-void
.end method

.method final setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0

    .line 321
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-void
.end method

.method final setHoveredFocusedTranslationZ(F)V
    .locals 2

    .line 253
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 254
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    .line 255
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {p0, v0, p1, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_0
    return-void
.end method

.method final setImageMatrixScale(F)V
    .locals 1

    .line 282
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 284
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 285
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 286
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method final setMaxImageSize(I)V
    .locals 1

    .line 267
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    if-eq v0, p1, :cond_0

    .line 268
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->maxImageSize:I

    .line 269
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updateImageMatrixScale()V

    :cond_0
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 2

    .line 260
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 261
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->pressedTranslationZ:F

    .line 262
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->elevation:F

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    :cond_0
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p1}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 228
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method final setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0

    .line 312
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3

    .line 434
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 443
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 447
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 448
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 449
    invoke-virtual {p0, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 452
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 454
    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getDefaultShowMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object v0

    .line 453
    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$2;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 480
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 483
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 485
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 486
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 487
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 488
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 489
    invoke-virtual {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    if-eqz p1, :cond_6

    .line 491
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    :cond_6
    :goto_2
    return-void
.end method

.method final updateImageMatrixScale()V
    .locals 1

    .line 278
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->imageMatrixScale:F

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    return-void
.end method

.method final updatePadding()V
    .locals 5

    .line 551
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 552
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 553
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 554
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
