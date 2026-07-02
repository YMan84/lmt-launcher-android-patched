.class Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;
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

    .line 1098
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v0, v0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v0}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaBehindKeyboard()I

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    iget-object p2, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p2, p2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p2}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/noname81/lmt/SettingsValues;->savePieAreaBehindKeyboard(I)V

    .line 1102
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1103
    iget-object p2, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p2, p2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p2}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p2

    invoke-virtual {p2}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaBehindKeyboard()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 1104
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/SettingsValues;->savePieAreaBehindKeyboard(I)V

    .line 1105
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;->this$1:Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V

    :cond_1
    :goto_0
    return-void
.end method
