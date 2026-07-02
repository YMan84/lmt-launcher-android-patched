.class Landroid/support/transition/ViewOverlayApi18;
.super Ljava/lang/Object;
.source "ViewOverlayApi18.java"

# interfaces
.implements Landroid/support/transition/ViewOverlayImpl;


# instance fields
.field private final mViewOverlay:Landroid/view/ViewOverlay;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-static {v0, p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/ViewOverlay;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-static {v0}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewOverlay;)V

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-static {v0, p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewOverlay;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
