.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastForward(Ljava/lang/Object;)V
    .locals 0

    .line 155
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$4(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method

.method public static pause(Ljava/lang/Object;)V
    .locals 0

    .line 143
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$5(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method

.method public static play(Ljava/lang/Object;)V
    .locals 0

    .line 139
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$6(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method

.method public static playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 175
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaController$TransportControls;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 179
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/MediaController$TransportControls;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static rewind(Ljava/lang/Object;)V
    .locals 0

    .line 159
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method

.method public static seekTo(Ljava/lang/Object;J)V
    .locals 0

    .line 151
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/MediaController$TransportControls;J)V

    return-void
.end method

.method public static sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 187
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/session/MediaController$TransportControls;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setRating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 171
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/Rating;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaController$TransportControls;Landroid/media/Rating;)V

    return-void
.end method

.method public static skipToNext(Ljava/lang/Object;)V
    .locals 0

    .line 163
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method

.method public static skipToPrevious(Ljava/lang/Object;)V
    .locals 0

    .line 167
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method

.method public static skipToQueueItem(Ljava/lang/Object;J)V
    .locals 0

    .line 183
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaController$TransportControls;J)V

    return-void
.end method

.method public static stop(Ljava/lang/Object;)V
    .locals 0

    .line 147
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/MediaController$TransportControls;)V

    return-void
.end method
