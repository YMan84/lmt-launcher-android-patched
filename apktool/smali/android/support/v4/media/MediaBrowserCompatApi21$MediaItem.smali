.class Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaItem"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/browse/MediaBrowser$MediaItem;)Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static getFlags(Ljava/lang/Object;)I
    .locals 0

    .line 145
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/browse/MediaBrowser$MediaItem;)I

    move-result p0

    return p0
.end method
