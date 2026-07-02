.class Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;
.super Lcom/noname81/lmt/AsyncDrawableTask;
.source "MultiSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;Landroid/widget/ImageView;II)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iput p4, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->val$position:I

    invoke-direct {p0, p2, p3}, Lcom/noname81/lmt/AsyncDrawableTask;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 252
    sget p1, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 253
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    iget-object p1, p1, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iget-object v0, v0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    iget-object v0, v0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 255
    :cond_0
    sget p1, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 256
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    iget-object p1, p1, Lcom/noname81/lmt/MultiSelectActivity;->mShortcuts:Ljava/util/List;

    iget v0, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iget-object v0, v0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    iget-object v0, v0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iget-object p1, p1, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    iget-object p1, p1, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    iget v0, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->this$1:Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    iget-object v0, v0, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;->this$0:Lcom/noname81/lmt/MultiSelectActivity;

    iget-object v0, v0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
