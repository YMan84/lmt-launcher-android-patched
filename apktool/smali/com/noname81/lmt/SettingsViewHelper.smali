.class Lcom/noname81/lmt/SettingsViewHelper;
.super Ljava/lang/Object;
.source "SettingsViewHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/SettingsViewHelper$SettingsSimpleAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mRootContext:Lcom/noname81/lmt/RootContext;

.field private mSettings:Lcom/noname81/lmt/SettingsValues;

.field private mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

.field posActivateTouchService:I

.field posAddBlacklist:I

.field posAddBlacklistPie:I

.field posAutoConfiguration:I

.field posAutostartTouchService:I

.field posClearBlacklist:I

.field posClearBlacklistPie:I

.field posFeedbackStyle:I

.field posMinPathLength:I

.field posMinScore:I

.field posOffsetGestureRecognition:I

.field posOffsetGestures:I

.field posOffsetIsas:I

.field posOffsetPieActivation:I

.field posOffsetPieBehavior:I

.field posOffsetPieExtensions:I

.field posOffsetPieIcons:I

.field posOffsetPieStyle:I

.field posOffsetTouchservice:I

.field posPieAnimation:I

.field posPieAreaBehindKeyboard:I

.field posPieAreaGravity:I

.field posPieAreaX:I

.field posPieAreaY:I

.field posPieColor:I

.field posPieExpandTriggerArea:I

.field posPieInnerRadius:I

.field posPieLongpress:I

.field posPieMultiCommand:I

.field posPieNavButtonStyle:I

.field posPieOnLockScreen:I

.field posPieOuterRadius:I

.field posPieOutlineSize:I

.field posPiePointerColor:I

.field posPiePointerFromEdges:I

.field posPiePointerWarpFactor:I

.field posPiePos:I

.field posPieRotateImages:I

.field posPieShiftSize:I

.field posPieShowScaleAppImages:I

.field posPieShowScaleUserImages:I

.field posPieShowStatusInfos:I

.field posPieSliceGap:I

.field posPieStartGap:I

.field posPieStatusInfoColor:I

.field posPieStatusInfoFont:I

.field posPieUserImageSearchPath:I

.field posPieVibrate:I

.field posPieVibrationTime:I

.field posSetInput:I

.field posSetMode:I

.field posSingleSwipesAArea:I

.field posSingleSwipesBBox:I

.field posSingleTouchGestures:I

.field posTouchscreenScreenFactorX:I

.field posTouchscreenScreenFactorY:I

.field posVibrationTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 44
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetTouchservice:I

    .line 45
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posActivateTouchService:I

    .line 46
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posAutostartTouchService:I

    .line 47
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posSetMode:I

    .line 49
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetGestureRecognition:I

    .line 50
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posAutoConfiguration:I

    .line 51
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posSetInput:I

    .line 52
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posTouchscreenScreenFactorX:I

    .line 53
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posTouchscreenScreenFactorY:I

    .line 55
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetGestures:I

    .line 57
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posFeedbackStyle:I

    .line 58
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posVibrationTime:I

    .line 59
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posSingleTouchGestures:I

    .line 60
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posMinScore:I

    .line 61
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posMinPathLength:I

    .line 62
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklist:I

    .line 63
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklist:I

    .line 65
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetIsas:I

    .line 66
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posSingleSwipesBBox:I

    .line 67
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posSingleSwipesAArea:I

    .line 69
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieActivation:I

    .line 70
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePos:I

    .line 71
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaX:I

    .line 72
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaY:I

    .line 73
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaGravity:I

    .line 74
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaBehindKeyboard:I

    .line 75
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieOnLockScreen:I

    .line 76
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklistPie:I

    .line 77
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklistPie:I

    .line 79
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieStyle:I

    .line 80
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieColor:I

    .line 81
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieInnerRadius:I

    .line 82
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieOuterRadius:I

    .line 83
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShiftSize:I

    .line 84
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieOutlineSize:I

    .line 85
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieSliceGap:I

    .line 86
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieStartGap:I

    .line 88
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieBehavior:I

    .line 89
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieLongpress:I

    .line 90
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieAnimation:I

    .line 91
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrate:I

    .line 92
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrationTime:I

    .line 93
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieMultiCommand:I

    .line 94
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieExpandTriggerArea:I

    .line 96
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieIcons:I

    .line 97
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieRotateImages:I

    .line 98
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieNavButtonStyle:I

    .line 99
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleAppImages:I

    .line 100
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleUserImages:I

    .line 101
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieUserImageSearchPath:I

    .line 103
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posOffsetPieExtensions:I

    .line 104
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerFromEdges:I

    .line 105
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerWarpFactor:I

    .line 106
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerColor:I

    .line 107
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowStatusInfos:I

    .line 108
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoColor:I

    .line 109
    iput v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoFont:I

    .line 117
    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    .line 118
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 119
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/SettingsViewHelper;->mRootContext:Lcom/noname81/lmt/RootContext;

    .line 120
    invoke-static {p1}, Lcom/noname81/lmt/TouchServiceNative;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/TouchServiceNative;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/SettingsViewHelper;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/SettingsValues;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-object p0
