.class Lcom/noname81/lmt/InfoFragment$1;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/InfoFragment;->addGestureListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noname81/lmt/InfoFragment;

.field final synthetic val$gd:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/noname81/lmt/InfoFragment;Landroid/view/GestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/noname81/lmt/InfoFragment$1;->this$0:Lcom/noname81/lmt/InfoFragment;

    iput-object p2, p0, Lcom/noname81/lmt/InfoFragment$1;->val$gd:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/noname81/lmt/InfoFragment$1;->val$gd:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
