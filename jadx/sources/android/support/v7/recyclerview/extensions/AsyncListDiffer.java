package android.support.v7.recyclerview.extensions;

import android.os.Handler;
import android.os.Looper;
import android.support.v7.recyclerview.extensions.AsyncDifferConfig;
import android.support.v7.util.AdapterListUpdateCallback;
import android.support.v7.util.DiffUtil;
import android.support.v7.util.ListUpdateCallback;
import android.support.v7.widget.RecyclerView;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AsyncListDiffer<T> {
    private static final Executor sMainThreadExecutor = new MainThreadExecutor();
    final AsyncDifferConfig<T> mConfig;
    private List<T> mList;
    final Executor mMainThreadExecutor;
    int mMaxScheduledGeneration;
    private List<T> mReadOnlyList;
    private final ListUpdateCallback mUpdateCallback;

    private static class MainThreadExecutor implements Executor {
        final Handler mHandler = new Handler(Looper.getMainLooper());

        MainThreadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    public AsyncListDiffer(RecyclerView.Adapter adapter, DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    public AsyncListDiffer(ListUpdateCallback listUpdateCallback, AsyncDifferConfig<T> asyncDifferConfig) {
        this.mReadOnlyList = Collections.emptyList();
        this.mUpdateCallback = listUpdateCallback;
        this.mConfig = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.mMainThreadExecutor = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.mMainThreadExecutor = sMainThreadExecutor;
        }
    }

    public List<T> getCurrentList() {
        return this.mReadOnlyList;
    }

    public void submitList(final List<T> list) {
        final int i = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i;
        final List<T> list2 = this.mList;
        if (list == list2) {
            return;
        }
        if (list == null) {
            int size = list2.size();
            this.mList = null;
            this.mReadOnlyList = Collections.emptyList();
            this.mUpdateCallback.onRemoved(0, size);
            return;
        }
        if (list2 == null) {
            this.mList = list;
            this.mReadOnlyList = Collections.unmodifiableList(list);
            this.mUpdateCallback.onInserted(0, list.size());
            return;
        }
        this.mConfig.getBackgroundThreadExecutor().execute(new Runnable() { // from class: android.support.v7.recyclerview.extensions.AsyncListDiffer.1
            @Override // java.lang.Runnable
            public void run() {
                final DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: android.support.v7.recyclerview.extensions.AsyncListDiffer.1.1
                    @Override // android.support.v7.util.DiffUtil.Callback
                    public int getOldListSize() {
                        return list2.size();
                    }

                    @Override // android.support.v7.util.DiffUtil.Callback
                    public int getNewListSize() {
                        return list.size();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.support.v7.util.DiffUtil.Callback
                    public boolean areItemsTheSame(int i2, int i3) {
                        Object obj = list2.get(i2);
                        Object obj2 = list.get(i3);
                        if (obj == null || obj2 == null) {
                            return obj == null && obj2 == null;
                        }
                        return AsyncListDiffer.this.mConfig.getDiffCallback().areItemsTheSame(obj, obj2);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.support.v7.util.DiffUtil.Callback
                    public boolean areContentsTheSame(int i2, int i3) {
                        Object obj = list2.get(i2);
                        Object obj2 = list.get(i3);
                        if (obj != null && obj2 != null) {
                            return AsyncListDiffer.this.mConfig.getDiffCallback().areContentsTheSame(obj, obj2);
                        }
                        if (obj == null && obj2 == null) {
                            return true;
                        }
                        throw new AssertionError();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.support.v7.util.DiffUtil.Callback
                    public Object getChangePayload(int i2, int i3) {
                        Object obj = list2.get(i2);
                        Object obj2 = list.get(i3);
                        if (obj != null && obj2 != null) {
                            return AsyncListDiffer.this.mConfig.getDiffCallback().getChangePayload(obj, obj2);
                        }
                        throw new AssertionError();
                    }
                });
                AsyncListDiffer.this.mMainThreadExecutor.execute(new Runnable() { // from class: android.support.v7.recyclerview.extensions.AsyncListDiffer.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AsyncListDiffer.this.mMaxScheduledGeneration == i) {
                            AsyncListDiffer.this.latchList(list, diffResultCalculateDiff);
                        }
                    }
                });
            }
        });
    }

    void latchList(List<T> list, DiffUtil.DiffResult diffResult) {
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        diffResult.dispatchUpdatesTo(this.mUpdateCallback);
    }
}
