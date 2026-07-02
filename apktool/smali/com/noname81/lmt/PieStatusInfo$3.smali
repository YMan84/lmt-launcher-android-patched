.class Lcom/noname81/lmt/PieStatusInfo$3;
.super Ljava/lang/Object;
.source "PieStatusInfo.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieStatusInfo;->layout(ZLandroid/graphics/Point;IIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/PieStatusInfo;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieStatusInfo;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 303
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 304
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float p1, p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    const v0, 0x3e3851ec    # 0.18f

    .line 307
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v0, v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$800(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v2}, Lcom/noname81/lmt/PieStatusInfo;->access$700(Lcom/noname81/lmt/PieStatusInfo;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$900(Lcom/noname81/lmt/PieStatusInfo;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$1000(Lcom/noname81/lmt/PieStatusInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$1100(Lcom/noname81/lmt/PieStatusInfo;)V

    .line 312
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/noname81/lmt/PieStatusInfo;->access$1002(Lcom/noname81/lmt/PieStatusInfo;Z)Z

    goto :goto_1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$900(Lcom/noname81/lmt/PieStatusInfo;)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$1000(Lcom/noname81/lmt/PieStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noname81/lmt/PieStatusInfo;->access$1002(Lcom/noname81/lmt/PieStatusInfo;Z)Z

    .line 317
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0, p1}, Lcom/noname81/lmt/PieStatusInfo;->access$902(Lcom/noname81/lmt/PieStatusInfo;F)F

    .line 318
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$3;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {p1}, Lcom/noname81/lmt/PieStatusInfo;->access$500(Lcom/noname81/lmt/PieStatusInfo;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method
