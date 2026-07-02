.class Lcom/noname81/lmt/InfoFragment$1GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/InfoFragment;->addGestureListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/noname81/lmt/InfoFragment;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/InfoFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/noname81/lmt/InfoFragment$1GestureListener;->this$0:Lcom/noname81/lmt/InfoFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/noname81/lmt/InfoFragment$1GestureListener;->count:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 86
    iget p1, p0, Lcom/noname81/lmt/InfoFragment$1GestureListener;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noname81/lmt/InfoFragment$1GestureListener;->count:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 88
    invoke-static {}, Lcom/noname81/lmt/DebugHelper;->getInstance()Lcom/noname81/lmt/DebugHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/noname81/lmt/InfoFragment$1GestureListener;->this$0:Lcom/noname81/lmt/InfoFragment;

    invoke-virtual {v0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/noname81/lmt/DebugHelper;->showDebugMenu(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
