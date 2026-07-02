package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class WindowInsetsCompat {
    private final Object mInsets;

    private WindowInsetsCompat(Object obj) {
        this.mInsets = obj;
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (Build.VERSION.SDK_INT >= 20) {
            this.mInsets = windowInsetsCompat != null ? new WindowInsets(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(windowInsetsCompat.mInsets)) : null;
        } else {
            this.mInsets = null;
        }
    }

    public int getSystemWindowInsetLeft() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getSystemWindowInsetLeft();
        }
        return 0;
    }

    public int getSystemWindowInsetTop() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getSystemWindowInsetTop();
        }
        return 0;
    }

    public int getSystemWindowInsetRight() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getSystemWindowInsetRight();
        }
        return 0;
    }

    public int getSystemWindowInsetBottom() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getSystemWindowInsetBottom();
        }
        return 0;
    }

    public boolean hasSystemWindowInsets() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).hasSystemWindowInsets();
        }
        return false;
    }

    public boolean hasInsets() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).hasInsets();
        }
        return false;
    }

    public boolean isConsumed() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).isConsumed();
        }
        return false;
    }

    public boolean isRound() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).isRound();
        }
        return false;
    }

    public WindowInsetsCompat consumeSystemWindowInsets() {
        if (Build.VERSION.SDK_INT >= 20) {
            return new WindowInsetsCompat(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).consumeSystemWindowInsets());
        }
        return null;
    }

    public WindowInsetsCompat replaceSystemWindowInsets(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new WindowInsetsCompat(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).replaceSystemWindowInsets(i, i2, i3, i4));
        }
        return null;
    }

    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new WindowInsetsCompat(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).replaceSystemWindowInsets(rect));
        }
        return null;
    }

    public int getStableInsetTop() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getStableInsetTop();
        }
        return 0;
    }

    public int getStableInsetLeft() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getStableInsetLeft();
        }
        return 0;
    }

    public int getStableInsetRight() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getStableInsetRight();
        }
        return 0;
    }

    public int getStableInsetBottom() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getStableInsetBottom();
        }
        return 0;
    }

    public boolean hasStableInsets() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).hasStableInsets();
        }
        return false;
    }

    public WindowInsetsCompat consumeStableInsets() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new WindowInsetsCompat(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).consumeStableInsets());
        }
        return null;
    }

    public DisplayCutoutCompat getDisplayCutout() {
        if (Build.VERSION.SDK_INT >= 28) {
            return DisplayCutoutCompat.wrap(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).getDisplayCutout());
        }
        return null;
    }

    public WindowInsetsCompat consumeDisplayCutout() {
        return Build.VERSION.SDK_INT >= 28 ? new WindowInsetsCompat(ViewCompat$$ExternalSyntheticApiModelOutline5.m208m(this.mInsets).consumeDisplayCutout()) : this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Object obj2 = this.mInsets;
        Object obj3 = ((WindowInsetsCompat) obj).mInsets;
        return obj2 == null ? obj3 == null : obj2.equals(obj3);
    }

    public int hashCode() {
        Object obj = this.mInsets;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    static WindowInsetsCompat wrap(Object obj) {
        if (obj == null) {
            return null;
        }
        return new WindowInsetsCompat(obj);
    }

    static Object unwrap(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            return null;
        }
        return windowInsetsCompat.mInsets;
    }
}
