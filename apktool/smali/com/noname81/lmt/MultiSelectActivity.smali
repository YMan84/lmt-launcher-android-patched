.class public Lcom/noname81/lmt/MultiSelectActivity;
.super Landroid/app/Activity;
.source "MultiSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static AppSelectMode:I = 0x0

.field public static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field public static final SelectActivity:I = 0x2

.field public static final SelectBlacklisted:I = 0x3

.field public static final SelectBlacklistedPie:I = 0x4

.field public static final SelectPackage:I = 0x0

.field public static final SelectPackageActivity:I = 0x1

.field public static final SelectShortcut:I = 0x5

.field public static final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActivityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mSettings:Lcom/noname81/lmt/SettingsValues;

.field mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/noname81/lmt/MultiSelectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/noname81/lmt/MultiSelectActivity$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/noname81/lmt/MultiSelectActivity;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 0

    .line 69
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 179
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 181
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 184
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .line 187
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 189
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    new-instance v2, Lcom/noname81/lmt/Action;

    const/16 v4, 0x21

    invoke-direct {v2, v4, v0, v3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p0, v2}, Lcom/noname81/lmt/SettingsValues;->setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V

    .line 196
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/noname81/lmt/SettingsValues;->getInstance(Landroid/content/Context;)Lcom/noname81/lmt/SettingsValues;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    .line 77
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 81
    new-instance v0, Lcom/noname81/lmt/SeparatedListAdapter;

    invoke-direct {v0, p0}, Lcom/noname81/lmt/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    .line 83
    sget v1, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    invoke-virtual {v2}, Lcom/noname81/lmt/SettingsValues;->getCurrentAction()Lcom/noname81/lmt/Action;

    move-result-object v2

    invoke-virtual {v2}, Lcom/noname81/lmt/Action;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 90
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mActivityInfos:Ljava/util/List;

    .line 91
    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mActivityInfos:Ljava/util/List;

    iget-object v4, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    :goto_1
    iget-object v4, p0, Lcom/noname81/lmt/MultiSelectActivity;->mActivityInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/noname81/lmt/MultiSelectActivity;->mActivityInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    :cond_2
    sget v1, Lcom/noname81/lmt/R$string;->app_choose_an_activity:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/MultiSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;-><init>(Lcom/noname81/lmt/MultiSelectActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 114
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mShortcuts:Ljava/util/List;

    const/4 v1, 0x0

    .line 118
    :goto_2
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mShortcuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mShortcuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v4, p0, Lcom/noname81/lmt/MultiSelectActivity;->mShortcuts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 121
    invoke-static {v2, v4}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_4
    sget v1, Lcom/noname81/lmt/R$string;->app_choose_a_shortcut:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/MultiSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;-><init>(Lcom/noname81/lmt/MultiSelectActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    const/4 v1, 0x0

    .line 135
    :goto_3
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 136
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_6

    .line 139
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    goto :goto_4

    .line 143
    :cond_6
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_4
    add-int/2addr v1, v4

    goto :goto_3

    .line 149
    :cond_7
    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    sget-object v2, Lcom/noname81/lmt/MultiSelectActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 152
    :goto_5
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 153
    iget-object v2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 154
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->createItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 157
    :cond_8
    sget v1, Lcom/noname81/lmt/R$string;->app_choose_an_app:I

    invoke-virtual {p0, v1}, Lcom/noname81/lmt/MultiSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/noname81/lmt/MultiSelectActivity$AppSimpleAdapter;-><init>(Lcom/noname81/lmt/MultiSelectActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/noname81/lmt/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 160
    :goto_6
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/MultiSelectActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 201
    sget p1, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    const/4 p4, 0x2

    const/4 p5, 0x1

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    new-instance p2, Lcom/noname81/lmt/Action;

    iget-object v0, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    sub-int/2addr p3, p5

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageInfo;

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p2, p4, p3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/noname81/lmt/SettingsValues;->setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V

    .line 203
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->onBackPressed()V

    goto/16 :goto_0

    :cond_0
    if-ne p1, p5, :cond_1

    .line 206
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    new-instance v0, Lcom/noname81/lmt/Action;

    iget-object v1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    sub-int/2addr p3, p5

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageInfo;

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p4, p3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/noname81/lmt/SettingsValues;->setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V

    .line 207
    sput p4, Lcom/noname81/lmt/MultiSelectActivity;->AppSelectMode:I

    .line 208
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/noname81/lmt/MultiSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/noname81/lmt/MultiSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->finish()V

    goto/16 :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 213
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    iget-object p2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    sub-int/2addr p3, p5

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/SettingsValues;->setBlacklisted(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->onBackPressed()V

    goto/16 :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 217
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    iget-object p2, p0, Lcom/noname81/lmt/MultiSelectActivity;->mPackageInfos:Ljava/util/List;

    sub-int/2addr p3, p5

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/noname81/lmt/SettingsValues;->setBlacklistedPie(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->onBackPressed()V

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    .line 221
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mShortcuts:Ljava/util/List;

    sub-int/2addr p3, p5

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 222
    new-instance p2, Landroid/content/ComponentName;

    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 224
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.action.CREATE_SHORTCUT"

    .line 225
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, p1, p5}, Lcom/noname81/lmt/MultiSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/noname81/lmt/MultiSelectActivity;->mSettings:Lcom/noname81/lmt/SettingsValues;

    new-instance p2, Lcom/noname81/lmt/Action;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/noname81/lmt/MultiSelectActivity;->mActivityInfos:Ljava/util/List;

    sub-int/2addr p3, p5

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/noname81/lmt/MultiSelectActivity;->mActivityInfos:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x1b

    invoke-direct {p2, p4, p3}, Lcom/noname81/lmt/Action;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/noname81/lmt/SettingsValues;->setCurrentAction(Landroid/app/Activity;Lcom/noname81/lmt/Action;)V

    .line 230
    invoke-virtual {p0}, Lcom/noname81/lmt/MultiSelectActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
