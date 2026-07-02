.class Lcom/noname81/lmt/NotificationDataHelper;
.super Ljava/lang/Object;
.source "NotificationDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/NotificationDataHelper$NotificationData;
    }
.end annotation


# static fields
.field private static instance:Lcom/noname81/lmt/NotificationDataHelper;


# instance fields
.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/noname81/lmt/NotificationDataHelper$NotificationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/noname81/lmt/NotificationDataHelper;
    .locals 1

    .line 50
    sget-object v0, Lcom/noname81/lmt/NotificationDataHelper;->instance:Lcom/noname81/lmt/NotificationDataHelper;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/noname81/lmt/NotificationDataHelper;

    invoke-direct {v0}, Lcom/noname81/lmt/NotificationDataHelper;-><init>()V

    sput-object v0, Lcom/noname81/lmt/NotificationDataHelper;->instance:Lcom/noname81/lmt/NotificationDataHelper;

    .line 53
    :cond_0
    sget-object v0, Lcom/noname81/lmt/NotificationDataHelper;->instance:Lcom/noname81/lmt/NotificationDataHelper;

    return-object v0
.end method


# virtual methods
.method addNotificationData(Ljava/lang/String;JLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Drawable;)V
    .locals 13

    move-object v9, p0

    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 58
    iget-object v1, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object v1, v1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object v1, v1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mName:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    move-object v2, p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 66
    iget-object v11, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    new-instance v12, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    move-object v0, v12

    move-object v1, p0

    move-wide v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;-><init>(Lcom/noname81/lmt/NotificationDataHelper;Ljava/lang/String;JLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    iget-object v0, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 70
    iget-object v0, v9, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method getNotificationDataName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object p1, p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mName:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method getNotificationDataSize()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getNotificationDataStartIntent(I)Landroid/app/PendingIntent;
    .locals 1

    if-ltz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object p1, p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mStartIntent:Landroid/app/PendingIntent;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getNotificationDataText(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object p1, p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mText:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method getNotificationDataTime(I)J
    .locals 2

    if-ltz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-wide v0, p1, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mTime:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method removeNotificationData(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object v0, v0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;

    iget-object v0, v0, Lcom/noname81/lmt/NotificationDataHelper$NotificationData;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/noname81/lmt/NotificationDataHelper;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method
