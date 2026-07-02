package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.RatingCompat$$ExternalSyntheticApiModelOutline0;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerCompatApi21 {

    public interface Callback {
        void onAudioInfoChanged(int i, int i2, int i3, int i4, int i5);

        void onExtrasChanged(Bundle bundle);

        void onMetadataChanged(Object obj);

        void onPlaybackStateChanged(Object obj);

        void onQueueChanged(List<?> list);

        void onQueueTitleChanged(CharSequence charSequence);

        void onSessionDestroyed();

        void onSessionEvent(String str, Bundle bundle);
    }

    public static Object fromToken(Context context, Object obj) {
        return new MediaController(context, RatingCompat$$ExternalSyntheticApiModelOutline0.m99m(obj));
    }

    public static Object createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static void registerCallback(Object obj, Object obj2, Handler handler) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).registerCallback(MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m(obj2), handler);
    }

    public static void unregisterCallback(Object obj, Object obj2) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).unregisterCallback(MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m(obj2));
    }

    public static void setMediaController(Activity activity, Object obj) {
        activity.setMediaController(RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj));
    }

    public static Object getMediaController(Activity activity) {
        return activity.getMediaController();
    }

    public static Object getSessionToken(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getSessionToken();
    }

    public static Object getTransportControls(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getTransportControls();
    }

    public static Object getPlaybackState(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getPlaybackState();
    }

    public static Object getMetadata(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getMetadata();
    }

    public static List<Object> getQueue(Object obj) {
        List queue = RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getQueue();
        if (queue == null) {
            return null;
        }
        return new ArrayList(queue);
    }

    public static CharSequence getQueueTitle(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getQueueTitle();
    }

    public static Bundle getExtras(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getExtras();
    }

    public static int getRatingType(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getRatingType();
    }

    public static long getFlags(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getFlags();
    }

    public static Object getPlaybackInfo(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getPlaybackInfo();
    }

    public static PendingIntent getSessionActivity(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getSessionActivity();
    }

    public static boolean dispatchMediaButtonEvent(Object obj, KeyEvent keyEvent) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).dispatchMediaButtonEvent(keyEvent);
    }

    public static void setVolumeTo(Object obj, int i, int i2) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).setVolumeTo(i, i2);
    }

    public static void adjustVolume(Object obj, int i, int i2) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).adjustVolume(i, i2);
    }

    public static void sendCommand(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).sendCommand(str, bundle, resultReceiver);
    }

    public static String getPackageName(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m96m(obj).getPackageName();
    }

    public static class TransportControls {
        public static void play(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).play();
        }

        public static void pause(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).pause();
        }

        public static void stop(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).stop();
        }

        public static void seekTo(Object obj, long j) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).seekTo(j);
        }

        public static void fastForward(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).fastForward();
        }

        public static void rewind(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).rewind();
        }

        public static void skipToNext(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).skipToNext();
        }

        public static void skipToPrevious(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).skipToPrevious();
        }

        public static void setRating(Object obj, Object obj2) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).setRating(RatingCompat$$ExternalSyntheticApiModelOutline0.m89m(obj2));
        }

        public static void playFromMediaId(Object obj, String str, Bundle bundle) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).playFromMediaId(str, bundle);
        }

        public static void playFromSearch(Object obj, String str, Bundle bundle) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).playFromSearch(str, bundle);
        }

        public static void skipToQueueItem(Object obj, long j) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).skipToQueueItem(j);
        }

        public static void sendCustomAction(Object obj, String str, Bundle bundle) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).sendCustomAction(str, bundle);
        }

        private TransportControls() {
        }
    }

    public static class PlaybackInfo {
        private static final int FLAG_SCO = 4;
        private static final int STREAM_BLUETOOTH_SCO = 6;
        private static final int STREAM_SYSTEM_ENFORCED = 7;

        public static int getPlaybackType(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m127m(obj).getPlaybackType();
        }

        public static AudioAttributes getAudioAttributes(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m127m(obj).getAudioAttributes();
        }

        public static int getLegacyAudioStream(Object obj) {
            return toLegacyStreamType(getAudioAttributes(obj));
        }

        public static int getVolumeControl(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m127m(obj).getVolumeControl();
        }

        public static int getMaxVolume(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m127m(obj).getMaxVolume();
        }

        public static int getCurrentVolume(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m127m(obj).getCurrentVolume();
        }

        private static int toLegacyStreamType(AudioAttributes audioAttributes) {
            if ((audioAttributes.getFlags() & 1) == 1) {
                return 7;
            }
            if ((audioAttributes.getFlags() & 4) == 4) {
                return 6;
            }
            int usage = audioAttributes.getUsage();
            if (usage == 13) {
                return 1;
            }
            switch (usage) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }

        private PlaybackInfo() {
        }
    }

    static class CallbackProxy<T extends Callback> extends MediaController.Callback {
        protected final T mCallback;

        public CallbackProxy(T t) {
            this.mCallback = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.mCallback.onSessionDestroyed();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.mCallback.onSessionEvent(str, bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.mCallback.onPlaybackStateChanged(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.mCallback.onMetadataChanged(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.mCallback.onQueueChanged(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.mCallback.onQueueTitleChanged(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            this.mCallback.onExtrasChanged(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.mCallback.onAudioInfoChanged(playbackInfo.getPlaybackType(), PlaybackInfo.getLegacyAudioStream(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }
    }

    private MediaControllerCompatApi21() {
    }
}
