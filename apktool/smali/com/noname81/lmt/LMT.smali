.class public Lcom/noname81/lmt/LMT;
.super Landroid/app/Activity;
.source "LMT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/LMT$TabsAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "LMT::LMT"


# instance fields
.field mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkAndRequestPermissions()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object v0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, p0, v1}, Lcom/noname81/lmt/PermissionChecker;->checkAndRequestExternalStorageReadPermission(Landroid/app/Activity;Z)Z

    .line 100
    invoke-virtual {v0, p0, v1}, Lcom/noname81/lmt/PermissionChecker;->checkAndRequestDrawOverAppsPermission(Landroid/app/Activity;Z)Z

    .line 103
    invoke-virtual {v0, p0, v1}, Lcom/noname81/lmt/PermissionChecker;->hasExternalStorageWritePermission(Landroid/content/Context;Z)Z

    .line 104
    invoke-virtual {v0, p0, v1}, Lcom/noname81/lmt/PermissionChecker;->hasPhoneCallPermission(Landroid/content/Context;Z)Z

    .line 105
    invoke-virtual {v0, p0, v1}, Lcom/noname81/lmt/PermissionChecker;->hasUsageStatsPermission(Landroid/content/Context;Z)Z

    return-void
.end method

.method private createTabs()V
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/noname81/lmt/LMT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/noname81/lmt/LMT$TabsAdapter;

    iget-object v2, p0, Lcom/noname81/lmt/LMT;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/noname81/lmt/LMT$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/noname81/lmt/LMT;->mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/noname81/lmt/LMT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noname81/lmt/SettingsValues;->loadTouchServiceMode()I

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/noname81/lmt/LMT;->mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    sget v4, Lcom/noname81/lmt/R$string;->navigation_settings:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/noname81/lmt/SettingsViewFragment;

    invoke-virtual {v2, v3, v4}, Lcom/noname81/lmt/LMT$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)V

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/noname81/lmt/LMT;->mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    sget v4, Lcom/noname81/lmt/R$string;->navigation_gestures:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/noname81/lmt/GesturesFragment;

    invoke-virtual {v2, v3, v4}, Lcom/noname81/lmt/LMT$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 81
    iget-object v2, p0, Lcom/noname81/lmt/LMT;->mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    sget v4, Lcom/noname81/lmt/R$string;->navigation_isas:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/noname81/lmt/IsasFragment;

    invoke-virtual {v2, v3, v4}, Lcom/noname81/lmt/LMT$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)V

    :cond_0
    if-lez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/noname81/lmt/LMT;->mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    sget v2, Lcom/noname81/lmt/R$string;->navigation_pie:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const-class v2, Lcom/noname81/lmt/PieFragment;

    invoke-virtual {v1, v0, v2}, Lcom/noname81/lmt/LMT$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)V

    :cond_1
    invoke-virtual {p0}, Lcom/noname81/lmt/LMT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/noname81/lmt/LMT;->mTabsAdapter:Lcom/noname81/lmt/LMT$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    sget v2, Lcom/noname81/lmt/R$string;->navigation_info:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const-class v2, Lcom/noname81/lmt/InfoFragment;

    invoke-virtual {v1, v0, v2}, Lcom/noname81/lmt/LMT$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 110
    sget p2, Lcom/noname81/lmt/PermissionChecker;->DRAW_OVER_APPS_REQUEST_CODE:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    .line 111
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p2

    invoke-virtual {p2, p0, p3}, Lcom/noname81/lmt/PermissionChecker;->hasDrawOverAppsPermission(Landroid/content/Context;Z)Z

    .line 113
    :cond_0
    sget p2, Lcom/noname81/lmt/PermissionChecker;->USAGE_STATS_REQUEST_CODE:I

    if-ne p1, p2, :cond_1

    .line 114
    invoke-static {}, Lcom/noname81/lmt/PermissionChecker;->getInstance()Lcom/noname81/lmt/PermissionChecker;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/noname81/lmt/PermissionChecker;->hasUsageStatsPermission(Landroid/content/Context;Z)Z

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "LMT::LMT"

    const-string v1, "Starting GUI"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/noname81/lmt/LMT;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 47
    sget v1, Lcom/noname81/lmt/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 49
    iget-object v0, p0, Lcom/noname81/lmt/LMT;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/noname81/lmt/LMT;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/noname81/lmt/LMT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 57
    invoke-direct {p0}, Lcom/noname81/lmt/LMT;->createTabs()V

    if-eqz p1, :cond_0

    const-string v2, "tab"

    .line 60
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 63
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Lcom/noname81/lmt/DebugHelper;->getInstance()Lcom/noname81/lmt/DebugHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/noname81/lmt/DebugHelper;->showDebugMenu(Landroid/content/Context;)V

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/noname81/lmt/LMT;->checkAndRequestPermissions()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/noname81/lmt/LMT;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    const-string v1, "tab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
