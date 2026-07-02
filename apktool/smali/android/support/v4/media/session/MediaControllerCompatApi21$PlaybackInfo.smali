.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 0

    .line 200
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaController$PlaybackInfo;)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .locals 0

    .line 217
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/session/MediaController$PlaybackInfo;)I

    move-result p0

    return p0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 0

    .line 204
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object p0

    .line 205
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .locals 0

    .line 213
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/session/MediaController$PlaybackInfo;)I

    move-result p0

    return p0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 0

    .line 196
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaController$PlaybackInfo;)I

    move-result p0

    return p0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .locals 0

    .line 209
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/MediaController$PlaybackInfo;)I

    move-result p0

    return p0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 3

    .line 228
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x7

    return p0

    .line 232
    :cond_0
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 p0, 0x6

    return p0

    .line 237
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/PathUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes;)I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x3

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
