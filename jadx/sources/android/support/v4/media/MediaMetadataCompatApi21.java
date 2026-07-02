package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.os.Parcel;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class MediaMetadataCompatApi21 {
    public static Set<String> keySet(Object obj) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj).keySet();
    }

    public static Bitmap getBitmap(Object obj, String str) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj).getBitmap(str);
    }

    public static long getLong(Object obj, String str) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj).getLong(str);
    }

    public static Object getRating(Object obj, String str) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj).getRating(str);
    }

    public static CharSequence getText(Object obj, String str) {
        return RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj).getText(str);
    }

    public static void writeToParcel(Object obj, Parcel parcel, int i) {
        RatingCompat$$ExternalSyntheticApiModelOutline0.m87m(obj).writeToParcel(parcel, i);
    }

    public static Object createFromParcel(Parcel parcel) {
        return MediaMetadata.CREATOR.createFromParcel(parcel);
    }

    public static class Builder {
        public static Object newInstance() {
            return new MediaMetadata.Builder();
        }

        public static void putBitmap(Object obj, String str, Bitmap bitmap) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m86m(obj).putBitmap(str, bitmap);
        }

        public static void putLong(Object obj, String str, long j) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m86m(obj).putLong(str, j);
        }

        public static void putRating(Object obj, String str, Object obj2) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m86m(obj).putRating(str, RatingCompat$$ExternalSyntheticApiModelOutline0.m89m(obj2));
        }

        public static void putText(Object obj, String str, CharSequence charSequence) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m86m(obj).putText(str, charSequence);
        }

        public static void putString(Object obj, String str, String str2) {
            RatingCompat$$ExternalSyntheticApiModelOutline0.m86m(obj).putString(str, str2);
        }

        public static Object build(Object obj) {
            return RatingCompat$$ExternalSyntheticApiModelOutline0.m86m(obj).build();
        }

        private Builder() {
        }
    }

    private MediaMetadataCompatApi21() {
    }
}
