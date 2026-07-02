.class Lcom/noname81/lmt/PieMenu$1;
.super Ljava/lang/Object;
.source "PieMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieMenu;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/PieMenu;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieMenu;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/noname81/lmt/PieMenu$1;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-static {v0}, Lcom/noname81/lmt/PieMenu;->access$000(Lcom/noname81/lmt/PieMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/PieItem;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getStart()F

    move-result v3

    neg-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/noname81/lmt/PieItem;->setAnimationAngle(F)V

    .line 443
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/noname81/lmt/PieItem;->setAlpha(I)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieMenu$1;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {p1}, Lcom/noname81/lmt/PieMenu;->invalidate()V

    return-void
.end method
