.class final Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CustomAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 93
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$CustomAction;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getIcon(Ljava/lang/Object;)I
    .locals 0

    .line 90
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$CustomAction;)I

    move-result p0

    return p0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 86
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .line 98
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    invoke-static {v0, p3}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$CustomAction$Builder;Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    .line 101
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState$CustomAction$Builder;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p0

    return-object p0
.end method
