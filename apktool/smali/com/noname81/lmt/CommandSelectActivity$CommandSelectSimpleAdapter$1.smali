.class Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;
.super Lcom/noname81/lmt/AsyncDrawableTask;
.source "CommandSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;Landroid/widget/ImageView;II)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;->this$1:Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    iput p4, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;->val$position:I

    invoke-direct {p0, p2, p3}, Lcom/noname81/lmt/AsyncDrawableTask;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 190
    iget-object p1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;->this$1:Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->this$0:Lcom/noname81/lmt/CommandSelectActivity;

    invoke-virtual {p1}, Lcom/noname81/lmt/CommandSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/noname81/lmt/Action;

    iget-object v1, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;->this$1:Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;

    invoke-static {v1}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;->access$100(Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter;)I

    move-result v1

    iget v2, p0, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;->val$position:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/noname81/lmt/Action;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/noname81/lmt/IconUtils;->getIconForAction(Landroid/content/Context;Lcom/noname81/lmt/Action;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/CommandSelectActivity$CommandSelectSimpleAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
