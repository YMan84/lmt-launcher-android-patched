.class Lcom/noname81/lmt/SettingsViewHelper$4;
.super Ljava/lang/Object;
.source "SettingsViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$factorXFinal:I

.field final synthetic val$factorYFinal:I

.field final synthetic val$inputDeviceFinal:I


# direct methods
.method constructor <init>(Lcom/noname81/lmt/SettingsViewHelper;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iput p2, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$inputDeviceFinal:I

    iput p3, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$factorXFinal:I

    iput p4, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$factorYFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 227
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 228
    iget p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$inputDeviceFinal:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$factorXFinal:I

    if-le p1, p2, :cond_0

    iget p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$factorYFinal:I

    if-le p1, p2, :cond_0

    .line 229
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iget p2, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$inputDeviceFinal:I

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/SettingsValues;->saveInputDevice(I)V

    .line 230
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iget p2, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$factorXFinal:I

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/SettingsValues;->saveTouchscreenScreenFactorX(I)V

    .line 231
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iget p2, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->val$factorYFinal:I

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/SettingsValues;->saveTouchscreenScreenFactorY(I)V

    .line 232
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$200(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/TouchServiceNative;

    move-result-object p1

    iget-object p2, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p2}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p2

    invoke-virtual {p2}, Lcom/noname81/lmt/SettingsValues;->loadInputDeviceString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/TouchServiceNative;->setInputDeviceUnlock(Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$4;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {p1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V

    :cond_0
    return-void
.end method
