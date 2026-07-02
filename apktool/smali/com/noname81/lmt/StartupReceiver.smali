.class public Lcom/noname81/lmt/StartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LMT::StartupReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/StartupReceiver;->startIfRequested(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method startIfRequested(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->loadAutostart()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "LMT::StartupReceiver"

    const-string v1, "Restarting TouchService"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Lcom/noname81/lmt/SettingsValues;->startService()V

    :cond_0
    return-void
.end method
