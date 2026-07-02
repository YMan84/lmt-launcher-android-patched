.class Lcom/noname81/lmt/PieMenu$1LongpressRunnable;
.super Ljava/lang/Object;
.source "PieMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieMenu;->setLongpressTimer(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongpressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/PieMenu;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieMenu;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-static {v0}, Lcom/noname81/lmt/PieMenu;->access$100(Lcom/noname81/lmt/PieMenu;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrate()I

    move-result v0

    if-lez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-static {v0}, Lcom/noname81/lmt/PieMenu;->access$200(Lcom/noname81/lmt/PieMenu;)Lcom/noname81/lmt/Toaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noname81/lmt/Toaster;->vibratePie()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/noname81/lmt/PieMenu;->access$302(Lcom/noname81/lmt/PieMenu;Z)Z

    .line 522
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-static {v0}, Lcom/noname81/lmt/PieMenu;->access$400(Lcom/noname81/lmt/PieMenu;)Lcom/noname81/lmt/PieItem;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/PieMenu;->access$500(Lcom/noname81/lmt/PieMenu;Lcom/noname81/lmt/PieItem;)V

    .line 523
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-static {v0, v1}, Lcom/noname81/lmt/PieMenu;->access$600(Lcom/noname81/lmt/PieMenu;I)V

    .line 524
    iget-object v0, p0, Lcom/noname81/lmt/PieMenu$1LongpressRunnable;->this$0:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieMenu;->postInvalidate()V

    return-void
.end method
