.class Lcom/noname81/lmt/SettingsViewHelper$16;
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
.method constructor <init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 491
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$16;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

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
    .locals 2

    const/4 v0, 0x1

    .line 496
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 497
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$16;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/noname81/lmt/SettingsValues;->savePieAreaX(I)V

    .line 498
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$16;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/SettingsValues;->setVisiblePieActivationAread(Z)V

    .line 499
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$16;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
