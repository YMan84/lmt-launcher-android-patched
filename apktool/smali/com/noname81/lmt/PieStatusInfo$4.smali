.class Lcom/noname81/lmt/PieStatusInfo$4;
.super Ljava/util/TimerTask;
.source "PieStatusInfo.java"


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

    .line 338
    iput-object p1, p0, Lcom/noname81/lmt/PieStatusInfo$4;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$4;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$1100(Lcom/noname81/lmt/PieStatusInfo;)V

    .line 341
    iget-object v0, p0, Lcom/noname81/lmt/PieStatusInfo$4;->this$0:Lcom/noname81/lmt/PieStatusInfo;

    invoke-static {v0}, Lcom/noname81/lmt/PieStatusInfo;->access$500(Lcom/noname81/lmt/PieStatusInfo;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
