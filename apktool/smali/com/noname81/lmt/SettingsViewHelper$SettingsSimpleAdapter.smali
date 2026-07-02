.class public Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SettingsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/SettingsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsSimpleAdapter"
.end annotation


# static fields
.field static final listitem_description_button:I = 0x7f050100


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOffset:I

.field private mSimpleUI:Z

.field final synthetic this$0:Lcom/noname81/lmt/SettingsViewHelper;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;IZ)V"
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    .line 1049
    sget v3, Lcom/noname81/lmt/R$layout;->listitem_description:I

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "title"

    aput-object v0, v4, p1

    const/4 p1, 0x1

    const-string v0, "caption"

    aput-object v0, v4, p1

    sget p1, Lcom/noname81/lmt/R$id;->listitem_description_text:I

    sget v0, Lcom/noname81/lmt/R$id;->listitem_description_caption:I

    filled-new-array {p1, v0}, [I

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 1052
    iput-object p2, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    .line 1053
    iput-boolean p5, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mSimpleUI:Z

    .line 1054
    iput p4, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mOffset:I

    return-void
.end method


# virtual methods
.method addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2

    const v0, 0x7f050100

    .line 1180
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1184
    iget-boolean v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mSimpleUI:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1186
    :cond_0
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1189
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setId(I)V

    const/16 p1, 0x1e

    const/4 v0, 0x0

    .line 1190
    invoke-virtual {v1, v0, v0, p1, v0}, Landroid/widget/CompoundButton;->setPadding(IIII)V

    .line 1191
    invoke-virtual {v1, p4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1192
    invoke-virtual {v1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1194
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p3, 0x800015

    .line 1197
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1198
    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1058
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1059
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    .line 1061
    iget v0, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mOffset:I

    add-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1062
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posActivateTouchService:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->getServiceState()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$1;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 1073
    :cond_1
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posAutostartTouchService:I

    if-ne p1, v1, :cond_3

    .line 1074
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadAutostart()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$2;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$2;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 1084
    :cond_3
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posSingleTouchGestures:I

    if-ne p1, v1, :cond_5

    .line 1085
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadSingleTouchGestureSupport()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$3;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$3;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 1097
    :cond_5
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaBehindKeyboard:I

    if-ne p1, v1, :cond_7

    .line 1098
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaBehindKeyboard()I

    move-result v1

    if-lez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$4;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 1110
    :cond_7
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posPieOnLockScreen:I

    if-ne p1, v1, :cond_9

    .line 1111
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieOnLockScreen()I

    move-result v1

    if-lez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$5;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$5;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_9

    .line 1123
    :cond_9
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posPieRotateImages:I

    if-ne p1, v1, :cond_b

    .line 1124
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieRotateImages()I

    move-result v1

    if-lez v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$6;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$6;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_9

    .line 1136
    :cond_b
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posPieExpandTriggerArea:I

    if-ne p1, v1, :cond_d

    .line 1137
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieExpandTriggerArea()I

    move-result v1

    if-lez v1, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$7;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$7;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_9

    .line 1148
    :cond_d
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerFromEdges:I

    if-ne p1, v1, :cond_f

    .line 1149
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerFromEdges()I

    move-result v1

    if-lez v1, :cond_e

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$8;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$8;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_9

    .line 1161
    :cond_f
    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    iget v1, v1, Lcom/noname81/lmt/SettingsViewHelper;->posPieMultiCommand:I

    if-ne p1, v1, :cond_11

    .line 1162
    iget-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->this$0:Lcom/noname81/lmt/SettingsViewHelper;

    invoke-static {v1}, Lcom/noname81/lmt/SettingsViewHelper;->access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieMultiCommand()I

    move-result v1

    if-lez v1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$9;

    invoke-direct {v1, p0}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter$9;-><init>(Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_11
    :goto_9
    return-object p2
.end method
