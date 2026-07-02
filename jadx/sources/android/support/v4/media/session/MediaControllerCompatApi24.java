package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerCompatApi24 {

    public static class TransportControls {
        public static void prepare(Object obj) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).prepare();
        }

        public static void prepareFromMediaId(Object obj, String str, Bundle bundle) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).prepareFromMediaId(str, bundle);
        }

        public static void prepareFromSearch(Object obj, String str, Bundle bundle) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).prepareFromSearch(str, bundle);
        }

        public static void prepareFromUri(Object obj, Uri uri, Bundle bundle) {
            MediaSessionCompatApi21$$ExternalSyntheticApiModelOutline0.m129m(obj).prepareFromUri(uri, bundle);
        }

        private TransportControls() {
        }
    }

    private MediaControllerCompatApi24() {
    }
}
