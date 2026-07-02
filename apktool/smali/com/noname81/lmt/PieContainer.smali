.class public Lcom/noname81/lmt/PieContainer;
.super Ljava/lang/Object;
.source "PieContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/PieContainer$PieLayout;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LMT::PieContainer"


# instance fields
.field private mAddedLayout1:Z

.field private mAddedLayout2:Z

.field private mAddedLayout3:Z

.field private final mPieControl:Lcom/noname81/lmt/PieControl;

.field private final mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

.field private final mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

.field private final mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

.field private final mSettings:Lcom/noname81/lmt/SettingsValues;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    const-string v0, "window"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    .line 193
    new-instance v0, Lcom/noname81/lmt/PieControl;

    invoke-direct {v0, p1}, Lcom/noname81/lmt/PieControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieControl:Lcom/noname81/lmt/PieControl;

    .line 194
    new-instance v0, Lcom/noname81/lmt/PieContainer$PieLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/noname81/lmt/PieContainer$PieLayout;-><init>(Lcom/noname81/lmt/PieContainer;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    .line 195
    new-instance v0, Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-direct {v0, p0, p1, v1}, Lcom/noname81/lmt/PieContainer$PieLayout;-><init>(Lcom/noname81/lmt/PieContainer;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    .line 196
    new-instance v0, Lcom/noname81/lmt/PieContainer$PieLayout;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lcom/noname81/lmt/PieContainer$PieLayout;-><init>(Lcom/noname81/lmt/PieContainer;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    .line 197
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout1:Z

    .line 198
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout2:Z

    .line 199
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout3:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/noname81/lmt/PieContainer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-object p0
.end method

.method static synthetic access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/noname81/lmt/PieContainer;->mPieControl:Lcom/noname81/lmt/PieControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private getWindowFlags(I)I
    .locals 1

    const/16 v0, 0x20

    if-lez p1, :cond_0

    const/high16 p1, 0x20000

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    or-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private getWindowType(I)I
    .locals 2

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    if-lez p1, :cond_0

    const/16 p1, 0x7da

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d3

    :goto_0
    return p1

    :cond_1
    const/16 p1, 0x7f6

    return p1
.end method

.method static setDebug(Z)V
    .locals 0

    .line 50
    sput-boolean p0, Lcom/noname81/lmt/PieContainer;->DEBUG:Z

    return-void
.end method


# virtual methods
.method attachToWindowManager()V
    .locals 18

    move-object/from16 v0, p0

    .line 204
    sget-boolean v1, Lcom/noname81/lmt/PieContainer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LMT::PieContainer"

    const-string v2, "attachToWindowManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v1, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPiePos()I

    move-result v1

    .line 206
    iget-object v2, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaBehindKeyboard()I

    move-result v2

    .line 207
    iget-object v3, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadPieOnLockScreen()I

    move-result v3

    .line 208
    iget-object v4, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaGravity()I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_1

    .line 213
    iget-object v6, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v6}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    const/16 v7, 0x30

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ne v8, v4, :cond_2

    .line 217
    iget-object v4, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result v4

    div-int/lit8 v6, v4, 0xa

    const/16 v7, 0x50

    :cond_2
    const/4 v4, 0x4

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v9, 0x6

    if-lt v1, v9, :cond_4

    .line 222
    :cond_3
    iget-object v9, v0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    .line 225
    invoke-direct {v0, v3}, Lcom/noname81/lmt/PieContainer;->getWindowType(I)I

    move-result v14

    .line 226
    invoke-direct {v0, v2}, Lcom/noname81/lmt/PieContainer;->getWindowFlags(I)I

    move-result v16

    const/16 v17, -0x2

    move-object v11, v15

    move-object v8, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 222
    invoke-interface {v9, v10, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v8, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v8}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 231
    iget-object v9, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v9}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v9

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 232
    iget-object v9, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v9}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaY()I

    move-result v9

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const v9, 0x800005

    or-int/2addr v9, v7

    .line 233
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 234
    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 235
    iget-object v9, v0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-interface {v9, v10, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iput-boolean v5, v0, Lcom/noname81/lmt/PieContainer;->mAddedLayout1:Z

    :cond_4
    const/4 v8, 0x5

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_5

    if-eq v1, v8, :cond_5

    const/4 v4, 0x7

    if-lt v1, v4, :cond_6

    .line 240
    :cond_5
    iget-object v4, v0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    .line 243
    invoke-direct {v0, v3}, Lcom/noname81/lmt/PieContainer;->getWindowType(I)I

    move-result v13

    .line 244
    invoke-direct {v0, v2}, Lcom/noname81/lmt/PieContainer;->getWindowFlags(I)I

    move-result v14

    const/16 v16, -0x2

    move-object v10, v15

    move-object v8, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 240
    invoke-interface {v4, v9, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v4, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v4}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 249
    iget-object v8, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v8}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 250
    iget-object v8, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v8}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaY()I

    move-result v8

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const v8, 0x800003

    or-int/2addr v7, v8

    .line 251
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 252
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    iget-object v6, v0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iput-boolean v5, v0, Lcom/noname81/lmt/PieContainer;->mAddedLayout2:Z

    :cond_6
    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    const/4 v4, 0x5

    if-lt v1, v4, :cond_8

    .line 258
    :cond_7
    iget-object v1, v0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    .line 261
    invoke-direct {v0, v3}, Lcom/noname81/lmt/PieContainer;->getWindowType(I)I

    move-result v9

    .line 262
    invoke-direct {v0, v2}, Lcom/noname81/lmt/PieContainer;->getWindowFlags(I)I

    move-result v10

    const/4 v11, -0x2

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 258
    invoke-interface {v1, v4, v12}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v1, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v1}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 267
    iget-object v2, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaY()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 268
    iget-object v2, v0, Lcom/noname81/lmt/PieContainer;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x51

    .line 269
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 270
    iget-object v2, v0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iput-boolean v5, v0, Lcom/noname81/lmt/PieContainer;->mAddedLayout3:Z

    :cond_8
    return-void
.end method

.method public debug()V
    .locals 2

    .line 311
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout1:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/PieContainer$PieLayout;->debug(Z)V

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout2:Z

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/PieContainer$PieLayout;->debug(Z)V

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout3:Z

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/PieContainer$PieLayout;->debug(Z)V

    :cond_2
    return-void
.end method

.method removeFromWindowManager()V
    .locals 3

    .line 276
    sget-boolean v0, Lcom/noname81/lmt/PieContainer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::PieContainer"

    const-string v1, "removeFromWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 279
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout1:Z

    .line 281
    :cond_1
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout2:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 283
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout2:Z

    .line 285
    :cond_2
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout3:Z

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 287
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout3:Z

    :cond_3
    return-void
.end method

.method rotate()V
    .locals 2

    .line 292
    sget-boolean v0, Lcom/noname81/lmt/PieContainer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LMT::PieContainer"

    const-string v1, "rotate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout1:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout1:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieContainer$PieLayout;->shrinkLayout()V

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout2:Z

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout2:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieContainer$PieLayout;->shrinkLayout()V

    .line 299
    :cond_2
    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer;->mAddedLayout3:Z

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer;->mPieLayout3:Lcom/noname81/lmt/PieContainer$PieLayout;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieContainer$PieLayout;->shrinkLayout()V

    .line 304
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 305
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer;->removeFromWindowManager()V

    .line 306
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer;->attachToWindowManager()V

    :cond_4
    return-void
.end method
