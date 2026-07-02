.class Lcom/noname81/lmt/PieItem;
.super Ljava/lang/Object;
.source "PieItem.java"


# instance fields
.field private animate:F

.field private inner:I

.field private level:I

.field private mColor:I

.field private mDrawableLong:Landroid/graphics/drawable/Drawable;

.field private mDrawableShort:Landroid/graphics/drawable/Drawable;

.field private mPath:Landroid/graphics/Path;

.field private mSelected:Z

.field private mView:Landroid/view/View;

.field private outer:I

.field private start:F

.field private sweep:F


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/noname81/lmt/PieItem;->mColor:I

    .line 42
    iput-object p1, p0, Lcom/noname81/lmt/PieItem;->mView:Landroid/view/View;

    .line 43
    iput p2, p0, Lcom/noname81/lmt/PieItem;->level:I

    return-void
.end method


# virtual methods
.method getAnimationAngle()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/noname81/lmt/PieItem;->animate:F

    return v0
.end method

.method getInnerRadius()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/noname81/lmt/PieItem;->inner:I

    return v0
.end method

.method getLevel()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/noname81/lmt/PieItem;->level:I

    return v0
.end method

.method getOuterRadius()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/noname81/lmt/PieItem;->outer:I

    return v0
.end method

.method getPath()Landroid/graphics/Path;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method getStart()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/noname81/lmt/PieItem;->start:F

    return v0
.end method

.method getStartAngle()F
    .locals 2

    .line 97
    iget v0, p0, Lcom/noname81/lmt/PieItem;->start:F

    iget v1, p0, Lcom/noname81/lmt/PieItem;->animate:F

    add-float/2addr v0, v1

    return v0
.end method

.method getSweep()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/noname81/lmt/PieItem;->sweep:F

    return v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method isSelected()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/noname81/lmt/PieItem;->mSelected:Z

    return v0
.end method

.method selectImage(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/noname81/lmt/PieItem;->mDrawableShort:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieItem;->mDrawableLong:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setAlpha(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableShort:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableLong:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method setAnimationAngle(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/noname81/lmt/PieItem;->animate:F

    return-void
.end method

.method setColor(I)V
    .locals 3

    .line 48
    iget v0, p0, Lcom/noname81/lmt/PieItem;->mColor:I

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableShort:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableShort:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableLong:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableLong:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableShort:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mDrawableLong:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 57
    :cond_3
    :goto_0
    iput p1, p0, Lcom/noname81/lmt/PieItem;->mColor:I

    :cond_4
    return-void
.end method

.method setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/noname81/lmt/PieItem;->mDrawableShort:Landroid/graphics/drawable/Drawable;

    .line 122
    iput-object p2, p0, Lcom/noname81/lmt/PieItem;->mDrawableLong:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setGeometry(FFIILandroid/graphics/Path;)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/noname81/lmt/PieItem;->start:F

    .line 86
    iput p2, p0, Lcom/noname81/lmt/PieItem;->sweep:F

    .line 87
    iput p3, p0, Lcom/noname81/lmt/PieItem;->inner:I

    .line 88
    iput p4, p0, Lcom/noname81/lmt/PieItem;->outer:I

    .line 89
    iput-object p5, p0, Lcom/noname81/lmt/PieItem;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method setSelected(Z)V
    .locals 1

    .line 62
    iput-boolean p1, p0, Lcom/noname81/lmt/PieItem;->mSelected:Z

    .line 63
    iget-object v0, p0, Lcom/noname81/lmt/PieItem;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method
