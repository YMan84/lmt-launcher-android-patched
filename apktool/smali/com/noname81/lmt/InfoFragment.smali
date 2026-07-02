.class public Lcom/noname81/lmt/InfoFragment;
.super Landroid/app/Fragment;
.source "InfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private addGestureListener(Landroid/view/View;)V
    .locals 3

    .line 94
    new-instance v0, Lcom/noname81/lmt/InfoFragment$1GestureListener;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/InfoFragment$1GestureListener;-><init>(Lcom/noname81/lmt/InfoFragment;)V

    .line 95
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 97
    new-instance v0, Lcom/noname81/lmt/InfoFragment$1;

    invoke-direct {v0, p0, v1}, Lcom/noname81/lmt/InfoFragment$1;-><init>(Lcom/noname81/lmt/InfoFragment;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x11

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 48
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "LMT "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p3

    invoke-virtual {p3}, Lcom/noname81/lmt/SettingsValues;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " by noname81<br><br>This version of LMT will never expire!<br><br><a href=\'http://forum.xda-developers.com/showthread.php?t=1330150\'>Visit the thread at XDA developers!</a><br><br><a href=\'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=9C5JKBHDM6QSE\'>If you like my work, please consider a donation!</a><br><br>Runtime Permissions:<br>Root: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/noname81/lmt/RootContext;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/RootContext;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/noname81/lmt/RootContext;->isRootAvailable(Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br>Accessibility: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/noname81/lmt/AccessibilityHandler;->isAccessibilityAvailable(Landroid/content/Context;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br>DrawOverApps: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p3

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lcom/noname81/lmt/PermissionChecker;->hasDrawOverAppsPermission(Landroid/content/Context;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br>ExternalStorageRead: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p3

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageReadPermission(Landroid/content/Context;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br>ExternalStorageWrite: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p3

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageWritePermission(Landroid/content/Context;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br>PhoneCalls: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p3

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lcom/noname81/lmt/PermissionChecker;->hasPhoneCallPermission(Landroid/content/Context;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br>UsageStats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p3

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lcom/noname81/lmt/PermissionChecker;->hasUsageStatsPermission(Landroid/content/Context;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "<br><br>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p3, v1, :cond_0

    .line 66
    invoke-static {p2, v0}, Lcom/noname81/lmt/Launcher$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 71
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/noname81/lmt/InfoFragment;->addGestureListener(Landroid/view/View;)V

    .line 75
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/noname81/lmt/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/InfoFragment;->setUserVisibleHint(Z)V

    return-void
.end method
