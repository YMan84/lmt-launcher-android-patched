package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.Person$$ExternalSyntheticApiModelOutline0;
import android.support.v4.os.CancellationSignal;
import android.support.v4.os.OperationCanceledException;

/* JADX INFO: loaded from: classes.dex */
public final class ContentResolverCompat {
    private ContentResolverCompat() {
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) throws Exception {
        Object cancellationSignalObject;
        if (Build.VERSION.SDK_INT >= 16) {
            if (cancellationSignal != null) {
                try {
                    cancellationSignalObject = cancellationSignal.getCancellationSignalObject();
                } catch (Exception e) {
                    if (Person$$ExternalSyntheticApiModelOutline0.m56m((Object) e)) {
                        throw new OperationCanceledException();
                    }
                    throw e;
                }
            } else {
                cancellationSignalObject = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, Person$$ExternalSyntheticApiModelOutline0.m49m((Object) Person$$ExternalSyntheticApiModelOutline0.m49m(cancellationSignalObject)));
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        return contentResolver.query(uri, strArr, str, strArr2, str2);
    }
}
