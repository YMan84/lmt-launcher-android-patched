.class Lcom/noname81/lmt/DebugHelper$1;
.super Lcom/noname81/lmt/InputDialog;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/DebugHelper;->showDebugMenu(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/DebugHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/DebugHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    iput-object p6, p0, Lcom/noname81/lmt/DebugHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/noname81/lmt/InputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onOkClicked(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 48
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$600(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, v1}, Lcom/noname81/lmt/DebugHelper;->access$602(Lcom/noname81/lmt/DebugHelper;Z)Z

    .line 64
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p1

    iget-object v1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    invoke-static {v1}, Lcom/noname81/lmt/DebugHelper;->access$600(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/noname81/lmt/RootContext;->setInitialized(Z)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$400(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {p1, v1}, Lcom/noname81/lmt/DebugHelper;->access$402(Lcom/noname81/lmt/DebugHelper;Z)Z

    .line 60
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$400(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/noname81/lmt/DebugHelper;->access$500(Lcom/noname81/lmt/DebugHelper;Z)V

    goto :goto_0

    .line 55
    :cond_4
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$200(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {p1, v1}, Lcom/noname81/lmt/DebugHelper;->access$202(Lcom/noname81/lmt/DebugHelper;Z)Z

    .line 56
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    iget-object v1, p0, Lcom/noname81/lmt/DebugHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$200(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/noname81/lmt/DebugHelper;->access$300(Lcom/noname81/lmt/DebugHelper;Landroid/content/Context;Z)V

    goto :goto_0

    .line 51
    :cond_6
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$000(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-static {p1, v1}, Lcom/noname81/lmt/DebugHelper;->access$002(Lcom/noname81/lmt/DebugHelper;Z)Z

    .line 52
    iget-object p1, p0, Lcom/noname81/lmt/DebugHelper$1;->this$0:Lcom/noname81/lmt/DebugHelper;

    iget-object v1, p0, Lcom/noname81/lmt/DebugHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/noname81/lmt/DebugHelper;->access$000(Lcom/noname81/lmt/DebugHelper;)Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/noname81/lmt/DebugHelper;->access$100(Lcom/noname81/lmt/DebugHelper;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method
