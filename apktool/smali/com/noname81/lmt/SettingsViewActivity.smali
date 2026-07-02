.class public Lcom/noname81/lmt/SettingsViewActivity;
.super Landroid/app/Activity;
.source "SettingsViewActivity.java"


# instance fields
.field mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Lcom/noname81/lmt/SettingsViewHelper;

    invoke-direct {p1, p0}, Lcom/noname81/lmt/SettingsViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    .line 36
    new-instance p1, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-direct {p1, p0}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Activate LMT"

    const-string v1, "Activate or deactivate LMT"

    .line 41
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Autostart LMT"

    const-string v1, "Configure if LMT should run at startup"

    .line 42
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Set active features"

    const-string v1, "Configure LMT\'s feature set"

    .line 43
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v6, 0x0

    iput v6, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetTouchservice:I

    .line 45
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posActivateTouchService:I

    .line 46
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v1, 0x2

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posAutostartTouchService:I

    .line 47
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v1, 0x3

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posSetMode:I

    .line 48
    new-instance v7, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v4, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetTouchservice:I

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v0, "General"

    invoke-virtual {p1, v0, v7}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 50
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Activation area position"

    const-string v1, "Activation area position, default = all"

    .line 51
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Activation area thickness"

    const-string v1, "Activation area thickness in pixel, default = 50"

    .line 52
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Activation area length"

    const-string v1, "Activation area length in pixel, default = 600"

    .line 53
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Activation area gravity"

    const-string v1, "Configure the gravity, default = center"

    .line 54
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Activation area behind keyboard"

    const-string v1, "Configure if the activation area should be placed behind the keyboard, default = deactivated"

    .line 55
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string v0, "Activation area on lockscreen"

    const-string v2, "Configure if pie should be active on lockscreen, default = deactivated"

    .line 57
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "Add to pie blacklist"

    const-string v2, "Exclude an app from pie"

    .line 59
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Clear pie blacklist"

    const-string v2, "Clear all excluded apps"

    .line 60
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v2, 0x4

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieActivation:I

    .line 62
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v2, 0x5

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePos:I

    .line 63
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v2, 0x6

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaX:I

    .line 64
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/4 v2, 0x7

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaY:I

    .line 65
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v2, 0x8

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaGravity:I

    .line 66
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    const/16 v2, 0x9

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaBehindKeyboard:I

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieOnLockScreen:I

    const/16 v2, 0xb

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklistPie:I

    .line 71
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklistPie:I

    .line 72
    new-instance v0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v9, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v12, v1, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieActivation:I

    const/4 v13, 0x0

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v1, "Pie Activation"

    invoke-virtual {p1, v1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 74
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Pie colors"

    const-string v1, "0 = blue, 1 = red, 2 = grey, 3 = none, 4 = white, 5 = magenta/yellow, 6 = green/outline, 7 = red/outline, default = 0"

    .line 75
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie inner radius"

    const-string v1, "Radius in dip, default = 60"

    .line 76
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie outer radius"

    const-string v1, "Radius in dip, default = 80"

    .line 77
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie shift size"

    const-string v1, "Size of the pie shift effect in pixel, default = 0"

    .line 78
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie outline size"

    const-string v1, "Size of the outline in pixel, default = 3"

    .line 79
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie slice gap"

    const-string v1, "Size of the gap between two pie slices, default = 0"

    .line 80
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie start gap"

    const-string v1, "Size of the gap between pie and border, default = 0"

    .line 81
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieStyle:I

    .line 83
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieColor:I

    .line 84
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieInnerRadius:I

    .line 85
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieOuterRadius:I

    .line 86
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShiftSize:I

    .line 87
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieOutlineSize:I

    .line 88
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieSliceGap:I

    .line 89
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieStartGap:I

    .line 90
    new-instance v0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v8, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v11, v1, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieStyle:I

    const/4 v12, 0x0

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v1, "Pie Style"

    invoke-virtual {p1, v1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 92
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Longpress time"

    const-string v1, "Min time for longpress in ms, default = 500"

    .line 93
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Animation time"

    const-string v1, "Time for the pie animation in ms, default = 80"

    .line 94
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Feedback type"

    const-string v1, "Configure the pie feedback for diffent actions, default = longpress"

    .line 95
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Vibration Time"

    const-string v1, "Define the vibration time in ms, default = 30"

    .line 96
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Multi command"

    const-string v1, "Configure if actions should be fired multiple times when swiping on item, default = disabled"

    .line 97
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Expand trigger area"

    const-string v1, "Configure if the action trigger area should be expanded to the full screen for the outer pie ring, default = enabled"

    .line 98
    invoke-static {v0, v1}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieBehavior:I

    .line 100
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieLongpress:I

    .line 101
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAnimation:I

    .line 102
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrate:I

    .line 103
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrationTime:I

    .line 104
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieMultiCommand:I

    .line 105
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieExpandTriggerArea:I

    .line 106
    new-instance v0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v8, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v11, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieBehavior:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v2, "Pie Behavior"

    invoke-virtual {p1, v2, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 108
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Rotate images"

    const-string v2, "Rotate icons based on pie angle"

    .line 109
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Set nav button style"

    const-string v2, "Switch between different icon sets for the nav buttons"

    .line 110
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Show and scale app images"

    const-string v2, "0 = disabled, 1 = enabled (no filter), 2 = enabled, >2 = image size in pixel, default = enabled"

    .line 111
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Show and scale user images"

    const-string v2, "0 = disabled, 1 = enabled (no filter), 2 = enabled, >2 = image size in pixel, default = disabled"

    .line 112
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Set user image search path"

    const-string v2, "default = /storage/emulated/0/Android/data/com.noname81.lmt/files/ (Leave blank to set default)"

    .line 113
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieIcons:I

    .line 115
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieRotateImages:I

    .line 116
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieNavButtonStyle:I

    .line 117
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleAppImages:I

    .line 118
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleUserImages:I

    .line 119
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieUserImageSearchPath:I

    .line 120
    new-instance v0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v8, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v11, v2, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieIcons:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v2, "Pie Icons"

    invoke-virtual {p1, v2, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 122
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "Pie pointer edge activation"

    const-string v2, "Configure if the pie pointer feature can be activated from the edges, default = disabled"

    .line 123
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie pointer warp factor"

    const-string v2, "Configure the warp factor for the pie pointer feature,\ndefault = 300%, min = 200%, max = 1000%"

    .line 124
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie pointer color"

    const-string v2, "0 = blue, default = 0"

    .line 125
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Show status infos"

    const-string v2, "Configure if status info feature should be shown, default = enabled"

    .line 126
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie status info colors"

    const-string v2, "0 = white, default = 0"

    .line 127
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pie status info font"

    const-string v2, "Configure the pie font, default = Roboto Light"

    .line 128
    invoke-static {v0, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieExtensions:I

    .line 130
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerFromEdges:I

    .line 131
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerWarpFactor:I

    .line 132
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerColor:I

    .line 133
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowStatusInfos:I

    .line 134
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoColor:I

    .line 135
    iget-object v0, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iput v1, v0, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoFont:I

    .line 136
    new-instance v0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;

    iget-object v8, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    iget v11, v1, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieExtensions:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V

    const-string v1, "Pie Extensions"

    invoke-virtual {p1, v1, v0}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 139
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewActivity;->mSettingsHelper:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/noname81/lmt/SettingsViewActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
