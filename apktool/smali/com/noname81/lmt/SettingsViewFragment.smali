.class public Lcom/noname81/lmt/SettingsViewFragment;
.super Landroid/app/Fragment;
.source "SettingsViewFragment.java"


# instance fields
.field mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    .line 42
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 44
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/noname81/lmt/SettingsViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    .line 45
    new-instance v1, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v2

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result v2

    .line 50
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "Activate LMT"

    const-string v4, "Activate or deactivate LMT"

    .line 51
    invoke-static {v3, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "Autostart LMT"

    const-string v4, "Configure if LMT should run at startup"

    .line 52
    invoke-static {v3, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "Set active features"

    const-string v4, "Configure LMT\'s feature set"

    .line 53
    invoke-static {v3, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v9, 0x0

    iput v9, v3, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetTouchservice:I

    .line 55
    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v4, 0x1

    iput v4, v3, Lcom/noname81/lmt/SettingsViewHelper;->posActivateTouchService:I

    .line 56
    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v10, 0x2

    iput v10, v3, Lcom/noname81/lmt/SettingsViewHelper;->posAutostartTouchService:I

    .line 57
    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v4, 0x3

    iput v4, v3, Lcom/noname81/lmt/SettingsViewHelper;->posSetMode:I

    .line 58
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v4, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v7, v3, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetTouchservice:I

    const/4 v8, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v3, "General"

    invoke-virtual {v1, v3, v11}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const-string v3, "Activation area thickness"

    const-string v4, "Clear all excluded apps"

    const-string v5, "Define the vibration time in ms, default = 30"

    const-string v6, "Vibration Time"

    const/4 v7, 0x4

    if-ge v2, v10, :cond_0

    .line 61
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    const-string v8, "Auto configuration"

    const-string v10, "If auto configuration fails, set the input device and touchscreen to screen factors below manually"

    .line 62
    invoke-static {v8, v10}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "Set gesture input"

    const-string v10, "Set the input device for gesture recognition"

    .line 63
    invoke-static {v8, v10}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "Touchscreen to screen factor X"

    const-string v10, "Resolution factor in %, default = 100%"

    .line 64
    invoke-static {v8, v10}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "Touchscreen to screen factor Y"

    .line 65
    invoke-static {v8, v10}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v8, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iput v7, v8, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetGestureRecognition:I

    .line 67
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v8, 0x5

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posAutoConfiguration:I

    .line 68
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v8, 0x6

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSetInput:I

    .line 69
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v8, 0x7

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posTouchscreenScreenFactorX:I

    .line 70
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0x8

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posTouchscreenScreenFactorY:I

    .line 71
    new-instance v7, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v12, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v8, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v15, v8, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetIsas:I

    const/16 v16, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v8, "Gesture recognition"

    invoke-virtual {v1, v8, v7}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 73
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v7, "Feedback style"

    const-string v8, "Define the gesture feedback style"

    .line 74
    invoke-static {v7, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v6, v5}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Single touch gestures"

    const-string v8, "Configure if single touch gestures should be recognized, default = enabled"

    .line 76
    invoke-static {v7, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Min gesture score"

    const-string v8, "Min score in %, default = 70%"

    .line 77
    invoke-static {v7, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Min gesture path length"

    const-string v8, "Min number of touch points, default = 7"

    .line 78
    invoke-static {v7, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Add to gesture blacklist"

    const-string v8, "Exclude an app from gesture recognition"

    .line 79
    invoke-static {v7, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Clear gesture blacklist"

    .line 80
    invoke-static {v7, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0x9

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetGestures:I

    .line 82
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0xa

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posFeedbackStyle:I

    .line 83
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0xb

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posVibrationTime:I

    .line 84
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0xc

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSingleTouchGestures:I

    .line 85
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0xd

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posMinScore:I

    .line 86
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0xe

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posMinPathLength:I

    .line 87
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0xf

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklist:I

    .line 88
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0x10

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklist:I

    .line 89
    new-instance v7, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v8, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v8, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetGestures:I

    const/4 v15, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v8, "Gestures"

    invoke-virtual {v1, v8, v7}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 91
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v7, "Min bounding box size"

    const-string v8, "Min bounding box size in pixel, 0 = disabled, 1 = enabled, >1 = enabled and size in pixel, default = 1"

    .line 92
    invoke-static {v7, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "Activation area width in pixel, default = 60"

    .line 93
    invoke-static {v3, v7}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0x11

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetIsas:I

    .line 95
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0x12

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSingleSwipesBBox:I

    .line 96
    iget-object v7, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v8, 0x13

    iput v8, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSingleSwipesAArea:I

    .line 97
    new-instance v7, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v8, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v8, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetIsas:I

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v8, "ISAS"

    invoke-virtual {v1, v8, v7}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/16 v7, 0x14

    :cond_0
    if-lez v2, :cond_3

    .line 101
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "Activation area position"

    const-string v8, "Activation area position, default = all"

    .line 102
    invoke-static {v2, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Activation area thickness in pixel, default = 50"

    .line 103
    invoke-static {v3, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Activation area length"

    const-string v3, "Activation area length in pixel, default = 600"

    .line 104
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Activation area gravity"

    const-string v3, "Configure the gravity, default = center"

    .line 105
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Activation area behind keyboard"

    const-string v3, "Configure if the activation area should be placed behind the keyboard, default = deactivated"

    .line 106
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    const-string v2, "Activation area on lockscreen"

    const-string v8, "Configure if pie should be active on lockscreen, default = deactivated"

    .line 108
    invoke-static {v2, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "Add to pie blacklist"

    const-string v8, "Exclude an app from pie"

    .line 110
    invoke-static {v2, v8}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Clear pie blacklist"

    .line 111
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v7, 0x1

    iput v7, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieActivation:I

    .line 113
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v7, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPiePos:I

    .line 114
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v7, 0x1

    iput v7, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaX:I

    .line 115
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v7, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaY:I

    .line 116
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v7, 0x1

    iput v7, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaGravity:I

    .line 117
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v7, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaBehindKeyboard:I

    .line 118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_2

    .line 119
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v7, 0x1

    iput v7, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieOnLockScreen:I

    move v7, v3

    .line 121
    :cond_2
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v7, 0x1

    iput v7, v2, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklistPie:I

    .line 122
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklistPie:I

    .line 123
    new-instance v2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v3, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieActivation:I

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v3, "Pie Activation"

    invoke-virtual {v1, v3, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 125
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "Pie colors"

    const-string v3, "0 = blue, 1 = red, 2 = grey, 3 = none, 4 = white, 5 = magenta/yellow, 6 = green/outline, 7 = red/outline, default = 0"

    .line 126
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie inner radius"

    const-string v3, "Radius in dip, default = 60"

    .line 127
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie outer radius"

    const-string v3, "Radius in dip, default = 80"

    .line 128
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie shift size"

    const-string v3, "Size of the pie shift effect in pixel, default = 0"

    .line 129
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie outline size"

    const-string v3, "Size of the outline in pixel, default = 3"

    .line 130
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie slice gap"

    const-string v3, "Size of the gap between two pie slices, default = 0"

    .line 131
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie start gap"

    const-string v3, "Size of the gap between pie and border, default = 0"

    .line 132
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieStyle:I

    .line 134
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieColor:I

    .line 135
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieInnerRadius:I

    .line 136
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieOuterRadius:I

    .line 137
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieShiftSize:I

    .line 138
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieOutlineSize:I

    .line 139
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieSliceGap:I

    .line 140
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieStartGap:I

    .line 141
    new-instance v2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v3, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieStyle:I

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v3, "Pie Style"

    invoke-virtual {v1, v3, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 143
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "Longpress time"

    const-string v3, "Min time for longpress in ms, default = 500"

    .line 144
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Animation time"

    const-string v3, "Time for the pie animation in ms, default = 80"

    .line 145
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Feedback type"

    const-string v3, "Configure the pie feedback for diffent actions, default = longpress"

    .line 146
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v6, v5}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Multi command"

    const-string v3, "Configure if actions should be fired multiple times when swiping on item, default = disabled"

    .line 148
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Expand trigger area"

    const-string v3, "Configure if the action trigger area should be expanded to the full screen for the outer pie ring, default = enabled"

    .line 149
    invoke-static {v2, v3}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieBehavior:I

    .line 151
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieLongpress:I

    .line 152
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieAnimation:I

    .line 153
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrate:I

    .line 154
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrationTime:I

    .line 155
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieMultiCommand:I

    .line 156
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieExpandTriggerArea:I

    .line 157
    new-instance v2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v4, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v4, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieBehavior:I

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v4, "Pie Behavior"

    invoke-virtual {v1, v4, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 159
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "Rotate images"

    const-string v4, "Rotate icons based on pie angle"

    .line 160
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Set nav button style"

    const-string v4, "Switch between different icon sets for the nav buttons"

    .line 161
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Show and scale app images"

    const-string v4, "0 = disabled, 1 = enabled (no filter), 2 = enabled, >2 = image size in pixel, default = enabled"

    .line 162
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Show and scale user images"

    const-string v4, "0 = disabled, 1 = enabled (no filter), 2 = enabled, >2 = image size in pixel, default = disabled"

    .line 163
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Set user image search path"

    const-string v4, "default = /storage/emulated/0/Android/data/com.noname81.lmt/files/ (Leave blank to set default)"

    .line 164
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieIcons:I

    .line 166
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieRotateImages:I

    .line 167
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieNavButtonStyle:I

    .line 168
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleAppImages:I

    .line 169
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleUserImages:I

    .line 170
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieUserImageSearchPath:I

    .line 171
    new-instance v2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v4, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v4, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieIcons:I

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v4, "Pie Icons"

    invoke-virtual {v1, v4, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 173
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "Pie pointer edge activation"

    const-string v4, "Configure if the pie pointer feature can be activated from the edges (Also consider the pie pointer action to activate the feature!), default = disabled"

    .line 174
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie pointer warp factor"

    const-string v4, "Configure the warp factor for the pie pointer feature,\ndefault = 300%, min = 200%, max = 1000%"

    .line 175
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie pointer color"

    const-string v4, "0 = blue, default = 0"

    .line 176
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Show status infos"

    const-string v4, "Configure if status info feature should be shown, default = enabled"

    .line 177
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie status info colors"

    const-string v4, "0 = white, default = 0"

    .line 178
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Pie status info font"

    const-string v4, "Configure the pie font, default = Roboto Light"

    .line 179
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieExtensions:I

    .line 181
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerFromEdges:I

    .line 182
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerWarpFactor:I

    .line 183
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerColor:I

    .line 184
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v4, v3, 0x1

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowStatusInfos:I

    .line 185
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v3, v4, 0x1

    iput v4, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoColor:I

    .line 186
    iget-object v2, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iput v3, v2, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoFont:I

    .line 187
    new-instance v2, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v11, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iget-object v3, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v14, v3, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieExtensions:I

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v3, "Pie Extensions"

    invoke-virtual {v1, v3, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 191
    :cond_3
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/noname81/lmt/SettingsViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v1, v0, Lcom/noname81/lmt/SettingsViewFragment;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/SettingsViewFragment;->setUserVisibleHint(Z)V

    return-void
.end method
