.class Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentTag"
.end annotation


# static fields
.field public static final Fragment:[I

.field public static final Fragment_id:I = 0x1

.field public static final Fragment_name:I = 0x0

.field public static final Fragment_tag:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x10100d0

    const v1, 0x10100d1

    const v2, 0x1010003

    .line 3800
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
