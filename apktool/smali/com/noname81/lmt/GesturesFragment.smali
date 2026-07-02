.class public Lcom/noname81/lmt/GesturesFragment;
.super Landroid/app/Fragment;
.source "GesturesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;
    }
.end annotation


# static fields
.field public static final offsetDualTouchGestures:I = 0xb

.field public static final offsetSingleTouchGestures:I = 0x0

.field public static final offsetSwipeGestures:I = 0x3


# instance fields
.field private mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 68
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 69
    sget-object p2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {p2, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    sget-object v1, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p2, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object p2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p2, p2, v0

    sget-object v1, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p2, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 74
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v2, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    sget-object v3, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 84
    sget-object v2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    sget-object v4, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v2, v2, v4

    sget-object v5, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v2, Lcom/noname81/lmt/TouchServiceResult;->names:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v2, v2, v4

    sget-object v5, Lcom/noname81/lmt/TouchServiceResult;->captions:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {p0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/noname81/lmt/GesturesFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    .line 90
    sget v4, Lcom/noname81/lmt/R$string;->gestures_single_touch_gestures:I

    invoke-virtual {p0, v4}, Lcom/noname81/lmt/GesturesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    invoke-virtual {p0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, p0, v6, p1, p3}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;-><init>(Lcom/noname81/lmt/GesturesFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v2, v4, v5}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 91
    iget-object p1, p0, Lcom/noname81/lmt/GesturesFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    sget v2, Lcom/noname81/lmt/R$string;->gestures_swipe_gestures:I

    invoke-virtual {p0, v2}, Lcom/noname81/lmt/GesturesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    invoke-virtual {p0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, p2, v1}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;-><init>(Lcom/noname81/lmt/GesturesFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 92
    iget-object p1, p0, Lcom/noname81/lmt/GesturesFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    sget p2, Lcom/noname81/lmt/R$string;->gestures_dual_touch_gestures:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/GesturesFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;

    invoke-virtual {p0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/noname81/lmt/GesturesFragment$CommandSimpleAdapterGestures;-><init>(Lcom/noname81/lmt/GesturesFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, p2, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 94
    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noname81/lmt/GesturesFragment;->mListView:Landroid/widget/ListView;

    .line 95
    iget-object p2, p0, Lcom/noname81/lmt/GesturesFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object p1, p0, Lcom/noname81/lmt/GesturesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/noname81/lmt/GesturesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 99
    iget-object p1, p0, Lcom/noname81/lmt/GesturesFragment;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-ltz p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    const/4 p1, 0x3

    if-lt p3, p1, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    const/16 p1, 0xb

    if-lt p3, p1, :cond_2

    add-int/lit8 p3, p3, -0x1

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/noname81/lmt/GesturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/noname81/lmt/SettingsValues;->setCurrentGesture(I)V

    .line 115
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/CommandSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/GesturesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/noname81/lmt/GesturesFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/GesturesFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/noname81/lmt/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 55
    iget-object v0, p0, Lcom/noname81/lmt/GesturesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/noname81/lmt/GesturesFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/GesturesFragment;->setUserVisibleHint(Z)V

    return-void
.end method