.end method

.method static synthetic access$100(Lcom/noname81/lmt/SettingsViewHelper;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/noname81/lmt/SettingsViewHelper;)Lcom/noname81/lmt/TouchServiceNative;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/noname81/lmt/SettingsViewHelper;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    return-object p0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p3

    const-string v1, ","

    const-string v2, "max"

    .line 125
    iget v3, v7, Lcom/noname81/lmt/SettingsViewHelper;->posActivateTouchService:I

    if-ne v0, v3, :cond_1

    .line 126
    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->getServiceState()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->startService()V

    goto/16 :goto_4

    .line 130
    :cond_0
    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->stopService()V

    goto/16 :goto_4

    .line 133
    :cond_1
    iget v3, v7, Lcom/noname81/lmt/SettingsViewHelper;->posAutostartTouchService:I

    const-string v4, "Enabled"

    const-string v5, "Disabled"

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v3, :cond_2

    .line 134
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$1;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Autostart service"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 137
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadAutostart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$1;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 151
    :cond_2
    iget v3, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSetMode:I

    const/4 v10, 0x3

    if-ne v0, v3, :cond_3

    .line 152
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$2;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Define feature set"

    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "Gestures [Root] and ISAS [Root] "

    aput-object v0, v4, v8

    const-string v0, "Gestures [Root] , ISAS [Root] and Pie"

    aput-object v0, v4, v9

    const-string v0, "Pie"

    aput-object v0, v4, v6

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 155
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$2;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 171
    :cond_3
    iget v3, v7, Lcom/noname81/lmt/SettingsViewHelper;->posAutoConfiguration:I

    const/high16 v11, 0x42c80000    # 100.0f

    if-ne v0, v3, :cond_8

    .line 173
    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v3, "getevent -p | grep -E \'(device|name|0035|0036)\'"

    invoke-virtual {v0, v3, v9}, Lcom/noname81/lmt/RootContext;->runCommandResult(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    :try_start_0
    const-string v4, "\n"

    .line 180
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v10, -0x1

    .line 181
    :goto_0
    array-length v12, v0

    sub-int/2addr v12, v9

    if-ge v4, v12, :cond_7

    .line 182
    aget-object v12, v0, v4

    const-string v13, "0035"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v12, v4, 0x1

    aget-object v13, v0, v12

    const-string v14, "0036"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v6, v4, -0x1

    :goto_1
    if-ltz v6, :cond_5

    .line 185
    aget-object v10, v0, v6

    const-string v13, "/dev/input"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 187
    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 192
    :cond_5
    :goto_2
    iget-object v6, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v10, "window"

    invoke-virtual {v6, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 193
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 196
    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 197
    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 199
    aget-object v13, v0, v4

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 200
    aget-object v14, v0, v4

    invoke-virtual {v14, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 201
    aget-object v15, v0, v4

    add-int/lit8 v13, v13, 0x4

    invoke-virtual {v15, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-float v13, v13

    int-to-float v6, v6

    div-float/2addr v13, v6

    mul-float v13, v13, v11

    .line 202
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 204
    aget-object v13, v0, v12

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 205
    aget-object v14, v0, v12

    invoke-virtual {v14, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 206
    aget-object v12, v0, v12

    add-int/lit8 v13, v13, 0x4

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    int-to-float v10, v10

    div-float/2addr v12, v10

    mul-float v12, v12, v11

    .line 207
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    move v3, v5

    goto :goto_3

    :catch_0
    const/4 v6, -0x1

    const/4 v10, -0x1

    .line 220
    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Do you want to use these values?"

    .line 221
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nTouchscreen/screen factor x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nTouchscreen/screen factor y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$4;

    invoke-direct {v1, v7, v3, v6, v10}, Lcom/noname81/lmt/SettingsViewHelper$4;-><init>(Lcom/noname81/lmt/SettingsViewHelper;III)V

    const-string v2, "ok"

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/noname81/lmt/SettingsViewHelper$3;

    invoke-direct {v1, v7}, Lcom/noname81/lmt/SettingsViewHelper$3;-><init>(Lcom/noname81/lmt/SettingsViewHelper;)V

    const-string v2, "cancel"

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4

    .line 244
    :cond_8
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSetInput:I

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    if-ne v0, v1, :cond_9

    .line 245
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$5;

    iget-object v4, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v5, "Set input device"

    const/16 v0, 0x15

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Input device 0"

    aput-object v0, v1, v8

    const-string v0, "Input device 1"

    aput-object v0, v1, v9

    const-string v0, "Input device 2"

    aput-object v0, v1, v6

    const-string v0, "Input device 3"

    aput-object v0, v1, v10

    const-string v0, "Input device 4"

    aput-object v0, v1, v15

    const-string v0, "Input device 5"

    aput-object v0, v1, v14

    const-string v0, "Input device 6"

    aput-object v0, v1, v13

    const-string v0, "Input device 7"

    aput-object v0, v1, v12

    const-string v0, "Input device 8"

    aput-object v0, v1, v3

    const-string v0, "Input device 9"

    aput-object v0, v1, v2

    const/16 v0, 0xa

    const-string v2, "Input device 10"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "Input device 11"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "Input device 12"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "Input device 13"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "Input device 14"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "Input device 15"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "Input device 16"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "Input device 17"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "Input device 18"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "Input device 19"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "Input device 20"

    aput-object v2, v1, v0

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 254
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadInputDevice()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v11

    move-object v8, v1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$5;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 270
    :cond_9
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklist:I

    if-ne v0, v1, :cond_a

    .line 271
    sput v10, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/noname81/lmt/MultiSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    iget-object v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 275
    :cond_a
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklist:I

    if-ne v0, v1, :cond_b

    .line 276
    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->clearBlacklisted()V

    goto/16 :goto_4

    .line 278
    :cond_b
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posAddBlacklistPie:I

    if-ne v0, v1, :cond_c

    .line 279
    sput v15, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    .line 280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/noname81/lmt/MultiSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    iget-object v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 283
    :cond_c
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posClearBlacklistPie:I

    if-ne v0, v1, :cond_d

    .line 284
    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->clearBlacklistedPie()V

    goto/16 :goto_4

    .line 286
    :cond_d
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posFeedbackStyle:I

    if-ne v0, v1, :cond_e

    .line 287
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$6;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Feedback style"

    new-array v4, v15, [Ljava/lang/String;

    const-string v0, "No feedback"

    aput-object v0, v4, v8

    const-string v0, "Debug overlay"

    aput-object v0, v4, v9

    const-string v0, "Image overlay"

    aput-object v0, v4, v6

    const-string v0, "Tactile feedback"

    aput-object v0, v4, v10

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 290
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadFeedbackMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$6;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 304
    :cond_e
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posVibrationTime:I

    if-ne v0, v1, :cond_f

    .line 305
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$7;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Vibration time"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 308
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadGestureVibrationTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$7;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 323
    :cond_f
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSingleTouchGestures:I

    if-ne v0, v1, :cond_10

    .line 324
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$8;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Single touch gestures"

    new-array v5, v6, [Ljava/lang/String;

    const-string v0, "Disbaled"

    aput-object v0, v5, v8

    aput-object v4, v5, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 327
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadSingleTouchGestureSupport()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$8;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 341
    :cond_10
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posMinScore:I

    if-ne v0, v1, :cond_11

    .line 342
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$9;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Min gesture score"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 345
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadMinScore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$9;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 361
    :cond_11
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posMinPathLength:I

    if-ne v0, v1, :cond_12

    .line 362
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$10;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Min gesture path length"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 365
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadMinPathLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$10;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 381
    :cond_12
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSingleSwipesBBox:I

    if-ne v0, v1, :cond_13

    .line 382
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$11;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Min bbox size"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 385
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadSingleSwipesBBox()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$11;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 401
    :cond_13
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posSingleSwipesAArea:I

    if-ne v0, v1, :cond_14

    .line 402
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$12;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Activation area thickness"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 405
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadSingleSwipesAArea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$12;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 418
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 420
    :cond_14
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posTouchscreenScreenFactorX:I

    if-ne v0, v1, :cond_15

    .line 421
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$13;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Touchscreen to screen factor X"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 424
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadTouchscreenScreenFactorX()F

    move-result v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$13;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 437
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 439
    :cond_15
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posTouchscreenScreenFactorY:I

    if-ne v0, v1, :cond_16

    .line 440
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$14;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Touchscreen to screen factor Y"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 443
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadTouchscreenScreenFactorY()F

    move-result v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$14;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 456
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 458
    :cond_16
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPiePos:I

    const-string v11, "Bottom"

    if-ne v0, v1, :cond_17

    .line 459
    new-instance v16, Lcom/noname81/lmt/SettingsViewHelper$15;

    iget-object v4, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v5, "Activation area position"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "Right"

    aput-object v0, v2, v8

    const-string v0, "Left"

    aput-object v0, v2, v9

    aput-object v11, v2, v6

    const-string v0, "Bottom\n(not centered)"

    aput-object v0, v2, v10

    const-string v0, "Left and right"

    aput-object v0, v2, v15

    const-string v0, "Left and bottom"

    aput-object v0, v2, v14

    const-string v0, "Right and bottom"

    aput-object v0, v2, v13

    const-string v0, "Left, right and bottom"

    aput-object v0, v2, v12

    const-string v0, "Left, right and bottom\n(not centered)"

    aput-object v0, v2, v3

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 470
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPiePos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$15;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {v16 .. v16}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 486
    :cond_17
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaX:I

    if-ne v0, v1, :cond_18

    .line 487
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$16;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Activation area thickness"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 490
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$16;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 505
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 507
    :cond_18
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaY:I

    if-ne v0, v1, :cond_19

    .line 508
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$17;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Activation area length"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 511
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$17;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 526
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 528
    :cond_19
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaGravity:I

    if-ne v0, v1, :cond_1a

    .line 529
    new-instance v12, Lcom/noname81/lmt/SettingsViewHelper$18;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Activation area gravity"

    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "Center"

    aput-object v0, v4, v8

    const-string v0, "Top"

    aput-object v0, v4, v9

    aput-object v11, v4, v6

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 532
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaGravity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$18;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v12}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 548
    :cond_1a
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieAreaBehindKeyboard:I

    if-ne v0, v1, :cond_1b

    .line 549
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$19;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Set pie area behind keyboard"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 552
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaBehindKeyboard()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$19;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 567
    :cond_1b
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieOnLockScreen:I

    if-ne v0, v1, :cond_1c

    .line 568
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$20;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Set pie on lockscreen"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 571
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieOnLockScreen()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$20;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 586
    :cond_1c
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieColor:I

    if-ne v0, v1, :cond_1d

    .line 587
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$21;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie colors"

    new-array v4, v12, [Ljava/lang/String;

    const-string v0, "normal color"

    aput-object v0, v4, v8

    const-string v0, "selected color"

    aput-object v0, v4, v9

    const-string v0, "icon color"

    aput-object v0, v4, v6

    const-string v0, "outline color"

    aput-object v0, v4, v10

    const-string v0, "gradient color"

    aput-object v0, v4, v15

    const-string v0, "gradient outline color"

    aput-object v0, v4, v14

    const-string v0, "shift color"

    aput-object v0, v4, v13

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 590
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieColor()Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$21;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v11}, Lcom/noname81/lmt/ColorDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 601
    :cond_1d
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoColor:I

    if-ne v0, v1, :cond_1e

    .line 602
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$22;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie status info colors"

    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "clock color"

    aput-object v0, v4, v8

    const-string v0, "notification color"

    aput-object v0, v4, v9

    const-string v0, "dim color"

    aput-object v0, v4, v6

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 605
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieStatusInfoColor()Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$22;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v11}, Lcom/noname81/lmt/ColorDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 616
    :cond_1e
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerColor:I

    if-ne v0, v1, :cond_1f

    .line 617
    new-instance v6, Lcom/noname81/lmt/SettingsViewHelper$23;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie pointer colors"

    new-array v4, v9, [Ljava/lang/String;

    const-string v0, "pointer color"

    aput-object v0, v4, v8

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 620
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerColor()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$23;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {v6}, Lcom/noname81/lmt/ColorDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 631
    :cond_1f
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieStatusInfoFont:I

    if-ne v0, v1, :cond_20

    .line 632
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$24;

    iget-object v4, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v5, "Pie font"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "Roboto Thin (small)"

    aput-object v0, v2, v8

    const-string v0, "Roboto Thin (normal)"

    aput-object v0, v2, v9

    const-string v0, "Roboto Thin (big)"

    aput-object v0, v2, v6

    const-string v0, "Roboto Light (small)"

    aput-object v0, v2, v10

    const-string v0, "Roboto Light (normal)"

    aput-object v0, v2, v15

    const-string v0, "Roboto Light (big)"

    aput-object v0, v2, v14

    const-string v0, "System font (small)"

    aput-object v0, v2, v13

    const-string v0, "System font (normal)"

    aput-object v0, v2, v12

    const-string v0, "System font (big)"

    aput-object v0, v2, v3

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 637
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieFont()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$24;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 652
    :cond_20
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieInnerRadius:I

    if-ne v0, v1, :cond_21

    .line 653
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$25;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie inner radius"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 656
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieInnerRadius()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$25;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 670
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 672
    :cond_21
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieOuterRadius:I

    if-ne v0, v1, :cond_22

    .line 673
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$26;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie outer radius"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 676
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieOuterRadius()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$26;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 690
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 692
    :cond_22
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieShiftSize:I

    if-ne v0, v1, :cond_23

    .line 693
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$27;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie shift size"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 696
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShiftSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$27;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 710
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 712
    :cond_23
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieOutlineSize:I

    if-ne v0, v1, :cond_24

    .line 713
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$28;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie outline size"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 716
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieOutlineSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$28;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 730
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 732
    :cond_24
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieSliceGap:I

    if-ne v0, v1, :cond_25

    .line 733
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$29;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie slice gap"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 736
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieSliceGap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$29;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 750
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 752
    :cond_25
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieStartGap:I

    if-ne v0, v1, :cond_26

    .line 753
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$30;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie start gap"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 756
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieStartGap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$30;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 770
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 772
    :cond_26
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieLongpress:I

    if-ne v0, v1, :cond_27

    .line 773
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$31;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Longpress time"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 776
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieLongpress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$31;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 790
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 792
    :cond_27
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieAnimation:I

    if-ne v0, v1, :cond_28

    .line 793
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$32;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Animation time"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 796
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieAnimation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$32;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 810
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 812
    :cond_28
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrate:I

    if-ne v0, v1, :cond_29

    .line 813
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$33;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Feedback type"

    new-array v4, v14, [Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v0, "Only longpress"

    aput-object v0, v4, v9

    const-string v0, "Shortpress and longpress"

    aput-object v0, v4, v6

    const-string v0, "Longpress and fire"

    aput-object v0, v4, v10

    const-string v0, "Shortpress, longpress and fire"

    aput-object v0, v4, v15

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 816
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$33;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 831
    :cond_29
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieVibrationTime:I

    if-ne v0, v1, :cond_2a

    .line 832
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$34;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Pie vibration time"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 835
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieVibrationTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$34;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 848
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 850
    :cond_2a
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieMultiCommand:I

    if-ne v0, v1, :cond_2b

    .line 851
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$35;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Multi command"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 854
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieMultiCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$35;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 869
    :cond_2b
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieExpandTriggerArea:I

    if-ne v0, v1, :cond_2c

    .line 870
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$36;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Expand trigger area"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 873
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieExpandTriggerArea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$36;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 888
    :cond_2c
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerFromEdges:I

    if-ne v0, v1, :cond_2d

    .line 889
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$37;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Show pointer"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 892
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerFromEdges()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$37;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 907
    :cond_2d
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPiePointerWarpFactor:I

    if-ne v0, v1, :cond_2e

    .line 908
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$38;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Set pie pointer warp factor"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 911
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPiePointerWarpFactor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$38;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 925
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 927
    :cond_2e
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowStatusInfos:I

    if-ne v0, v1, :cond_2f

    .line 928
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$39;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Show status infos"

    new-array v4, v15, [Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v0, "Enabled along pie"

    aput-object v0, v4, v9

    const-string v0, "Enabled horizontal"

    aput-object v0, v4, v6

    const-string v0, "Enabled with sensor control"

    aput-object v0, v4, v10

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 931
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowStatusInfos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$39;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 946
    :cond_2f
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieRotateImages:I

    if-ne v0, v1, :cond_30

    .line 947
    new-instance v10, Lcom/noname81/lmt/SettingsViewHelper$40;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Set rotate Images"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    aput-object v4, v6, v9

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 950
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieRotateImages()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$40;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v10}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 965
    :cond_30
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieNavButtonStyle:I

    if-ne v0, v1, :cond_31

    .line 966
    new-instance v11, Lcom/noname81/lmt/SettingsViewHelper$41;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Set nav button style"

    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "Android Lollipop"

    aput-object v0, v4, v8

    const-string v0, "Android KitKat"

    aput-object v0, v4, v9

    const-string v0, "Google Pixel"

    aput-object v0, v4, v6

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 969
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieNavButtonStyle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/noname81/lmt/SettingsViewHelper$41;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {v11}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 984
    :cond_31
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleAppImages:I

    if-ne v0, v1, :cond_32

    .line 985
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$42;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Show and scale app images"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 988
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleAppImages()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$42;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1002
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 1004
    :cond_32
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieShowScaleUserImages:I

    if-ne v0, v1, :cond_33

    .line 1005
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$43;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "Show and scale user images"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 1008
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadPieShowScaleUserImages()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$43;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1022
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    goto :goto_4

    .line 1024
    :cond_33
    iget v1, v7, Lcom/noname81/lmt/SettingsViewHelper;->posPieUserImageSearchPath:I

    if-ne v0, v1, :cond_34

    .line 1025
    new-instance v8, Lcom/noname81/lmt/SettingsViewHelper$44;

    iget-object v2, v7, Lcom/noname81/lmt/SettingsViewHelper;->mActivity:Landroid/app/Activity;

    const-string v3, "User image search path"

    const-string v4, "Set new value"

    iget-object v0, v7, Lcom/noname81/lmt/SettingsViewHelper;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 1028
    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadResourceSearchPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/noname81/lmt/SettingsViewHelper$44;-><init>(Lcom/noname81/lmt/SettingsViewHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1038
    invoke-virtual {v8}, Lcom/noname81/lmt/InputDialog;->show()Landroid/app/AlertDialog;

    :cond_34
    :goto_4
    return-void
.end method
