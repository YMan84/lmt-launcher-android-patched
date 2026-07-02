.class Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas$1;
.super Lcom/noname81/lmt/AsyncDrawableTask;
.source "IsasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;Landroid/widget/ImageView;I)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas$1;->this$1:Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;

    invoke-direct {p0, p2, p3}, Lcom/noname81/lmt/AsyncDrawableTask;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas$1;->this$1:Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;

    iget-object p1, p1, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;->this$0:Lcom/noname81/lmt/IsasFragment;

    invoke-virtual {p1}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/IconUtils;->getIconForISA(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
