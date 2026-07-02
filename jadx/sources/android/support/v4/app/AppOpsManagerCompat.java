package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class AppOpsManagerCompat {
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_ERRORED = 2;
    public static final int MODE_IGNORED = 1;

    private AppOpsManagerCompat() {
    }

    public static String permissionToOp(String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return AppOpsManager.permissionToOp(str);
        }
        return null;
    }

    public static int noteOp(Context context, String str, int i, String str2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return NavUtils$$ExternalSyntheticApiModelOutline0.m(context.getSystemService("appops")).noteOp(str, i, str2);
        }
        return 1;
    }

    public static int noteOpNoThrow(Context context, String str, int i, String str2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return NavUtils$$ExternalSyntheticApiModelOutline0.m(context.getSystemService("appops")).noteOpNoThrow(str, i, str2);
        }
        return 1;
    }

    public static int noteProxyOp(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return NavUtils$$ExternalSyntheticApiModelOutline0.m(context.getSystemService(NavUtils$$ExternalSyntheticApiModelOutline0.m31m())).noteProxyOp(str, str2);
        }
        return 1;
    }

    public static int noteProxyOpNoThrow(Context context, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return NavUtils$$ExternalSyntheticApiModelOutline0.m(context.getSystemService(NavUtils$$ExternalSyntheticApiModelOutline0.m31m())).noteProxyOpNoThrow(str, str2);
        }
        return 1;
    }
}
