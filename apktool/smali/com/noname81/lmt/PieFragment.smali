.class public Lcom/noname81/lmt/PieFragment;
.super Landroid/app/Fragment;
.source "PieFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;
    }
.end annotation


# static fields
.field public static final offsetLevel1:I = 0x0

.field public static final offsetLevel2:I = 0xa

.field public static final offsetLevel3:I = 0x18


# instance fields
.field private mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

.field private mCurrentPos:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/noname81/lmt/PieFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/noname81/lmt/PieFragment;->mCurrentPos:I

    return p0
.end method

.method static synthetic access$102(Lcom/noname81/lmt/PieFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/noname81/lmt/PieFragment;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/noname81/lmt/PieFragment;)Lcom/noname81/lmt/SeparatedListAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/noname81/lmt/PieFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/16 p3, 0x96

    invoke-static {p1, p2, p3}, Lcom/noname81/lmt/IconUtils;->getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p2

    invoke-virtual {p2}, Lcom/noname81/lmt/SettingsValues;->loadResourceSearchPath()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/noname81/lmt/PieFragment;->mCurrentPos:I

    invoke-static {p3}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/noname81/lmt/IconUtils;->saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->restartServiceIfRequired()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 69
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 70
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_1:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Pie item 1"

    invoke-static {p3, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_1_longpress:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Pie item 1 longpress"

    invoke-static {v0, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_2:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Pie item 2"

    invoke-static {v1, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_2_longpress:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Pie item 2 longpress"

    invoke-static {v2, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_3:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Pie item 3"

    invoke-static {v3, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_3_longpress:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "Pie item 3 longpress"

    invoke-static {v4, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_4:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v5, "Pie item 4"

    invoke-static {v5, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_4_longpress:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v6, "Pie item 4 longpress"

    invoke-static {v6, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_5:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v7, "Pie item 5"

    invoke-static {v7, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget p2, Lcom/noname81/lmt/R$string;->pie_level_1_item_5_longpress:I

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v8, "Pie item 5 longpress"

    invoke-static {v8, p2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 82
    sget v9, Lcom/noname81/lmt/R$string;->pie_level_2_item_1:I

    invoke-virtual {p0, v9}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p3, v9}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_1_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_2:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_2_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_3:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_3_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_4:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_4_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_5:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_5_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v8, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_6:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 6"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_6_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 6 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_7:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 7"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2_item_7_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 7 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance p3, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/noname81/lmt/PieFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    .line 99
    sget v0, Lcom/noname81/lmt/R$string;->pie_level_1:I

    invoke-virtual {p0, v0}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;-><init>(Lcom/noname81/lmt/PieFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p3, v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 100
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_2:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;-><init>(Lcom/noname81/lmt/PieFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, p3, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_1:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 1"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_1_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 1 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_2:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 2"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_2_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 2 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_3:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 3"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_3_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 3 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_4:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 4"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_4_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 4 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_5:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 5"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_5_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 5 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_6:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 6"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_6_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 6 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_7:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 7"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3_item_7_longpress:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Pie item 7 longpress"

    invoke-static {v0, p3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p3, Lcom/noname81/lmt/R$string;->pie_level_3:I

    invoke-virtual {p0, p3}, Lcom/noname81/lmt/PieFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;

    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x18

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/noname81/lmt/PieFragment$CommandSimpleAdapter;-><init>(Lcom/noname81/lmt/PieFragment;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, p3, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 102
    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noname81/lmt/PieFragment;->mListView:Landroid/widget/ListView;

    .line 103
    iget-object p2, p0, Lcom/noname81/lmt/PieFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 107
    iget-object p1, p0, Lcom/noname81/lmt/PieFragment;->mListView:Landroid/widget/ListView;

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
    const/16 p1, 0xa

    if-lt p3, p1, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    const/16 p1, 0x18

    if-lt p3, p1, :cond_2

    add-int/lit8 p3, p3, -0x1

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/noname81/lmt/PieFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/noname81/lmt/SettingsValues;->setCurrentPie(I)V

    .line 121
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/CommandSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PieFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/noname81/lmt/PieFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/PieFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/noname81/lmt/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 59
    iget-object v0, p0, Lcom/noname81/lmt/PieFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/noname81/lmt/PieFragment;->mAdapter:Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/PieFragment;->setUserVisibleHint(Z)V

    return-void
.end method
