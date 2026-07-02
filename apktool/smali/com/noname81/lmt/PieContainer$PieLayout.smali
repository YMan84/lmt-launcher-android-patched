.class Lcom/noname81/lmt/PieContainer$PieLayout;
.super Landroid/widget/FrameLayout;
.source "PieContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/PieContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PieLayout"
.end annotation


# instance fields
.field mAllowed:Z

.field mBottom:Z

.field mPieControlAdded:Z

.field mShrinking:Z

.field final synthetic this$0:Lcom/noname81/lmt/PieContainer;


# direct methods
.method public constructor <init>(Lcom/noname81/lmt/PieContainer;Landroid/content/Context;Z)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    .line 60
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/PieContainer$PieLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/PieContainer$PieLayout;->setEnabled(Z)V

    .line 63
    iput-boolean p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mPieControlAdded:Z

    .line 64
    iput-boolean p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mShrinking:Z

    .line 65
    iput-boolean p3, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mBottom:Z

    return-void
.end method

.method private setExclusionRects()V
    .locals 6

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    invoke-static {}, Lcom/noname81/lmt/PieContainer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setExclusionRects:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LMT::PieContainer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-static {p0, v1}, Lcom/noname81/lmt/AccessibilityHandler$$ExternalSyntheticBackport4;->m(Lcom/noname81/lmt/PieContainer$PieLayout;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public debug(Z)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 177
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 180
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 183
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {p1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 70
    invoke-static {}, Lcom/noname81/lmt/PieContainer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchTouchEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::PieContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->isNotBlacklistedPie()Z

    move-result v1

    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mAllowed:Z

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->expandLayout()V

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->shrinkLayout()V

    .line 89
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mAllowed:Z

    if-eqz v1, :cond_4

    .line 90
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v0}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object v0

    iget-object v0, v0, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {v0, p1}, Lcom/noname81/lmt/PieMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :cond_4
    return v0
.end method

.method public expandLayout()V
    .locals 2

    .line 125
    invoke-static {}, Lcom/noname81/lmt/PieContainer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LMT::PieContainer"

    const-string v1, "expandLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 129
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    .line 131
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v0}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mPieControlAdded:Z

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v0}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/noname81/lmt/PieControl;->attachToContainer(Landroid/widget/FrameLayout;)V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mPieControlAdded:Z

    :cond_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 101
    invoke-static {}, Lcom/noname81/lmt/PieContainer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSizeChanged new:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LMT::PieContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 103
    iget-boolean p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mShrinking:Z

    if-eqz p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {p1}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object p1

    iget-object p1, p1, Lcom/noname81/lmt/PieControl;->mPie:Lcom/noname81/lmt/PieMenu;

    invoke-virtual {p1}, Lcom/noname81/lmt/PieMenu;->onShrink()V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mShrinking:Z

    :cond_1
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 109
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->setExclusionRects()V

    :cond_2
    return-void
.end method

.method public shrinkLayout()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/noname81/lmt/PieContainer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LMT::PieContainer"

    const-string v1, "shrinkLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/noname81/lmt/PieContainer$PieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_4

    .line 147
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mPieControlAdded:Z

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$200(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/PieControl;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/noname81/lmt/PieControl;->removeFromContainer(Landroid/widget/FrameLayout;)V

    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mPieControlAdded:Z

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mShrinking:Z

    .line 162
    :cond_1
    iget-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mBottom:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaY()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 163
    iget-boolean v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->mBottom:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaX()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$100(Lcom/noname81/lmt/PieContainer;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadPieAreaY()I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x2

    .line 164
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/noname81/lmt/PieContainer$PieLayout;->this$0:Lcom/noname81/lmt/PieContainer;

    invoke-static {v1}, Lcom/noname81/lmt/PieContainer;->access$300(Lcom/noname81/lmt/PieContainer;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method
