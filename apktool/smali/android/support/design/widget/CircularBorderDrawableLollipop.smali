.class public Landroid/support/design/widget/CircularBorderDrawableLollipop;
.super Landroid/support/design/widget/CircularBorderDrawable;
.source "CircularBorderDrawableLollipop.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 32
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->copyBounds(Landroid/graphics/Rect;)V

    .line 33
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->rect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Outline;Landroid/graphics/Rect;)V

    return-void
.end method
