.class public Lcom/noname81/lmt/IsasFragment;
.super Landroid/app/Fragment;
.source "IsasFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;
    }
.end annotation


# static fields
.field public static final offsetIsasBottom:I = 0x0

.field public static final offsetIsasLeft:I = 0x6

.field private static final offsetIsasRight:I = 0x9

.field public static final offsetIsasTop:I = 0x3


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
    .locals 6

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 66
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 67
    sget p2, Lcom/noname81/lmt/R$string;->isas_isa_bottom_left:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Isa 1"

    invoke-static {p3, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget p2, Lcom/noname81/lmt/R$string;->isas_isa_bottom_center:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Isa 2"

    invoke-static {p3, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget p2, Lcom/noname81/lmt/R$string;->isas_isa_bottom_right:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Isa 3"

    invoke-static {p3, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 72
    sget p3, Lcom/noname81/lmt/R$string;->isas_isa_top_left:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Isa 4"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget p3, Lcom/noname81/lmt/R$string;->isas_isa_top_center:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Isa 5"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget p3, Lcom/noname81/lmt/R$string;->isas_isa_top_right:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Isa 6"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 77
    sget v0, Lcom/noname81/lmt/R$string;->isas_isa_left_top:I

    invoke-virtual {p0, v0}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Isa 7"

    invoke-static {v1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget v0, Lcom/noname81/lmt/R$string;->isas_isa_left_center:I

    invoke-virtual {p0, v0}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Isa 8"

    invoke-static {v1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget v0, Lcom/noname81/lmt/R$string;->isas_isa_left_bottom:I

    invoke-virtual {p0, v0}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Isa 9"

    invoke-static {v1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 82
    sget v1, Lcom/noname81/lmt/R$string;->isas_isa_right_top:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Isa 10"

    invoke-static {v2, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget v1, Lcom/noname81/lmt/R$string;->isas_isa_right_center:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Isa 11"

    invoke-static {v2, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget v1, Lcom/noname81/lmt/R$string;->isas_isa_right_bottom:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Isa 12"

    invoke-static {v2, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    .line 88
    sget v2, Lcom/noname81/lmt/R$string;->isas_isa_areas_bottom:I

    invoke-virtual {p0, v2}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;

    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, p1, v5}, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;-><init>(Lcom/noname81/lmt/IsasFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v1, v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 89
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    sget v1, Lcom/noname81/lmt/R$string;->isas_isa_areas_top:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;

    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, p2, v4}, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;-><init>(Lcom/noname81/lmt/IsasFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 90
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    sget p2, Lcom/noname81/lmt/R$string;->isas_isa_areas_left:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;

    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, p3, v3}, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;-><init>(Lcom/noname81/lmt/IsasFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, p2, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 91
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    sget p2, Lcom/noname81/lmt/R$string;->isas_isa_areas_right:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/IsasFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;

    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {p3, p0, v1, v0, v2}, Lcom/noname81/lmt/IsasFragment$CommandSimpleAdapterIsas;-><init>(Lcom/noname81/lmt/IsasFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, p2, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 93
    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mListView:Landroid/widget/ListView;

    .line 94
    iget-object p2, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 98
    iget-object p1, p0, Lcom/noname81/lmt/IsasFragment;->mListView:Landroid/widget/ListView;

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
    const/4 p1, 0x6

    if-lt p3, p1, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    const/16 p1, 0x9

    if-lt p3, p1, :cond_3

    add-int/lit8 p3, p3, -0x1

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/noname81/lmt/IsasFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/noname81/lmt/SettingsValues;->setCurrentIsa(I)V

    .line 116
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/CommandSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/IsasFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/noname81/lmt/IsasFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/noname81/lmt/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 56
    iget-object v0, p0, Lcom/noname81/lmt/IsasFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/noname81/lmt/IsasFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/IsasFragment;->setUserVisibleHint(Z)V

    return-void
.end method
