.class Landroid/support/v4/media/MediaDescriptionCompatApi21;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-static {}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 54
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getIconBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getIconUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    .line 50
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubtitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 34
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaDescription;Landroid/os/Parcel;I)V

    return-void
.end method
