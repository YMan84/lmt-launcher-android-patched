package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompatApi21 {
    static final String NULL_MEDIA_ITEM_ID = "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM";

    interface ConnectionCallback {
        void onConnected();

        void onConnectionFailed();

        void onConnectionSuspended();
    }

    interface SubscriptionCallback {
        void onChildrenLoaded(String str, List<?> list);

        void onError(String str);
    }

    public static Object createConnectionCallback(ConnectionCallback connectionCallback) {
        return new ConnectionCallbackProxy(connectionCallback);
    }

    public static Object createBrowser(Context context, ComponentName componentName, Object obj, Bundle bundle) {
        return new MediaBrowser(context, componentName, RatingCompat$$ExternalSyntheticApiModelOutline0.m91m(obj), bundle);
    }

    public static void connect(Object obj) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).connect();
    }

    public static void disconnect(Object obj) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).disconnect();
    }

    public static boolean isConnected(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).isConnected();
    }

    public static ComponentName getServiceComponent(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).getServiceComponent();
    }

    public static String getRoot(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).getRoot();
    }

    public static Bundle getExtras(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).getExtras();
    }

    public static Object getSessionToken(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).getSessionToken();
    }

    public static Object createSubscriptionCallback(SubscriptionCallback subscriptionCallback) {
        return new SubscriptionCallbackProxy(subscriptionCallback);
    }

    public static void subscribe(Object obj, String str, Object obj2) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).subscribe(str, RatingCompat$$ExternalSyntheticApiModelOutline0.m94m(obj2));
    }

    public static void unsubscribe(Object obj, String str) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m95m(obj).unsubscribe(str);
    }

    static class ConnectionCallbackProxy<T extends ConnectionCallback> extends MediaBrowser.ConnectionCallback {
        protected final T mConnectionCallback;

        public ConnectionCallbackProxy(T t) {
            this.mConnectionCallback = t;
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnected() {
            this.mConnectionCallback.onConnected();
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionSuspended() {
            this.mConnectionCallback.onConnectionSuspended();
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionFailed() {
            this.mConnectionCallback.onConnectionFailed();
        }
    }

    static class SubscriptionCallbackProxy<T extends SubscriptionCallback> extends MediaBrowser.SubscriptionCallback {
        protected final T mSubscriptionCallback;

        public SubscriptionCallbackProxy(T t) {
            this.mSubscriptionCallback = t;
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
            this.mSubscriptionCallback.onChildrenLoaded(str, list);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onError(String str) {
            this.mSubscriptionCallback.onError(str);
        }
    }

    static class MediaItem {
        public static int getFlags(Object obj) {
            return RatingCompat$$ExternalSyntheticApiModelOutline0.m93m(obj).getFlags();
        }

        public static Object getDescription(Object obj) {
            return RatingCompat$$ExternalSyntheticApiModelOutline0.m93m(obj).getDescription();
        }

        private MediaItem() {
        }
    }

    private MediaBrowserCompatApi21() {
    }
}
