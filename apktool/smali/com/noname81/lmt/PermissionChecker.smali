.class Lcom/noname81/lmt/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static DRAW_OVER_APPS_REQUEST_CODE:I = 0x155d

.field private static final TAG:Ljava/lang/String; = "LMT::PermissionChecker"

.field static USAGE_STATS_REQUEST_CODE:I = 0x155e

.field private static instance:Lcom/noname81/lmt/PermissionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/noname81/lmt/PermissionChecker;
    .locals 1

    .line 45
    sget-object v0, Lcom/noname81/lmt/PermissionChecker;->instance:Lcom/noname81/lmt/PermissionChecker;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/noname81/lmt/PermissionChecker;

    invoke-direct {v0}, Lcom/noname81/lmt/PermissionChecker;-><init>()V

    sput-object v0, Lcom/noname81/lmt/PermissionChecker;->instance:Lcom/noname81/lmt/PermissionChecker;

    .line 48
    :cond_0
    sget-object v0, Lcom/noname81/lmt/PermissionChecker;->instance:Lcom/noname81/lmt/PermissionChecker;

    return-object v0
.end method


# virtual methods
.method checkAndRequestDrawOverAppsPermission(Landroid/app/Activity;Z)Z
    .locals 3

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasDrawOverAppsPermission(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 135
    sget p2, Lcom/noname81/lmt/R$string;->app_please_grant_draw_over_apps_permission:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 136
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 137
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    sget v0, Lcom/noname81/lmt/PermissionChecker;->DRAW_OVER_APPS_REQUEST_CODE:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method checkAndRequestExternalStorageReadPermission(Landroid/app/Activity;Z)Z
    .locals 3

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageReadPermission(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget v0, Lcom/noname81/lmt/R$string;->app_please_grant_external_storage_read_permission:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    invoke-static {p1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageReadPermission(Landroid/content/Context;Z)Z

    move-result v2

    :cond_0
    return v2
.end method

.method checkAndRequestExternalStorageWritePermission(Landroid/app/Activity;Z)Z
    .locals 3

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageWritePermission(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget v0, Lcom/noname81/lmt/R$string;->app_please_grant_external_storage_write_permission:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 111
    invoke-static {p1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageWritePermission(Landroid/content/Context;Z)Z

    move-result v2

    :cond_0
    return v2
.end method

.method checkAndRequestPhoneCallPermission(Landroid/app/Activity;Z)Z
    .locals 3

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasPhoneCallPermission(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget v0, Lcom/noname81/lmt/R$string;->app_please_grant_phone_call_permission:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 65
    invoke-static {p1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasPhoneCallPermission(Landroid/content/Context;Z)Z

    move-result v2

    :cond_0
    return v2
.end method

.method checkAndRequestUsageStatsPermission(Landroid/app/Activity;Z)Z
    .locals 3

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/PermissionChecker;->hasUsageStatsPermission(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 163
    sget p2, Lcom/noname81/lmt/R$string;->app_please_grant_usage_stats_permission:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 164
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 165
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    sget v0, Lcom/noname81/lmt/PermissionChecker;->USAGE_STATS_REQUEST_CODE:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method hasDrawOverAppsPermission(Landroid/content/Context;Z)Z
    .locals 2

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 122
    invoke-static {p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "hasDrawOverAppsPermission("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LMT::PermissionChecker"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method hasExternalStorageReadPermission(Landroid/content/Context;Z)Z
    .locals 3

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 76
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasExternalStorageReadPermission("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LMT::PermissionChecker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method hasExternalStorageWritePermission(Landroid/content/Context;Z)Z
    .locals 3

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 99
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasExternalStorageWritePermission("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LMT::PermissionChecker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method hasPhoneCallPermission(Landroid/content/Context;Z)Z
    .locals 3

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.CALL_PHONE"

    .line 54
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasPhoneCallPermission("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LMT::PermissionChecker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method hasUsageStatsPermission(Landroid/content/Context;Z)Z
    .locals 4

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "appops"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/AppOpsManager;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android:get_usage_stats"

    invoke-static {v0, v3, v1, p1}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasUsageStatsPermission("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LMT::PermissionChecker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method
