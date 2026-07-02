.class Lcom/noname81/lmt/CommandSelectActivity$1;
.super Lcom/noname81/lmt/InputDialog;
.source "CommandSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/CommandSelectActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/CommandSelectActivity;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 153
    iput-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$1;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/InputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onOkClicked(Ljava/lang/String;)Z
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/noname81/lmt/CommandSelectActivity$1;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {v0}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    iget-object v1, p0, Lcom/noname81/lmt/CommandSelectActivity$1;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {v1}, Lcom/noname81/lmt/CommandSelectActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/Action;

    iget-object v3, p0, Lcom/noname81/lmt/CommandSelectActivity$1;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-static {v3}, Lcom/noname81/lmt/CommandSelectActivity;->access$000(Lcom/noname81/lmt/CommandSelectActivity;)I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/SettingsValues;->setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V

    .line 157
    iget-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$1;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {p1}, Lcom/noname81/lmt/CommandSelectActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
