package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.support.v7.graphics.drawable.DrawableWrapper;

/* JADX INFO: loaded from: classes.dex */
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable r11) {
        /*
            java.lang.Class<?> r0 = android.support.v7.widget.DrawableUtils.sInsetsClazz
            if (r0 == 0) goto L95
            android.graphics.drawable.Drawable r11 = android.support.v4.graphics.drawable.DrawableCompat.unwrap(r11)     // Catch: java.lang.Exception -> L8e
            java.lang.Class r0 = r11.getClass()     // Catch: java.lang.Exception -> L8e
            java.lang.String r1 = "getOpticalInsets"
            r2 = 0
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L8e
            java.lang.reflect.Method r0 = r0.getMethod(r1, r3)     // Catch: java.lang.Exception -> L8e
            java.lang.Object[] r1 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L8e
            java.lang.Object r11 = r0.invoke(r11, r1)     // Catch: java.lang.Exception -> L8e
            if (r11 == 0) goto L95
            android.graphics.Rect r0 = new android.graphics.Rect     // Catch: java.lang.Exception -> L8e
            r0.<init>()     // Catch: java.lang.Exception -> L8e
            java.lang.Class<?> r1 = android.support.v7.widget.DrawableUtils.sInsetsClazz     // Catch: java.lang.Exception -> L8e
            java.lang.reflect.Field[] r1 = r1.getFields()     // Catch: java.lang.Exception -> L8e
            int r3 = r1.length     // Catch: java.lang.Exception -> L8e
            r4 = 0
        L2a:
            if (r4 >= r3) goto L8d
            r5 = r1[r4]     // Catch: java.lang.Exception -> L8e
            java.lang.String r6 = r5.getName()     // Catch: java.lang.Exception -> L8e
            int r7 = r6.hashCode()     // Catch: java.lang.Exception -> L8e
            r8 = 3
            r9 = 2
            r10 = 1
            switch(r7) {
                case -1383228885: goto L5b;
                case 115029: goto L51;
                case 3317767: goto L47;
                case 108511772: goto L3d;
                default: goto L3c;
            }     // Catch: java.lang.Exception -> L8e
        L3c:
            goto L65
        L3d:
            java.lang.String r7 = "right"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> L8e
            if (r6 == 0) goto L65
            r6 = 2
            goto L66
        L47:
            java.lang.String r7 = "left"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> L8e
            if (r6 == 0) goto L65
            r6 = 0
            goto L66
        L51:
            java.lang.String r7 = "top"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> L8e
            if (r6 == 0) goto L65
            r6 = 1
            goto L66
        L5b:
            java.lang.String r7 = "bottom"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> L8e
            if (r6 == 0) goto L65
            r6 = 3
            goto L66
        L65:
            r6 = -1
        L66:
            if (r6 == 0) goto L84
            if (r6 == r10) goto L7d
            if (r6 == r9) goto L76
            if (r6 == r8) goto L6f
            goto L8a
        L6f:
            int r5 = r5.getInt(r11)     // Catch: java.lang.Exception -> L8e
            r0.bottom = r5     // Catch: java.lang.Exception -> L8e
            goto L8a
        L76:
            int r5 = r5.getInt(r11)     // Catch: java.lang.Exception -> L8e
            r0.right = r5     // Catch: java.lang.Exception -> L8e
            goto L8a
        L7d:
            int r5 = r5.getInt(r11)     // Catch: java.lang.Exception -> L8e
            r0.top = r5     // Catch: java.lang.Exception -> L8e
            goto L8a
        L84:
            int r5 = r5.getInt(r11)     // Catch: java.lang.Exception -> L8e
            r0.left = r5     // Catch: java.lang.Exception -> L8e
        L8a:
            int r4 = r4 + 1
            goto L2a
        L8d:
            return r0
        L8e:
            java.lang.String r11 = "DrawableUtils"
            java.lang.String r0 = "Couldn't obtain the optical insets. Ignoring."
            android.util.Log.e(r11, r0)
        L95:
            android.graphics.Rect r11 = android.support.v7.widget.DrawableUtils.INSETS_NONE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.DrawableUtils.getOpticalBounds(android.graphics.drawable.Drawable):android.graphics.Rect");
    }

    static void fixDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean canSafelyMutateDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!canSafelyMutateDrawable(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        if (drawable instanceof WrappedDrawable) {
            return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
        }
        if (drawable instanceof DrawableWrapper) {
            return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
        }
        if (drawable instanceof ScaleDrawable) {
            return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
