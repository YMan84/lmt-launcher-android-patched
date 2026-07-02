.class Landroid/support/v4/media/MediaDescriptionCompatApi23;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    .line 26
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
