.class Lcom/noname81/lmt/TouchServiceNative;
.super Ljava/lang/Object;
.source "TouchServiceNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LMT::TouchServiceNative"

.field private static instance:Lcom/noname81/lmt/TouchServiceNative;


# instance fields
.field private mRootContext:Lcom/noname81/lmt/RootContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TouchServiceNative"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/TouchServiceNative;->mRootContext:Lcom/noname81/lmt/RootContext;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/noname81/lmt/TouchServiceNative;
    .locals 1

    .line 36
    sget-object v0, Lcom/noname81/lmt/TouchServiceNative;->instance:Lcom/noname81/lmt/TouchServiceNative;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/noname81/lmt/TouchServiceNative;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/TouchServiceNative;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noname81/lmt/TouchServiceNative;->instance:Lcom/noname81/lmt/TouchServiceNative;

    .line 39
    :cond_0
    sget-object p0, Lcom/noname81/lmt/TouchServiceNative;->instance:Lcom/noname81/lmt/TouchServiceNative;

    return-object p0
.end method


# virtual methods
.method native getServiceVersion()Ljava/lang/String;
.end method

.method native quit()V
.end method

.method native run()Lcom/noname81/lmt/TouchServiceResult;
.end method

.method native setDebug(I)I
.end method

.method native setInputDevice(Ljava/lang/String;)I
.end method

.method setInputDeviceUnlock(Ljava/lang/String;)I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/noname81/lmt/TouchServiceNative;->mRootContext:Lcom/noname81/lmt/RootContext;

    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/RootContext;->runCommandRemote(Ljava/lang/String;Z)Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lib version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/noname81/lmt/TouchServiceNative;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::TouchServiceNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Set input device"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/TouchServiceNative;->setInputDevice(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method native setMinPathLength(I)I
.end method

.method native setMinScore(I)I
.end method

.method native setOrientation(III)I
.end method

.method native setSingleSwipesBBox(I)I
.end method

.method native setSingleTouchGestureSupport(I)I
.end method
