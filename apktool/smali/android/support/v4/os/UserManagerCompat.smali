.class public Landroid/support/v4/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 40
    invoke-static {}, Landroid/support/v4/app/Person$$ExternalSyntheticApiModelOutline0;->m$7()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/os/TraceCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/os/TraceCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/UserManager;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
