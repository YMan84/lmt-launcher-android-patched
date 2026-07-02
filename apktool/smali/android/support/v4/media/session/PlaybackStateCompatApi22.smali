.class Landroid/support/v4/media/session/PlaybackStateCompatApi22;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi22.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 29
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    move v4, p5

    move-wide/from16 v5, p9

    .line 37
    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-wide v0, p3

    .line 38
    invoke-static {v7, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-wide v0, p6

    .line 39
    invoke-static {v7, p6, p7}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v0, p8

    .line 40
    invoke-static {v7, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 41
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p12

    .line 44
    invoke-static {v7, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v0, p14

    .line 45
    invoke-static {v7, v0}, Landroid/support/v4/os/TraceCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;

    .line 46
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method
