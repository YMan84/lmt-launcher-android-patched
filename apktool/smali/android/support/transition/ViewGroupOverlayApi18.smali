.class Landroid/support/transition/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"

# interfaces
.implements Landroid/support/transition/ViewGroupOverlayImpl;


# instance fields
.field private final mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;)Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0, p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0, p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroupOverlay;)V

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0, p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0, p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    return-void
.end method
