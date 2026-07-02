.class Lcom/noname81/lmt/TouchService$MessageHandler;
.super Landroid/os/Handler;
.source "TouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/TouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private mTouchServiceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/noname81/lmt/TouchService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/noname81/lmt/TouchService;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/noname81/lmt/TouchService$MessageHandler;->mTouchServiceReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 89
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/noname81/lmt/TouchServiceResult;

    .line 90
    iget-object v0, p0, Lcom/noname81/lmt/TouchService$MessageHandler;->mTouchServiceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/TouchService;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v1

    const-string v2, "Result: "

    const-string v3, "LMT::TouchService"

    const/4 v4, 0x1

    const/16 v5, 0x17

    if-eq v1, v5, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v1

    const/16 v6, 0xd

    if-gt v1, v6, :cond_0

    .line 97
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$200(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/noname81/lmt/SettingsValues;->getGestureAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/noname81/lmt/Action;->getType()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 99
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$200(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->isNotBlacklisted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$300(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/Toaster;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/noname81/lmt/Toaster;->show(Lcom/noname81/lmt/TouchServiceResult;)V

    .line 103
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$400(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/Launcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noname81/lmt/Launcher;->fireAction(Lcom/noname81/lmt/Action;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v1

    const/16 v5, 0xe

    if-lt v1, v5, :cond_1

    .line 110
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$200(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getGesture()I

    move-result v5

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getStartX()F

    move-result v6

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->getStartY()F

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/noname81/lmt/SettingsValues;->getIsaAction(IFF)Lcom/noname81/lmt/Action;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/noname81/lmt/Action;->getType()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 112
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$200(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->isNotBlacklisted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/noname81/lmt/TouchServiceResult;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$300(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/Toaster;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/noname81/lmt/Toaster;->show(Lcom/noname81/lmt/TouchServiceResult;)V

    .line 116
    invoke-static {v0}, Lcom/noname81/lmt/TouchService;->access$400(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/Launcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/noname81/lmt/Launcher;->fireAction(Lcom/noname81/lmt/Action;)V

    :cond_1
    :goto_0
    return-void
.end method
