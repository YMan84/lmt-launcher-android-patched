.class abstract Lcom/noname81/lmt/PieControlBase;
.super Ljava/lang/Object;
.source "PieControlBase.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mItemSize:I

.field mPie:Lcom/noname81/lmt/PieMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/noname81/lmt/PieControlBase;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/noname81/lmt/R$dimen;->qc_item_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/noname81/lmt/PieControlBase;->mItemSize:I

    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/noname81/lmt/PieControlBase;->mPie:Lcom/noname81/lmt/PieMenu;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/noname81/lmt/PieMenu;

    iget-object v1, p0, Lcom/noname81/lmt/PieControlBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/noname81/lmt/PieMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/noname81/lmt/PieControlBase;->mPie:Lcom/noname81/lmt/PieMenu;

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    iget-object v1, p0, Lcom/noname81/lmt/PieControlBase;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v1, v0}, Lcom/noname81/lmt/PieMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0}, Lcom/noname81/lmt/PieControlBase;->populateMenu()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieControlBase;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;
    .locals 3

    .line 76
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/noname81/lmt/PieControlBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 85
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget v1, p0, Lcom/noname81/lmt/PieControlBase;->mItemSize:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 87
    iget v1, p0, Lcom/noname81/lmt/PieControlBase;->mItemSize:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 88
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/noname81/lmt/PieControlBase;->mItemSize:I

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Lcom/noname81/lmt/PieItem;

    invoke-direct {v1, v0, p3}, Lcom/noname81/lmt/PieItem;-><init>(Landroid/view/View;I)V

    .line 93
    invoke-virtual {v1, p1, p2}, Lcom/noname81/lmt/PieItem;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method protected abstract populateMenu()V
.end method

.method removeFromContainer(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/noname81/lmt/PieControlBase;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method varargs setClickListener(Landroid/view/View$OnClickListener;[Lcom/noname81/lmt/PieItem;)V
    .locals 3

    .line 58
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 59
    invoke-virtual {v2}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method varargs setKeyListener(Landroid/view/View$OnKeyListener;[Lcom/noname81/lmt/PieItem;)V
    .locals 3

    .line 70
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 71
    invoke-virtual {v2}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method varargs setLongClickListener(Landroid/view/View$OnLongClickListener;[Lcom/noname81/lmt/PieItem;)V
    .locals 3

    .line 64
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 65
    invoke-virtual {v2}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
