.class Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActions(Ljava/lang/Object;)J
    .locals 2

    .line 45
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getActiveQueueItemId(Ljava/lang/Object;)J
    .locals 2

    .line 61
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBufferedPosition(Ljava/lang/Object;)J
    .locals 2

    .line 37
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$4(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCustomActions(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getLastPositionUpdateTime(Ljava/lang/Object;)J
    .locals 2

    .line 53
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPlaybackSpeed(Ljava/lang/Object;)F
    .locals 0

    .line 41
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)F

    move-result p0

    return p0
.end method

.method public static getPosition(Ljava/lang/Object;)J
    .locals 2

    .line 33
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getState(Ljava/lang/Object;)I
    .locals 0

    .line 29
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)I

    move-result p0

    return p0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    move v4, p5

    move-wide/from16 v5, p9

    .line 69
    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-wide v0, p3

    .line 70
    invoke-static {v7, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-wide v0, p6

    .line 71
    invoke-static {v7, p6, p7}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v0, p8

    .line 72
    invoke-static {v7, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 73
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p12

    .line 76
    invoke-static {v7, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    .line 77
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method
