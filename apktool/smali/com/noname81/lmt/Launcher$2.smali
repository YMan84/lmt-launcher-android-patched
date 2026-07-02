.class Lcom/noname81/lmt/Launcher$2;
.super Ljava/util/TimerTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/Launcher;->doKillAllAppsAction()V
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

    .line 627
    iput-object p1, p0, Lcom/noname81/lmt/Launcher$2;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 629
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/Launcher$2;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-static {v1}, Lcom/noname81/lmt/Launcher;->access$000(Lcom/noname81/lmt/Launcher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/noname81/lmt/Launcher$2;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-static {v1}, Lcom/noname81/lmt/Launcher;->access$000(Lcom/noname81/lmt/Launcher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.noname81.lmt"

    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/noname81/lmt/Launcher$2;->this$0:Lcom/noname81/lmt/Launcher;

    invoke-static {v2}, Lcom/noname81/lmt/Launcher;->access$300(Lcom/noname81/lmt/Launcher;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/noname81/lmt/Launcher;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kill app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LMT::Launcher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
