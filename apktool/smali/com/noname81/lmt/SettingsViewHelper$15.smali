.class Lcom/noname81/lmt/SettingsViewHelper$15;
.super Lcom/noname81/lmt/InputDialog;
.source "SettingsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/SettingsViewHelper;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/SettingsViewHelper;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$15;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/noname81/lmt/InputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onOkClicked(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 475
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 476
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$15;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/noname81/lmt/SettingsValues;->savePiePos(I)V

    .line 477
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$15;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/SettingsValues;->setVisiblePieActivationAread(Z)V

    .line 478
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$15;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
