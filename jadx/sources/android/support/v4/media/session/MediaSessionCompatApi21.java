package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.Rating;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.RatingCompat$$ExternalSyntheticApiModelOutline0;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompatApi21 {
    static final String TAG = "MediaSessionCompatApi21";

    interface Callback {
        void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver);

        void onCustomAction(String str, Bundle bundle);

        void onFastForward();

        boolean onMediaButtonEvent(Intent intent);

        void onPause();

        void onPlay();

        void onPlayFromMediaId(String str, Bundle bundle);

        void onPlayFromSearch(String str, Bundle bundle);

        void onRewind();

        void onSeekTo(long j);

        void onSetRating(Object obj);

        void onSetRating(Object obj, Bundle bundle);

        void onSkipToNext();

        void onSkipToPrevious();

        void onSkipToQueueItem(long j);

        void onStop();
    }

    public static Object createSession(Context context, String str) {
        return new MediaSession(context, str);
    }

    public static Object verifySession(Object obj) {
        if (MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m$2(obj)) {
            return obj;
        }
        throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
    }

    public static Object verifyToken(Object obj) {
        if (MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m$1(obj)) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }

    public static Object createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static void setCallback(Object obj, Object obj2, Handler handler) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setCallback(MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m130m(obj2), handler);
    }

    public static void setFlags(Object obj, int i) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setFlags(i);
    }

    public static void setPlaybackToLocal(Object obj, int i) {
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        builder.setLegacyStreamType(i);
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setPlaybackToLocal(builder.build());
    }

    public static void setPlaybackToRemote(Object obj, Object obj2) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setPlaybackToRemote(RatingCompat$$ExternalSyntheticApiModelOutline0.m90m(obj2));
    }

    public static void setActive(Object obj, boolean z) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setActive(z);
    }

    public static boolean isActive(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).isActive();
    }

    public static void sendSessionEvent(Object obj, String str, Bundle bundle) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).sendSessionEvent(str, bundle);
    }

    public static void release(Object obj) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).release();
    }

    public static Parcelable getSessionToken(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).getSessionToken();
    }

    public static void setPlaybackState(Object obj, Object obj2) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setPlaybackState(MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj2));
    }

    public static void setMetadata(Object obj, Object obj2) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setMetadata(RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj2));
    }

    public static void setSessionActivity(Object obj, PendingIntent pendingIntent) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setSessionActivity(pendingIntent);
    }

    public static void setMediaButtonReceiver(Object obj, PendingIntent pendingIntent) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setMediaButtonReceiver(pendingIntent);
    }

    public static void setQueue(Object obj, List<Object> list) {
        if (list == null) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setQueue(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m131m(it.next()));
        }
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setQueue(arrayList);
    }

    public static void setQueueTitle(Object obj, CharSequence charSequence) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setQueueTitle(charSequence);
    }

    public static void setExtras(Object obj, Bundle bundle) {
        MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m132m(obj).setExtras(bundle);
    }

    public static boolean hasCallback(Object obj) {
        try {
            Field declaredField = obj.getClass().getDeclaredField("mCallback");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                return declaredField.get(obj) != null;
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            Log.w(TAG, "Failed to get mCallback object.");
        }
        return false;
    }

    static class CallbackProxy<T extends Callback> extends MediaSession.Callback {
        protected final T mCallback;

        public CallbackProxy(T t) {
            this.mCallback = t;
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.mCallback.onCommand(str, bundle, resultReceiver);
        }

        @Override // android.media.session.MediaSession.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return this.mCallback.onMediaButtonEvent(intent) || super.onMediaButtonEvent(intent);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            this.mCallback.onPlay();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.mCallback.onPlayFromMediaId(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.mCallback.onPlayFromSearch(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToQueueItem(long j) {
            this.mCallback.onSkipToQueueItem(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            this.mCallback.onPause();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            this.mCallback.onSkipToNext();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            this.mCallback.onSkipToPrevious();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            this.mCallback.onFastForward();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            this.mCallback.onRewind();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            this.mCallback.onStop();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSeekTo(long j) {
            this.mCallback.onSeekTo(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSetRating(Rating rating) {
            this.mCallback.onSetRating(rating);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCustomAction(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.mCallback.onCustomAction(str, bundle);
        }
    }

    static class QueueItem {
        public static Object createItem(Object obj, long j) {
            return new MediaSession.QueueItem(RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj), j);
        }

        public static Object getDescription(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m131m(obj).getDescription();
        }

        public static long getQueueId(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m131m(obj).getQueueId();
        }

        private QueueItem() {
        }
    }

    private MediaSessionCompatApi21() {
    }
}
