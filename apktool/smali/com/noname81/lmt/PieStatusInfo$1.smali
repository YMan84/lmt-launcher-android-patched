.class Lcom/noname81/lmt/PieStatusInfo$1;
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

    .line 265
    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lcom/noname81/lmt/PieStatusInfo;->access$002(Lcom/noname81/lmt/PieStatusInfo;F)F

    .line 270
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {p1}, Lcom/noname81/lmt/PieStatusInfo;->access$200(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$000(Lcom/noname81/lmt/PieStatusInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v1}, Lcom/noname81/lmt/PieStatusInfo;->access$100(Lcom/noname81/lmt/PieStatusInfo;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {p1}, Lcom/noname81/lmt/PieStatusInfo;->access$400(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$000(Lcom/noname81/lmt/PieStatusInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v1}, Lcom/noname81/lmt/PieStatusInfo;->access$300(Lcom/noname81/lmt/PieStatusInfo;)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$1;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {p1}, Lcom/noname81/lmt/PieStatusInfo;->access$500(Lcom/noname81/lmt/PieStatusInfo;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
