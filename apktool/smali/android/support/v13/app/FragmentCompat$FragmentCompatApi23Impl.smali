.class Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;
.super Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .line 143
    invoke-static {p1, p2, p3}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 0

    .line 148
    invoke-static {p1, p2}, Landroid/support/design/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
