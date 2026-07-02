.class Lcom/noname81/lmt/AccessibilityHandler$1;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "AccessibilityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noname81/lmt/AccessibilityHandler;->performClick(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    .line 154
    invoke-static {}, Lcom/noname81/lmt/AccessibilityHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LMT::Accessibility"

    const-string v0, "gesture cancelled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    .line 148
    invoke-static {}, Lcom/noname81/lmt/AccessibilityHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LMT::Accessibility"

    const-string v0, "gesture completed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
