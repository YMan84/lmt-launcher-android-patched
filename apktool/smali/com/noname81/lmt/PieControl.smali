.class Lcom/noname81/lmt/PieControl;
.super Lcom/noname81/lmt/PieControlBase;
.source "PieControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/PieControl$PieItemAction;
    }
.end annotation


# instance fields
.field private mLauncher:Lcom/noname81/lmt/Launcher;

.field private mPieItemActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/noname81/lmt/PieControl$PieItemAction;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/noname81/lmt/SettingsValues;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/noname81/lmt/PieControlBase;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    .line 54
    invoke-static {p1}, Lcom/noname81/lmt/Launcher;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/PieControl;->mLauncher:Lcom/noname81/lmt/Launcher;

    .line 55
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-void
.end method

.method private activatePieRecentApps()V
    .locals 19

    move-object/from16 v6, p0

    .line 103
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleUserImages()I

    move-result v13

    .line 104
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleAppImages()I

    move-result v14

    .line 107
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/SettingsValues;->getPackageNamesOfRecentApps(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, " "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 113
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/16 v16, 0x0

    const/4 v4, 0x0

    .line 114
    :goto_0
    array-length v0, v15

    const/4 v1, 0x1

    if-ge v4, v0, :cond_1

    .line 115
    new-instance v3, Lcom/noname81/lmt/Action;

    aget-object v0, v15, v4

    const/4 v2, 0x2

    invoke-direct {v3, v2, v0}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    .line 116
    new-instance v0, Lcom/noname81/lmt/Action;

    const-string v7, ""

    invoke-direct {v0, v1, v7}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    .line 117
    new-instance v12, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object v7, v3

    move v10, v13

    move v11, v14

    move-object/from16 v18, v12

    move/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object v2, v12

    move/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x4

    if-le v4, v8, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v6, v2, v7, v1}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v2

    const/4 v7, 0x1

    move-object v8, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v9, v4

    move-object v4, v8

    move-object v8, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v9, 0x1

    move-object v5, v8

    goto :goto_0

    :cond_1
    move-object v8, v5

    .line 121
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieMenu;->clearItems()V

    const/4 v0, 0x0

    .line 122
    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 123
    iget-object v2, v6, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v3, v3, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    invoke-virtual {v2, v3}, Lcom/noname81/lmt/PieMenu;->addItem(Lcom/noname81/lmt/PieItem;)V

    new-array v2, v1, [Lcom/noname81/lmt/PieItem;

    .line 124
    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v3, v3, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    aput-object v3, v2, v16

    invoke-virtual {v6, v6, v2}, Lcom/noname81/lmt/PieControl;->setClickListener(Landroid/view/View$OnClickListener;[Lcom/noname81/lmt/PieItem;)V

    new-array v2, v1, [Lcom/noname81/lmt/PieItem;

    .line 125
    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v3, v3, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    aput-object v3, v2, v16

    invoke-virtual {v6, v6, v2}, Lcom/noname81/lmt/PieControl;->setLongClickListener(Landroid/view/View$OnLongClickListener;[Lcom/noname81/lmt/PieItem;)V

    new-array v2, v1, [Lcom/noname81/lmt/PieItem;

    .line 126
    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v3, v3, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    aput-object v3, v2, v16

    invoke-virtual {v6, v6, v2}, Lcom/noname81/lmt/PieControl;->setKeyListener(Landroid/view/View$OnKeyListener;[Lcom/noname81/lmt/PieItem;)V

    .line 127
    iget-object v2, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noname81/lmt/PieControl$PieItemAction;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieMenu;->relayoutPie()V

    :cond_3
    return-void
.end method

.method private createDefaultPieActions()V
    .locals 27

    move-object/from16 v6, p0

    .line 210
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleUserImages()I

    move-result v13

    .line 211
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleAppImages()I

    move-result v14

    .line 212
    iget-object v0, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 214
    new-instance v3, Lcom/noname81/lmt/Action;

    const/4 v15, 0x7

    invoke-direct {v3, v15}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 215
    new-instance v4, Lcom/noname81/lmt/Action;

    const/16 v0, 0x1e

    invoke-direct {v4, v0}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 217
    new-instance v5, Lcom/noname81/lmt/Action;

    const/4 v2, 0x3

    invoke-direct {v5, v2}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 218
    new-instance v1, Lcom/noname81/lmt/Action;

    const/16 v0, 0x1a

    const-string v7, "26"

    invoke-direct {v1, v0, v7}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    .line 220
    new-instance v0, Lcom/noname81/lmt/Action;

    const/16 v12, 0x9

    invoke-direct {v0, v12}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 221
    new-instance v11, Lcom/noname81/lmt/Action;

    const/16 v7, 0x1f

    invoke-direct {v11, v7}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 223
    new-instance v10, Lcom/noname81/lmt/Action;

    const/4 v9, 0x5

    invoke-direct {v10, v9}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 224
    new-instance v8, Lcom/noname81/lmt/Action;

    const-string v7, "com.android.settings"

    const/4 v2, 0x2

    invoke-direct {v8, v2, v7}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    .line 226
    new-instance v7, Lcom/noname81/lmt/Action;

    const/16 v15, 0xa

    invoke-direct {v7, v15}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 227
    new-instance v15, Lcom/noname81/lmt/Action;

    const/16 v9, 0xb

    invoke-direct {v15, v9}, Lcom/noname81/lmt/Action;-><init>(I)V

    .line 229
    iget-object v9, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    move-object/from16 v18, v5

    new-instance v5, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v12, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v23, v7

    move-object v7, v3

    move-object/from16 v24, v8

    move-object v8, v12

    move-object v12, v9

    const/16 v17, 0x5

    move-object/from16 v9, v21

    move-object/from16 v21, v10

    move v10, v13

    move-object/from16 v25, v11

    move v11, v14

    move-object/from16 v26, v12

    const/16 v19, 0x9

    move/from16 v12, v22

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v7}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x0

    move-object v7, v4

    move-object/from16 v22, v0

    move-object v0, v12

    move/from16 v12, v20

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v0, v7, v2}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v20, v22

    move-object v0, v5

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    const/4 v9, 0x3

    const/4 v12, 0x1

    move-object v2, v7

    move-object v7, v5

    move-object/from16 v16, v18

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v5, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v4, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    move-object/from16 v7, v16

    const/4 v3, 0x1

    move v12, v0

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v7, v22

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v3}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    const/4 v12, 0x1

    move-object/from16 v3, v16

    move-object v8, v4

    move-object/from16 v4, v22

    move-object v9, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v5, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v4, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    move-object/from16 v7, v20

    const/4 v3, 0x1

    move v12, v0

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v7, v25

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v3}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    const/4 v12, 0x1

    move-object/from16 v3, v20

    move-object v8, v4

    move-object/from16 v4, v25

    move-object v9, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v5, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v4, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    move-object/from16 v7, v21

    const/4 v3, 0x1

    move v12, v0

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object/from16 v7, v24

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v3}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    const/4 v12, 0x1

    move-object/from16 v3, v21

    move-object v8, v4

    move-object/from16 v4, v24

    move-object v9, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v5, v6, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v4, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    move-object/from16 v7, v23

    const/4 v1, 0x1

    move v12, v0

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v8, v6, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    move-object v7, v15

    invoke-virtual/range {v7 .. v12}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v0, v2, v1}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v3, v23

    move-object v8, v4

    move-object v4, v15

    move-object v9, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-boolean v3, v3, Lcom/noname81/lmt/PieControl$PieItemAction;->mTempAction:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 138
    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 145
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v1}, Lcom/noname81/lmt/PieMenu;->clearItems()V

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v2, v2, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    invoke-virtual {v1, v2}, Lcom/noname81/lmt/PieMenu;->addItem(Lcom/noname81/lmt/PieItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    invoke-super {p0, p1}, Lcom/noname81/lmt/PieControlBase;->attachToContainer(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v1, v1, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/noname81/lmt/PieControl;->mLauncher:Lcom/noname81/lmt/Launcher;

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/Launcher;->fireAction(Lcom/noname81/lmt/Action;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p3, 0x0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/16 v0, 0x24

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    if-ne p2, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {v0}, Lcom/noname81/lmt/Action;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieMenu;->activatePiePointer()V

    goto :goto_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {v0}, Lcom/noname81/lmt/Action;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/noname81/lmt/PieControl;->activatePieRecentApps()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x28

    if-ne p2, v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mLongClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {v0}, Lcom/noname81/lmt/Action;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 197
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieMenu;->activatePiePointer()V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mLongClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {v0}, Lcom/noname81/lmt/Action;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/noname81/lmt/PieControl;->activatePieRecentApps()V

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v1, v1, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    invoke-virtual {v1}, Lcom/noname81/lmt/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object p1, p1, Lcom/noname81/lmt/PieControl$PieItemAction;->mLongClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {p1}, Lcom/noname81/lmt/Action;->getType()I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 171
    iget-object p1, p0, Lcom/noname81/lmt/PieControl;->mLauncher:Lcom/noname81/lmt/Launcher;

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mLongClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/Launcher;->fireAction(Lcom/noname81/lmt/Action;)V

    goto :goto_1

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/PieControl;->mLauncher:Lcom/noname81/lmt/Launcher;

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v0, v0, Lcom/noname81/lmt/PieControl$PieItemAction;->mClickAction:Lcom/noname81/lmt/Action;

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/Launcher;->fireAction(Lcom/noname81/lmt/Action;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method protected populateMenu()V
    .locals 15

    .line 59
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleUserImages()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleAppImages()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v1, 0x9

    const/4 v10, 0x1

    if-ge v9, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/Action;->getType()I

    move-result v1

    if-le v1, v10, :cond_0

    .line 66
    iget-object v11, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v12, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 67
    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    add-int/lit8 v14, v9, 0x1

    .line 68
    invoke-virtual {v1, v14}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    invoke-virtual {p0, v13, v1, v10}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v3

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 70
    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v4

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 71
    invoke-virtual {v1, v14}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v5

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    .line 66
    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    const/16 v9, 0xa

    :goto_1
    const/16 v1, 0x17

    if-ge v9, v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/Action;->getType()I

    move-result v1

    if-le v1, v10, :cond_2

    .line 79
    iget-object v11, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v12, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 80
    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    add-int/lit8 v14, v9, 0x1

    .line 81
    invoke-virtual {v1, v14}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    .line 80
    invoke-virtual {p0, v13, v1, v2}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v3

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 83
    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v4

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 84
    invoke-virtual {v1, v14}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v5

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    .line 79
    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 89
    :cond_3
    const/16 v9, 0x18

    :goto_3
    const/16 v1, 0x25

    if-ge v9, v1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/Action;->getType()I

    move-result v1

    if-le v1, v10, :cond_6

    .line 79
    iget-object v11, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    new-instance v12, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 80
    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    add-int/lit8 v14, v9, 0x1

    .line 81
    invoke-virtual {v1, v14}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v1

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/noname81/lmt/IconUtils;->getNamePie(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/noname81/lmt/Action;->getDrawable(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    .line 80
    invoke-virtual {p0, v13, v1, v2}, Lcom/noname81/lmt/PieControl;->makeItem(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/noname81/lmt/PieItem;

    move-result-object v3

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 83
    invoke-virtual {v1, v9}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v4

    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 84
    invoke-virtual {v1, v14}, Lcom/noname81/lmt/SettingsValues;->getPieAction(I)Lcom/noname81/lmt/Action;

    move-result-object v5

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/noname81/lmt/PieControl$PieItemAction;-><init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V

    .line 79
    invoke-virtual {v11, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/noname81/lmt/PieControl;->createDefaultPieActions()V

    :cond_4
    const/4 v0, 0x0

    .line 94
    :goto_2
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v2, v2, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    invoke-virtual {v1, v2}, Lcom/noname81/lmt/PieMenu;->addItem(Lcom/noname81/lmt/PieItem;)V

    new-array v1, v10, [Lcom/noname81/lmt/PieItem;

    .line 96
    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v2, v2, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    aput-object v2, v1, v8

    invoke-virtual {p0, p0, v1}, Lcom/noname81/lmt/PieControl;->setClickListener(Landroid/view/View$OnClickListener;[Lcom/noname81/lmt/PieItem;)V

    new-array v1, v10, [Lcom/noname81/lmt/PieItem;

    .line 97
    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v2, v2, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    aput-object v2, v1, v8

    invoke-virtual {p0, p0, v1}, Lcom/noname81/lmt/PieControl;->setLongClickListener(Landroid/view/View$OnLongClickListener;[Lcom/noname81/lmt/PieItem;)V

    new-array v1, v10, [Lcom/noname81/lmt/PieItem;

    .line 98
    iget-object v2, p0, Lcom/noname81/lmt/PieControl;->mPieItemActions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noname81/lmt/PieControl$PieItemAction;

    iget-object v2, v2, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    aput-object v2, v1, v8

    invoke-virtual {p0, p0, v1}, Lcom/noname81/lmt/PieControl;->setKeyListener(Landroid/view/View$OnKeyListener;[Lcom/noname81/lmt/PieItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
