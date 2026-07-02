.class Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;
.super Lcom/noname81/lmt/AsyncDrawableTask;
.source "PieFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;Landroid/widget/ImageView;II)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iput p4, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;->val$position:I

    invoke-direct {p0, p2, p3}, Lcom/noname81/lmt/AsyncDrawableTask;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 158
    iget p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;->val$position:I

    rem-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-virtual {p1}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/IconUtils;->getIconForPieLongPress(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;->this$1:Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;->this$0:Lcom/noname81/lmt/PieFragment;

    invoke-virtual {p1}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/IconUtils;->getIconForPieShortPress(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
