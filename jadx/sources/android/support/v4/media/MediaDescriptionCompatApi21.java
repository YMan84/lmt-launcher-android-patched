package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class MediaDescriptionCompatApi21 {
    public static String getMediaId(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getMediaId();
    }

    public static CharSequence getTitle(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getTitle();
    }

    public static CharSequence getSubtitle(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getSubtitle();
    }

    public static CharSequence getDescription(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getDescription();
    }

    public static Bitmap getIconBitmap(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getIconBitmap();
    }

    public static Uri getIconUri(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getIconUri();
    }

    public static Bundle getExtras(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).getExtras();
    }

    public static void writeToParcel(Object obj, Parcel parcel, int i) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m85m(obj).writeToParcel(parcel, i);
    }

    public static Object fromParcel(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }

    static class Builder {
        public static Object newInstance() {
            return new MediaDescription.Builder();
        }

        public static void setMediaId(Object obj, String str) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setMediaId(str);
        }

        public static void setTitle(Object obj, CharSequence charSequence) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setTitle(charSequence);
        }

        public static void setSubtitle(Object obj, CharSequence charSequence) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setSubtitle(charSequence);
        }

        public static void setDescription(Object obj, CharSequence charSequence) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setDescription(charSequence);
        }

        public static void setIconBitmap(Object obj, Bitmap bitmap) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setIconBitmap(bitmap);
        }

        public static void setIconUri(Object obj, Uri uri) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setIconUri(uri);
        }

        public static void setExtras(Object obj, Bundle bundle) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).setExtras(bundle);
        }

        public static Object build(Object obj) {
            return RatingCompat$$ExternalSyntheticApiModelOutline0.m(obj).build();
        }

        private Builder() {
        }
    }

    private MediaDescriptionCompatApi21() {
    }
}
