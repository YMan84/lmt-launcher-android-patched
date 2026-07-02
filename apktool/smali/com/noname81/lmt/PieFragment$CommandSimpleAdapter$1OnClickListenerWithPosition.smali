.class Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;
.super Ljava/lang/Object;
.source "PieFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnClickListenerWithPosition"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->mPosition:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 187
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    iget v0, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->mPosition:I

    invoke-static {p1, v0}, Lcom/noname81/lmt/PieFragment;->access$102(Lcom/noname81/lmt/PieFragment;I)I

    .line 188
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-virtual {p1}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadResourceSearchPath()Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object v0, v0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-static {v0}, Lcom/noname81/lmt/PieFragment;->access$100(Lcom/noname81/lmt/PieFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {p1, v0}, Lcom/noname81/lmt/FileUtils;->isFileAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object v2, v2, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-virtual {v2}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Icon selection"

    .line 193
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Do you want to delete the current icon or set a new one?"

    .line 194
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$2;

    invoke-direct {v2, p0}, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$2;-><init>(Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;)V

    const-string v3, "New"

    .line 195
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;-><init>(Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Delete"

    .line 202
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 215
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    iget-object v0, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object v0, v0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/noname81/lmt/PieFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
