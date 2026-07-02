.class Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$2;
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


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$2;->this$2:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 198
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    iget-object p2, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition$2;->this$2:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;

    iget-object p2, p2, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1OnClickListenerWithPosition;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p2, p2, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/noname81/lmt/PieFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
