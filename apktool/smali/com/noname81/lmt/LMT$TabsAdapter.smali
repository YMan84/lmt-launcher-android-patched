.class public Lcom/noname81/lmt/LMT$TabsAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "LMT.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noname81/lmt/LMT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 147
    iput-object p1, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 149
    iput-object p2, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 150
    invoke-virtual {p2, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 151
    invoke-virtual {p2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 157
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 158
    iget-object p2, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p2, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p2, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 160
    invoke-virtual {p0}, Lcom/noname81/lmt/LMT$TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;

    .line 171
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;->access$000(Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;->access$100(Lcom/noname81/lmt/LMT$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    .line 189
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/noname81/lmt/LMT$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
