.class Landroid/support/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowId;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 35
    instance-of v0, p1, Landroid/support/transition/WindowIdApi18;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/transition/WindowIdApi18;

    iget-object p1, p1, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    iget-object v0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-static {p1, v0}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowId;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-static {v0}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowId;)I

    move-result v0

    return v0
.end method
