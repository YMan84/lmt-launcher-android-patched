.class public Lcom/noname81/lmt/AccessibilityHandler;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AccessibilityHandler.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LMT::Accessibility"

.field private static instance:Lcom/noname81/lmt/AccessibilityHandler; = null

.field private static mInitialized:Z = false


# instance fields
.field private mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->DEBUG:Z

    return v0
.end method

.method private static createClick(FF)Landroid/accessibilityservice/GestureDescription;
    .locals 6

    .line 132
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 133
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    new-instance p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 135
    new-instance p1, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {p1}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 136
    invoke-static {p1, p0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/accessibilityservice/GestureDescription$Builder;Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 137
    invoke-static {p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/accessibilityservice/GestureDescription$Builder;)Landroid/accessibilityservice/GestureDescription;

    move-result-object p0

    return-object p0
.end method

.method static isAccessibilityAvailable(Landroid/content/Context;Z)Z
    .locals 3

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->mInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/noname81/lmt/AccessibilityHandler;->instance:Lcom/noname81/lmt/AccessibilityHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 112
    sget p1, Lcom/noname81/lmt/R$string;->accessibility_service_activate:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 113
    sget p0, Lcom/noname81/lmt/R$string;->accessibility_service_activate:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LMT::Accessibility"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method static performAction(I)V
    .locals 3

    .line 120
    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->DEBUG:Z

    const-string v1, "LMT::Accessibility"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "performAction("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->mInitialized:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/noname81/lmt/AccessibilityHandler;->instance:Lcom/noname81/lmt/AccessibilityHandler;

    if-eqz v0, :cond_1

    .line 122
    invoke-static {v0, p0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Lcom/noname81/lmt/AccessibilityHandler;I)Z

    move-result p0

    .line 123
    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static performClick(FF)V
    .locals 3

    .line 142
    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->DEBUG:Z

    const-string v1, "LMT::Accessibility"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "performClick(x "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->mInitialized:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/noname81/lmt/AccessibilityHandler;->instance:Lcom/noname81/lmt/AccessibilityHandler;

    if-eqz v0, :cond_1

    .line 144
    invoke-static {p0, p1}, Lcom/noname81/lmt/AccessibilityHandler;->createClick(FF)Landroid/accessibilityservice/GestureDescription;

    move-result-object p0

    new-instance p1, Lcom/noname81/lmt/AccessibilityHandler$1;

    invoke-direct {p1}, Lcom/noname81/lmt/AccessibilityHandler$1;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v2}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Lcom/noname81/lmt/AccessibilityHandler;Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result p0

    .line 158
    sget-boolean p1, Lcom/noname81/lmt/AccessibilityHandler;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "gesture result: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static setDebug(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    sput-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 13

    .line 48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.app.Notification"

    invoke-static {v0, v1}, Lcom/noname81/lmt/AccessibilityHandler$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/noname81/lmt/AccessibilityHandler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 58
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    iget v5, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v1

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    move-object v12, v4

    :goto_0
    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    add-long v7, v1, v4

    .line 70
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 71
    :cond_1
    sget p1, Lcom/noname81/lmt/R$string;->pie_status_info_no_additional_info:I

    invoke-virtual {p0, p1}, Lcom/noname81/lmt/AccessibilityHandler;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v9, p1

    .line 74
    iget-object p1, p0, Lcom/noname81/lmt/AccessibilityHandler;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    if-nez p1, :cond_2

    .line 75
    invoke-static {}, Lcom/noname81/lmt/NotificationDataHelper;->getInstance()Lcom/noname81/lmt/NotificationDataHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/AccessibilityHandler;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    .line 77
    :cond_2
    iget-object v5, p0, Lcom/noname81/lmt/AccessibilityHandler;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    if-eqz v5, :cond_3

    .line 78
    iget-object v10, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v11, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v5 .. v12}, Lcom/noname81/lmt/NotificationDataHelper;->addNotificationData(Ljava/lang/String;JLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    sput-object v0, Lcom/noname81/lmt/AccessibilityHandler;->instance:Lcom/noname81/lmt/AccessibilityHandler;

    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->mInitialized:Z

    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .line 86
    sget-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 87
    sput-object p0, Lcom/noname81/lmt/AccessibilityHandler;->instance:Lcom/noname81/lmt/AccessibilityHandler;

    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/16 v1, 0x40

    .line 91
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/16 v1, 0x10

    .line 92
    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/noname81/lmt/AccessibilityHandler;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 94
    invoke-static {}, Lcom/noname81/lmt/NotificationDataHelper;->getInstance()Lcom/noname81/lmt/NotificationDataHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/noname81/lmt/AccessibilityHandler;->mNotificationDataHelper:Lcom/noname81/lmt/NotificationDataHelper;

    .line 95
    sput-object p0, Lcom/noname81/lmt/AccessibilityHandler;->instance:Lcom/noname81/lmt/AccessibilityHandler;

    const/4 v0, 0x1

    .line 96
    sput-boolean v0, Lcom/noname81/lmt/AccessibilityHandler;->mInitialized:Z

    return-void
.end method
