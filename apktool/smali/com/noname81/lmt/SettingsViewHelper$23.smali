.class Lcom/noname81/lmt/SettingsViewHelper$23;
.super Lcom/noname81/lmt/ColorDialog;
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

    .line 620
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$23;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/noname81/lmt/ColorDialog;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onOkClicked(Ljava/lang/String;)Z
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewHelper$23;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v0}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/noname81/lmt/SettingsValues;->savePiePointerColor(Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$23;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V

    const/4 p1, 0x1

    return p1
.end method
