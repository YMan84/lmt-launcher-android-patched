package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class FragmentTransitionCompat21 extends FragmentTransitionImpl {
    FragmentTransitionCompat21() {
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public boolean canHandle(Object obj) {
        return NavUtils$$ExternalSyntheticApiModelOutline0.m$1(obj);
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object cloneTransition(Object obj) {
        if (obj != null) {
            return NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj).clone();
        }
        return null;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object wrapTransitionInSet(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj));
        return transitionSet;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void setSharedElementTargets(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSetM28m = NavUtils$$ExternalSyntheticApiModelOutline0.m28m(obj);
        List targets = transitionSetM28m.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            bfsAddViewChildren(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        addTargets(transitionSetM28m, arrayList);
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void setEpicenter(Object obj, View view) {
        if (view != null) {
            Transition transitionM26m = NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj);
            final Rect rect = new Rect();
            getBoundsOnScreen(view, rect);
            transitionM26m.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.support.v4.app.FragmentTransitionCompat21.1
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition) {
                    return rect;
                }
            });
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void addTargets(Object obj, ArrayList<View> arrayList) {
        Transition transitionM26m = NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj);
        if (transitionM26m == null) {
            return;
        }
        int i = 0;
        if (NavUtils$$ExternalSyntheticApiModelOutline0.m38m((Object) transitionM26m)) {
            TransitionSet transitionSetM28m = NavUtils$$ExternalSyntheticApiModelOutline0.m28m((Object) transitionM26m);
            int transitionCount = transitionSetM28m.getTransitionCount();
            while (i < transitionCount) {
                addTargets(transitionSetM28m.getTransitionAt(i), arrayList);
                i++;
            }
            return;
        }
        if (hasSimpleTarget(transitionM26m) || !isNullOrEmpty(transitionM26m.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            transitionM26m.addTarget(arrayList.get(i));
            i++;
        }
    }

    private static boolean hasSimpleTarget(Transition transition) {
        return (isNullOrEmpty(transition.getTargetIds()) && isNullOrEmpty(transition.getTargetNames()) && isNullOrEmpty(transition.getTargetTypes())) ? false : true;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object mergeTransitionsTogether(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition(NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj));
        }
        if (obj2 != null) {
            transitionSet.addTransition(NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj2));
        }
        if (obj3 != null) {
            transitionSet.addTransition(NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj3));
        }
        return transitionSet;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void scheduleHideFragmentView(Object obj, final View view, final ArrayList<View> arrayList) {
        NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj).addListener(new Transition.TransitionListener() { // from class: android.support.v4.app.FragmentTransitionCompat21.2
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                transition.removeListener(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }
        });
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public Object mergeTransitionsInSequence(Object obj, Object obj2, Object obj3) {
        Transition transitionM26m = NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj);
        Transition transitionM26m2 = NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj2);
        Transition transitionM26m3 = NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj3);
        if (transitionM26m != null && transitionM26m2 != null) {
            transitionM26m = new TransitionSet().addTransition(transitionM26m).addTransition(transitionM26m2).setOrdering(1);
        } else if (transitionM26m == null) {
            transitionM26m = transitionM26m2 != null ? transitionM26m2 : null;
        }
        if (transitionM26m3 == null) {
            return transitionM26m;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transitionM26m != null) {
            transitionSet.addTransition(transitionM26m);
        }
        transitionSet.addTransition(transitionM26m3);
        return transitionSet;
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void beginDelayedTransition(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj));
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void scheduleRemoveTargets(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj).addListener(new Transition.TransitionListener() { // from class: android.support.v4.app.FragmentTransitionCompat21.3
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition) {
                Object obj5 = obj2;
                if (obj5 != null) {
                    FragmentTransitionCompat21.this.replaceTargets(obj5, arrayList, null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    FragmentTransitionCompat21.this.replaceTargets(obj6, arrayList2, null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    FragmentTransitionCompat21.this.replaceTargets(obj7, arrayList3, null);
                }
            }
        });
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void swapSharedElementTargets(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSetM28m = NavUtils$$ExternalSyntheticApiModelOutline0.m28m(obj);
        if (transitionSetM28m != null) {
            transitionSetM28m.getTargets().clear();
            transitionSetM28m.getTargets().addAll(arrayList2);
            replaceTargets(transitionSetM28m, arrayList, arrayList2);
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void replaceTargets(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List targets;
        Transition transitionM26m = NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj);
        int i = 0;
        if (NavUtils$$ExternalSyntheticApiModelOutline0.m38m((Object) transitionM26m)) {
            TransitionSet transitionSetM28m = NavUtils$$ExternalSyntheticApiModelOutline0.m28m((Object) transitionM26m);
            int transitionCount = transitionSetM28m.getTransitionCount();
            while (i < transitionCount) {
                replaceTargets(transitionSetM28m.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (hasSimpleTarget(transitionM26m) || (targets = transitionM26m.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size) {
            transitionM26m.addTarget(arrayList2.get(i));
            i++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transitionM26m.removeTarget(arrayList.get(size2));
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void addTarget(Object obj, View view) {
        if (obj != null) {
            NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj).addTarget(view);
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void removeTarget(Object obj, View view) {
        if (obj != null) {
            NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj).removeTarget(view);
        }
    }

    @Override // android.support.v4.app.FragmentTransitionImpl
    public void setEpicenter(Object obj, final Rect rect) {
        if (obj != null) {
            NavUtils$$ExternalSyntheticApiModelOutline0.m26m(obj).setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.support.v4.app.FragmentTransitionCompat21.4
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition) {
                    Rect rect2 = rect;
                    if (rect2 == null || rect2.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }
}
