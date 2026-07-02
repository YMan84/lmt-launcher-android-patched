.class Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "CommandSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/CommandSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandSelectSimpleAdapter"
.end annotation


# instance fields
.field private final mOffset:I

.field final synthetic this$0:Lcom/noname81/lmt/CommandSelectActivity;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/CommandSelectActivity;Landroid/content/Context;Ljava/util/List;I)V
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

    .line 173
    iput-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    .line 174
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

    .line 177
    iput p4, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->mOffset:I

    return-void
.end method

.method static synthetic access$100(Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;)I
    .locals 0

    .line 170
    iget p0, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->mOffset:I

    return p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    sget p3, Lcom/noname81/lmt/R$id;->listitem_icondescriptionicon_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 183
    sget v0, Lcom/noname81/lmt/R$id;->listitem_icondescriptionicon_icon2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    iget-object v1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {v1}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/noname81/lmt/IconUtils;->setMaxSizeForImageView(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 187
    new-instance v1, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;

    sget v2, Lcom/noname81/lmt/R$drawable;->none:I

    invoke-direct {v1, p0, p3, v2, p1}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;-><init>(Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;Landroid/widget/ImageView;II)V

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    .line 193
    invoke-virtual {v1, p3}, Lcom/noname81/lmt/AsyncDrawableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    iget p3, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->mOffset:I

    add-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    iget-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {p1}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->getCurrentAction()Lcom/noname81/lmt/Action;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getType()I

    move-result p1

    if-ne p3, p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {p1}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/IconUtils;->getIconForOK(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 200
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p2
.end method
