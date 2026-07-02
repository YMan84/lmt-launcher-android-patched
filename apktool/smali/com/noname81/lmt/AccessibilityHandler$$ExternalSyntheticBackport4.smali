.class public final synthetic Lcom/noname81/lmt/AccessibilityHandler$$ExternalSyntheticBackport4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Lcom/noname81/lmt/PieContainer$PieLayout;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/PieContainer$PieLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
