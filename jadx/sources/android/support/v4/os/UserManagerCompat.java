package android.support.v4.os;

import android.content.Context;
import android.os.Build;
import android.support.v4.app.Person$$ExternalSyntheticApiModelOutline0;

/* JADX INFO: loaded from: classes.dex */
public class UserManagerCompat {
    private UserManagerCompat() {
    }

    public static boolean isUserUnlocked(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return TraceCompat$$ExternalSyntheticApiModelOutline0.m150m(context.getSystemService(Person$$ExternalSyntheticApiModelOutline0.m$7())).isUserUnlocked();
        }
        return true;
    }
}
