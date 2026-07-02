.class public Lcom/noname81/lmt/NotificationDataHelper$NotificationData;
.super Ljava/lang/Object;
.source "NotificationDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/NotificationDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationData"
.end annotation


# instance fields
.field mDeleteIntent:Landroid/app/PendingIntent;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mStartIntent:Landroid/app/PendingIntent;

.field mText:Ljava/lang/String;

.field mTime:J

.field final synthetic this$0:Lcom/noname81/lmt/NotificationDataHelper;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/NotificationDataHelper;Ljava/lang/String;JLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->this$0:Lcom/noname81/lmt/NotificationDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mName:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mTime:J

    .line 37
    iput-object p5, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mText:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mStartIntent:Landroid/app/PendingIntent;

    .line 39
    iput-object p7, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 40
    iput-object p8, p0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
