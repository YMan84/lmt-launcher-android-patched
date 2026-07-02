package android.arch.lifecycle;

import android.arch.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
public interface GenericLifecycleObserver extends LifecycleObserver {
    void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event);
}
