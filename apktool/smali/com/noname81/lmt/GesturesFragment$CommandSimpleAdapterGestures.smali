.class Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;
.super Landroid/widget/SimpleAdapter;
.source "GesturesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/GesturesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandSimpleAdapterGestures"
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$0:Lcom/noname81/lmt/GesturesFragment;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/GesturesFragment;Landroid/content/Context;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->this$0:Lcom/noname81/lmt/GesturesFragment;

    .line 123
    sget v3, Lcom/noname81/lmt/R$layout;->listitem_icondescriptionicon:I

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "title"

    aput-object v0, v4, p1

    const/4 p1, 0x1

    const-string v0, "caption"

    aput-object v0, v4, p1

    sget p1, Lcom/noname81/lmt/R$id;->listitem_icondescriptionicon_text:I

    sget v0, Lcom/noname81/lmt/R$id;->listitem_icondescriptionicon_caption:I

    filled-new-array {p1, v0}, [I

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 126
    iput p4, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->mOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->mOffset:I

    return p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    sget p3, Lcom/noname81/lmt/R$id;->listitem_icondescriptionicon_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 132
    sget v0, Lcom/noname81/lmt/R$id;->listitem_icondescriptionicon_icon2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    iget-object v1, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->this$0:Lcom/noname81/lmt/GesturesFragment;

    invoke-virtual {v1}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/noname81/lmt/IconUtils;->setMaxSizeForImageView(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 136
    new-instance v1, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$1;

    sget v2, Lcom/noname81/lmt/R$drawable;->none:I

    invoke-direct {v1, p0, p3, v2, p1}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$1;-><init>(Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;Landroid/widget/ImageView;II)V

    const/4 p3, 0x0

    new-array v2, p3, [Ljava/lang/Void;

    .line 142
    invoke-virtual {v1, v2}, Lcom/noname81/lmt/AsyncDrawableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    iget-object v1, p0, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;->this$0:Lcom/noname81/lmt/GesturesFragment;

    invoke-virtual {v1}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/noname81/lmt/IconUtils;->setMaxSizeForImageView(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 146
    new-instance v1, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;

    sget v2, Lcom/noname81/lmt/R$drawable;->none:I

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures$2;-><init>(Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;Landroid/widget/ImageView;II)V

    new-array p1, p3, [Ljava/lang/Void;

    .line 152
    invoke-virtual {v1, p1}, Lcom/noname81/lmt/AsyncDrawableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p2
.end method
