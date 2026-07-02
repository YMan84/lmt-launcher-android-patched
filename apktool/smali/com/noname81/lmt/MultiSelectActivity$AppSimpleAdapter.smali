.class Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "MultiSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/MultiSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppSimpleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/MultiSelectActivity;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/MultiSelectActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    .line 237
    sget v3, Lcom/noname81/lmt/R$layout;->listitem_icondescription:I

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "title"

    aput-object v0, v4, p1

    const/4 p1, 0x1

    const-string v0, "caption"

    aput-object v0, v4, p1

    sget p1, Lcom/noname81/lmt/R$id;->listitem_icondescription_text:I

    sget v0, Lcom/noname81/lmt/R$id;->listitem_icondescription_caption:I

    filled-new-array {p1, v0}, [I

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 243
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 245
    sget p3, Lcom/noname81/lmt/R$id;->listitem_icondescription_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    invoke-virtual {v0}, Lcom/noname81/lmt/MultiSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/noname81/lmt/IconUtils;->setMaxSizeForImageView(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 248
    new-instance v0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;

    sget v1, Lcom/noname81/lmt/R$drawable;->none:I

    invoke-direct {v0, p0, p3, v1, p1}, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;-><init>(Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;Landroid/widget/ImageView;II)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 264
    invoke-virtual {v0, p1}, Lcom/noname81/lmt/AsyncDrawableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p2
.end method
