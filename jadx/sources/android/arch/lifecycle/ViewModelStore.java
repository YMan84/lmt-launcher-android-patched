package android.arch.lifecycle;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ViewModelStore {
    private final HashMap<String, ViewModel> mMap = new HashMap<>();

    final void put(String str, ViewModel viewModel) {
        ViewModel viewModelPut = this.mMap.put(str, viewModel);
        if (viewModelPut != null) {
            viewModelPut.onCleared();
        }
    }

    final ViewModel get(String str) {
        return this.mMap.get(str);
    }

    public final void clear() {
        Iterator<ViewModel> it = this.mMap.values().iterator();
        while (it.hasNext()) {
            it.next().onCleared();
        }
        this.mMap.clear();
    }
}
