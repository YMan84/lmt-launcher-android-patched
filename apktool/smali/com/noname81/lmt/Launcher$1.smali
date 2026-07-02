.class Lcom/noname81/lmt/Launcher$1;
.super Ljava/util/TimerTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/Launcher;->doKillAppAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/Launcher;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/Launcher;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/noname81/lmt/Launcher$1;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 605
    iget-object v0, p0, Lcom/noname81/lmt/Launcher$1;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-static {v0}, Lcom/noname81/lmt/Launcher;->access$000(Lcom/noname81/lmt/Launcher;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.noname81.lmt"

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/noname81/lmt/Launcher$1;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-static {v2}, Lcom/noname81/lmt/Launcher;->access$100(Lcom/noname81/lmt/Launcher;)Lcom/noname81/lmt/RootContext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "am force-stop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/noname81/lmt/RootContext;->runCommandRoot(Ljava/lang/String;Z)V

    .line 608
    invoke-static {}, Lcom/noname81/lmt/Launcher;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kill app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
