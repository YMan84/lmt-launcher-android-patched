.class Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;
.super Ljava/lang/Object;
.source "PieFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->this$2:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;

    iput-object p2, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->val$path:Ljava/lang/String;

    iget-object p2, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->val$fileName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/noname81/lmt/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->this$2:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-static {p1}, Lcom/noname81/lmt/PieFragment;->access$200(Lcom/noname81/lmt/PieFragment;)Lcom/noname81/lmt/SeparatedListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 207
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$1;->this$2:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-virtual {p1}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V

    return-void
.end method
