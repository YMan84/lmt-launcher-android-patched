.class final Lcom/noname81/lmt/TouchService$TouchServiceThread;
.super Landroid/os/HandlerThread;
.source "TouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/TouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchServiceThread"
.end annotation


# instance fields
.field stopped:Z

.field final synthetic this$0:Lcom/noname81/lmt/TouchService;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/TouchService;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->this$0:Lcom/noname81/lmt/TouchService;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->stopped:Z

    return-void
.end method


# virtual methods
.method public quit()Z
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->stopped:Z

    return v0
.end method

.method public run()V
    .locals 4

    .line 65
    :goto_0
    iget-boolean v0, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->stopped:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->this$0:Lcom/noname81/lmt/TouchService;

    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$000(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/TouchServiceNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noname81/lmt/TouchServiceNative;->run()Lcom/noname81/lmt/TouchServiceResult;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->this$0:Lcom/noname81/lmt/TouchService;

    invoke-static {v1}, Lcom/noname81/lmt/TouchService;->access$100(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/TouchService$MessageHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/TouchService$TouchServiceThread;->this$0:Lcom/noname81/lmt/TouchService;

    invoke-static {v2}, Lcom/noname81/lmt/TouchService;->access$100(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/TouchService$MessageHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/noname81/lmt/TouchService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
