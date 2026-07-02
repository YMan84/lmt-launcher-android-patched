.class Lcom/noname81/lmt/PieStatusInfo$5;
.super Ljava/lang/Object;
.source "PieStatusInfo.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieStatusInfo;->onSensorChanged(Landroid/hardware/SensorEvent;)V
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

    .line 735
    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 739
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 740
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0, p1}, Lcom/noname81/lmt/PieStatusInfo;->access$1200(Lcom/noname81/lmt/PieStatusInfo;F)V

    .line 741
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0, p1}, Lcom/noname81/lmt/PieStatusInfo;->access$1302(Lcom/noname81/lmt/PieStatusInfo;F)F

    .line 742
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$800(Lcom/noname81/lmt/PieStatusInfo;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v1}, Lcom/noname81/lmt/PieStatusInfo;->access$1400(Lcom/noname81/lmt/PieStatusInfo;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v2}, Lcom/noname81/lmt/PieStatusInfo;->access$1400(Lcom/noname81/lmt/PieStatusInfo;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 743
    iget-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$5;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {p1}, Lcom/noname81/lmt/PieStatusInfo;->access$500(Lcom/noname81/lmt/PieStatusInfo;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
