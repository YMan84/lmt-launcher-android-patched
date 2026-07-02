.class Lcom/noname81/lmt/PieControl$PieItemAction;
.super Ljava/lang/Object;
.source "PieControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/PieControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PieItemAction"
.end annotation


# instance fields
.field mClickAction:Lcom/noname81/lmt/Action;

.field mLongClickAction:Lcom/noname81/lmt/Action;

.field mPieItem:Lcom/noname81/lmt/PieItem;

.field mTempAction:Z

.field final synthetic this$0:Lcom/noname81/lmt/PieControl;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/PieControl;Lcom/noname81/lmt/PieItem;Lcom/noname81/lmt/Action;Lcom/noname81/lmt/Action;Z)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/noname81/lmt/PieControl$PieItemAction;->this$0:Lcom/noname81/lmt/PieControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/noname81/lmt/PieControl$PieItemAction;->mPieItem:Lcom/noname81/lmt/PieItem;

    .line 41
    iput-object p3, p0, Lcom/noname81/lmt/PieControl$PieItemAction;->mClickAction:Lcom/noname81/lmt/Action;

    .line 42
    iput-object p4, p0, Lcom/noname81/lmt/PieControl$PieItemAction;->mLongClickAction:Lcom/noname81/lmt/Action;

    .line 43
    iput-boolean p5, p0, Lcom/noname81/lmt/PieControl$PieItemAction;->mTempAction:Z

    return-void
.end method
