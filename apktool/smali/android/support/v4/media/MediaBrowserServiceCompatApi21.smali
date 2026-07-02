.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 1

    .line 38
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V

    return-object v0
.end method

.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V

    return-void
.end method

.method public static onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 46
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static onCreate(Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService;)V

    return-void
.end method

.method public static setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-static {p0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;

    move-result-object p0

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method
