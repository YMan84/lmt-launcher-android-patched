package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class PlaybackStateCompatApi21 {
    public static int getState(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getState();
    }

    public static long getPosition(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getPosition();
    }

    public static long getBufferedPosition(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getBufferedPosition();
    }

    public static float getPlaybackSpeed(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getPlaybackSpeed();
    }

    public static long getActions(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getActions();
    }

    public static CharSequence getErrorMessage(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getErrorMessage();
    }

    public static long getLastPositionUpdateTime(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getLastPositionUpdateTime();
    }

    public static List<Object> getCustomActions(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getCustomActions();
    }

    public static long getActiveQueueItemId(Object obj) {
        return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m136m(obj).getActiveQueueItemId();
    }

    public static Object newInstance(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, List<Object> list, long j5) {
        PlaybackState.Builder builder = new PlaybackState.Builder();
        builder.setState(i, j, f, j4);
        builder.setBufferedPosition(j2);
        builder.setActions(j3);
        builder.setErrorMessage(charSequence);
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            builder.addCustomAction(MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m134m(it.next()));
        }
        builder.setActiveQueueItemId(j5);
        return builder.build();
    }

    static final class CustomAction {
        public static String getAction(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m134m(obj).getAction();
        }

        public static CharSequence getName(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m134m(obj).getName();
        }

        public static int getIcon(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m134m(obj).getIcon();
        }

        public static Bundle getExtras(Object obj) {
            return MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m134m(obj).getExtras();
        }

        public static Object newInstance(String str, CharSequence charSequence, int i, Bundle bundle) {
            PlaybackState.CustomAction.Builder builder = new PlaybackState.CustomAction.Builder(str, charSequence, i);
            builder.setExtras(bundle);
            return builder.build();
        }

        private CustomAction() {
        }
    }

    private PlaybackStateCompatApi21() {
    }
}
