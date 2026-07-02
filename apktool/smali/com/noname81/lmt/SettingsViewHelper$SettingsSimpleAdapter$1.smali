.class Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;
.super Ljava/lang/Object;
.source "SettingsViewHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getServiceState()I

    move-result p1

    if-nez p1, :cond_0

    .line 1066
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->startService()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1067
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getServiceState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1068
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->stopService()V

    :cond_1
    :goto_0
    return-void
.end method
