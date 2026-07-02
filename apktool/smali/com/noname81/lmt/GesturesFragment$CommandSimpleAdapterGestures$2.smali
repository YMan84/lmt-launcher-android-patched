.class Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;
.super Lcom/noname81/lmt/AsyncDrawableTask;
.source "GesturesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;Landroid/widget/ImageView;II)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->this$1:Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    iput p4, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->val$position:I

    invoke-direct {p0, p2, p3}, Lcom/noname81/lmt/AsyncDrawableTask;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 149
    iget-object p1, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->this$1:Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    iget-object p1, p1, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->this$0:Lcom/noname81/lmt/GesturesFragment;

    invoke-virtual {p1}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->this$1:Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    iget-object v0, v0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->this$0:Lcom/noname81/lmt/GesturesFragment;

    invoke-virtual {v0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    iget-object v1, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->this$1:Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    invoke-static {v1}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->access$000(Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;)I

    move-result v1

    iget v2, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->val$position:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/SettingsValues;->getGestureAction(I)Lcom/noname81/lmt/Action;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/noname81/lmt/IconUtils;->getIconForAction(Landroid/content/Context;Lcom/noname81/lmt/Action;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
