.class final Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "LMT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/LMT$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 141
    iput-object p2, p0, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object p0
.end method
