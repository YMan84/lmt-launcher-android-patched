.class public Lcom/noname81/lmt/TouchService;
.super Landroid/app/Service;
.source "TouchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/TouchService$MessageHandler;,
        Lcom/noname81/lmt/TouchService$TouchServiceThread;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "LMT::TouchService"


# instance fields
.field private NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field private NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

.field private mLauncher:Lcom/noname81/lmt/Launcher;

.field private mMessageHandler:Lcom/noname81/lmt/TouchService$MessageHandler;

.field private mPieContainer:Lcom/noname81/lmt/PieContainer;

.field private mSettings:Lcom/noname81/lmt/SettingsValues;

.field private mToaster:Lcom/noname81/lmt/Toaster;

.field private mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

.field private mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "com.noname81.lmt.TouchService"

    .line 44
    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    const-string v0, "TouchService"

    .line 45
    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/noname81/lmt/TouchService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/TouchService$MessageHandler;-><init>(Lcom/noname81/lmt/TouchService;)V

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mMessageHandler:Lcom/noname81/lmt/TouchService$MessageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/TouchServiceNative;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    return-object p0
.end method

.method static synthetic access$100(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/TouchService$MessageHandler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/noname81/lmt/TouchService;->mMessageHandler:Lcom/noname81/lmt/TouchService$MessageHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/SettingsValues;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    return-object p0
.end method

.method static synthetic access$300(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/Toaster;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/noname81/lmt/TouchService;->mToaster:Lcom/noname81/lmt/Toaster;

    return-object p0
.end method

.method static synthetic access$400(Lcom/noname81/lmt/TouchService;)Lcom/noname81/lmt/Launcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/noname81/lmt/TouchService;->mLauncher:Lcom/noname81/lmt/Launcher;

    return-object p0
.end method


# virtual methods
.method createNotification()Landroid/app/Notification;
    .locals 5

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 199
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/noname81/lmt/TouchService;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 200
    invoke-virtual {p0, v2}, Lcom/noname81/lmt/TouchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 202
    invoke-static {v2, v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 207
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/noname81/lmt/LMT;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x309

    const/high16 v3, 0x4000000

    .line 209
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 210
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "Touch to open LMT"

    const-string v4, "LMT"

    if-lt v2, v1, :cond_1

    .line 211
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/noname81/lmt/R$drawable;->piewhite_s:I

    .line 215
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/noname81/lmt/TouchService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    .line 216
    invoke-static {v0, v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/noname81/lmt/R$drawable;->piewhite_s:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 225
    invoke-static {v0, v1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_2
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    :goto_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 273
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    iget-object p1, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->rotate()V

    .line 276
    iget-object p1, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 277
    iget-object p1, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->getOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 278
    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadTouchscreenScreenFactorX()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 279
    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadTouchscreenScreenFactorY()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 277
    invoke-virtual {p1, v0, v1, v2}, Lcom/noname81/lmt/TouchServiceNative;->setOrientation(III)I

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result p1

    if-lez p1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/noname81/lmt/TouchService;->mPieContainer:Lcom/noname81/lmt/PieContainer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/noname81/lmt/PieContainer;->rotate()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 6

    const-string v0, "TouchService created"

    const-string v1, "LMT::TouchService"

    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p0}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 139
    invoke-static {p0}, Lcom/noname81/lmt/Toaster;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Toaster;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mToaster:Lcom/noname81/lmt/Toaster;

    .line 140
    invoke-static {p0}, Lcom/noname81/lmt/Launcher;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mLauncher:Lcom/noname81/lmt/Launcher;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App version "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->rotate()V

    .line 147
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 148
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/noname81/lmt/TouchService$TouchServiceThread;

    const-string v2, "TouchServiceThread"

    invoke-direct {v0, p0, v2}, Lcom/noname81/lmt/TouchService$TouchServiceThread;-><init>(Lcom/noname81/lmt/TouchService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    if-nez v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/noname81/lmt/TouchServiceNative;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/TouchServiceNative;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;

    invoke-virtual {v0}, Lcom/noname81/lmt/TouchService$TouchServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadInputDeviceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/TouchServiceNative;->setInputDeviceUnlock(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadSingleTouchGestureSupport()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/TouchServiceNative;->setSingleTouchGestureSupport(I)I

    .line 157
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadSingleSwipesBBox()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/TouchServiceNative;->setSingleSwipesBBox(I)I

    .line 158
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadMinScore()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/TouchServiceNative;->setMinScore(I)I

    .line 159
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->loadMinPathLength()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/TouchServiceNative;->setMinPathLength(I)I

    .line 160
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    iget-object v2, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 161
    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadTouchscreenScreenFactorX()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 162
    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v5}, Lcom/noname81/lmt/SettingsValues;->loadTouchscreenScreenFactorY()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 160
    invoke-virtual {v0, v2, v3, v4}, Lcom/noname81/lmt/TouchServiceNative;->setOrientation(III)I

    .line 163
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;

    invoke-virtual {v0}, Lcom/noname81/lmt/TouchService$TouchServiceThread;->start()V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/noname81/lmt/PermissionChecker;->hasDrawOverAppsPermission(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mPieContainer:Lcom/noname81/lmt/PieContainer;

    if-nez v0, :cond_3

    .line 171
    new-instance v0, Lcom/noname81/lmt/PieContainer;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/PieContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/noname81/lmt/TouchService;->mPieContainer:Lcom/noname81/lmt/PieContainer;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mPieContainer:Lcom/noname81/lmt/PieContainer;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieContainer;->attachToWindowManager()V

    .line 174
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0}, Lcom/noname81/lmt/SettingsValues;->getVisiblePieActivationAreas()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mPieContainer:Lcom/noname81/lmt/PieContainer;

    invoke-virtual {v0}, Lcom/noname81/lmt/PieContainer;->debug()V

    .line 176
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0, v2}, Lcom/noname81/lmt/SettingsValues;->setVisiblePieActivationAread(Z)V

    .line 180
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v3}, Lcom/noname81/lmt/SettingsValues;->loadResourceSearchPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 184
    array-length v2, v3

    .line 186
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resource path "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v4}, Lcom/noname81/lmt/SettingsValues;->loadResourceSearchPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resource path is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "available"

    goto :goto_0

    :cond_6
    const-string v0, "not available"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " containing "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " file(s)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/SettingsValues;->setServiceState(I)V

    const/16 v0, 0x309

    .line 192
    invoke-virtual {p0}, Lcom/noname81/lmt/TouchService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/noname81/lmt/TouchService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "LMT stopped"

    const/4 v1, 0x0

    .line 247
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "LMT::TouchService"

    const-string v2, "TouchService stopped"

    .line 248
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceNative:Lcom/noname81/lmt/TouchServiceNative;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/noname81/lmt/TouchServiceNative;->quit()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/noname81/lmt/TouchService$TouchServiceThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mTouchServiceThread:Lcom/noname81/lmt/TouchService$TouchServiceThread;

    invoke-virtual {v0}, Lcom/noname81/lmt/TouchService$TouchServiceThread;->quit()Z

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mPieContainer:Lcom/noname81/lmt/PieContainer;

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Lcom/noname81/lmt/PieContainer;->removeFromWindowManager()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/noname81/lmt/TouchService;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v0, v1}, Lcom/noname81/lmt/SettingsValues;->setServiceState(I)V

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v0}, Lcom/noname81/lmt/TouchService;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "LMT started"

    const/4 p2, 0x0

    .line 237
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "LMT::TouchService"

    const-string p2, "TouchService started"

    .line 238
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
