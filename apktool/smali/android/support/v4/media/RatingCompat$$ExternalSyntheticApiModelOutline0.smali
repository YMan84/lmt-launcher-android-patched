.class public final synthetic Landroid/support/v4/media/RatingCompat$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/media/Rating;)F
    .locals 0

    invoke-virtual {p0}, Landroid/media/Rating;->getPercentRating()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/Rating;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/Rating;->getRatingStyle()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser$MediaItem;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaController;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getRatingType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata;Ljava/lang/String;)J
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic m(Landroid/app/Notification$MediaStyle;Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/Notification$MediaStyle;[I)Landroid/app/Notification$MediaStyle;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription$Builder;Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription$Builder;Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaDescription$Builder;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription$Builder;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser$MediaItem;)Landroid/media/MediaDescription;
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaDescription;
    .locals 0

    check-cast p0, Landroid/media/MediaDescription;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaMetadata$Builder;
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata$Builder;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata$Builder;)Landroid/media/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaMetadata;
    .locals 0

    check-cast p0, Landroid/media/MediaMetadata;

    return-object p0
.end method

.method public static bridge synthetic m(F)Landroid/media/Rating;
    .locals 0

    invoke-static {p0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(I)Landroid/media/Rating;
    .locals 0

    invoke-static {p0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(IF)Landroid/media/Rating;
    .locals 0

    invoke-static {p0, p1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata;Ljava/lang/String;)Landroid/media/Rating;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/Rating;
    .locals 0

    check-cast p0, Landroid/media/Rating;

    return-object p0
.end method

.method public static bridge synthetic m(Z)Landroid/media/Rating;
    .locals 0

    invoke-static {p0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/VolumeProvider;
    .locals 0

    check-cast p0, Landroid/media/VolumeProvider;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser$ItemCallback;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser$ItemCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser$MediaItem;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/browse/MediaBrowser;
    .locals 0

    check-cast p0, Landroid/media/browse/MediaBrowser;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/session/MediaController;
    .locals 0

    check-cast p0, Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;)Landroid/media/session/MediaSession$Token;
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaController;)Landroid/media/session/MediaSession$Token;
    .locals 0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/session/MediaSession$Token;
    .locals 0

    check-cast p0, Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getCurrentBrowserInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;
    .locals 0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaController;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/os/Parcelable$Creator;
    .locals 1

    sget-object v0, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/service/media/MediaBrowserService;
    .locals 0

    check-cast p0, Landroid/service/media/MediaBrowserService;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaDescription;Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaMetadata;Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/VolumeProvider;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser$MediaItem;Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService$Result;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;)V
    .locals 0

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/lang/ReflectiveOperationException;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/Rating;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/browse/MediaBrowser;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/Rating;)F
    .locals 0

    invoke-virtual {p0}, Landroid/media/Rating;->getStarRating()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioAttributes;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Z)Landroid/media/Rating;
    .locals 0

    invoke-static {p0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaDescription;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1()Landroid/os/Parcelable$Creator;
    .locals 1

    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/service/media/MediaBrowserService$Result;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/media/browse/MediaBrowser;Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/media/Rating;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$2()Landroid/os/Parcelable$Creator;
    .locals 1

    sget-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static bridge synthetic m$2(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$2(Landroid/media/Rating;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/Rating;->isThumbUp()Z

    move-result p0

    return p0
.end method
