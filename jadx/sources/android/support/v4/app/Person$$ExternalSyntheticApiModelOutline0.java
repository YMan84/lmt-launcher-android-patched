package android.support.v4.app;

import android.app.Notification;
import android.bluetooth.BluetoothManager;
import android.hardware.ConsumerIrManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.media.MediaRouter;
import android.media.tv.TvInputManager;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.os.UserManager;
import android.print.PrintManager;
import android.telephony.SubscriptionManager;
import android.view.accessibility.CaptioningManager;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Person$$ExternalSyntheticApiModelOutline0 {
    public static /* bridge */ /* synthetic */ Notification.Action m(Object obj) {
        return (Notification.Action) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ android.app.Person m45m(Object obj) {
        return (android.app.Person) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ CancellationSignal m49m(Object obj) {
        return (CancellationSignal) obj;
    }

    public static /* bridge */ /* synthetic */ Class m() {
        return SubscriptionManager.class;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m56m(Object obj) {
        return obj instanceof OperationCanceledException;
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return TvInputManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$2() {
        return CaptioningManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$3() {
        return ConsumerIrManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$4() {
        return PrintManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$5() {
        return BluetoothManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$6() {
        return DisplayManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$7() {
        return UserManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$8() {
        return InputManager.class;
    }

    public static /* bridge */ /* synthetic */ Class m$9() {
        return MediaRouter.class;
    }
}
