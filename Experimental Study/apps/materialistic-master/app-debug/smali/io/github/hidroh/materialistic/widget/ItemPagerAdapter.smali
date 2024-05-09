.class public Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ItemPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;
    }
.end annotation


# instance fields
.field private final mCacheMode:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultItem:I

.field private final mFragments:[Landroidx/fragment/app/Fragment;

.field private final mItem:Lio/github/hidroh/materialistic/data/WebItem;

.field private final mRetainInstance:Z

.field private final mShowArticle:Z

.field private mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "builder"    # Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    .line 52
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    .line 53
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p3, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->item:Lio/github/hidroh/materialistic/data/WebItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 55
    iget-boolean v0, p3, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->showArticle:Z

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mShowArticle:Z

    .line 56
    iget v0, p3, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->cacheMode:I

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mCacheMode:I

    .line 57
    iget-boolean v0, p3, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->retainInstance:Z

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mRetainInstance:Z

    .line 58
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p3, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->defaultViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    sget-object v3, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mDefaultItem:I

    .line 60
    return-void
.end method


# virtual methods
.method public bind(Landroidx/viewpager/widget/ViewPager;Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 7
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "tabLayout"    # Lcom/google/android/material/tabs/TabLayout;
    .param p3, "navigationFab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p4, "genericFab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 110
    const v0, 0x7f06001e

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(I)V

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 112
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 113
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 114
    new-instance v0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$1;-><init>(Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/ViewPager;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 133
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 134
    iget v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mDefaultItem:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 135
    iget v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mDefaultItem:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p3, p4}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->toggleFabs(ZLcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 137
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mShowArticle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .line 64
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 65
    aget-object v0, v0, p1

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_EAGER_LOAD:Ljava/lang/String;

    iget v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mDefaultItem:I

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    if-nez p1, :cond_2

    .line 71
    sget-object v1, Lio/github/hidroh/materialistic/ItemFragment;->EXTRA_ITEM:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    sget-object v1, Lio/github/hidroh/materialistic/ItemFragment;->EXTRA_CACHE_MODE:Ljava/lang/String;

    iget v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mCacheMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    sget-object v1, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_RETAIN_INSTANCE:Ljava/lang/String;

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mRetainInstance:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-class v1, Lio/github/hidroh/materialistic/ItemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 76
    :cond_2
    sget-object v1, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_ITEM:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    sget-object v1, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_RETAIN_INSTANCE:Ljava/lang/String;

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mRetainInstance:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "fragmentName":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    return-object v2
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "position"    # I

    .line 96
    if-nez p1, :cond_1

    .line 97
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    instance-of v1, v0, Lio/github/hidroh/materialistic/data/Item;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v0

    .line 99
    .local v0, "count":I
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    return-object v1

    .line 102
    .end local v0    # "count":I
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f100179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f10002e

    goto :goto_0

    :cond_2
    const v1, 0x7f100072

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 85
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    aput-object v1, v0, p2

    .line 86
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mFragments:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p2

    return-object v0
.end method

.method toggleFabs(ZLcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1, "isComments"    # Z
    .param p2, "navigationFab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p3, "genericFab"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 143
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->navigationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    invoke-static {p2, v1}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 145
    invoke-static {p3, v0}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 146
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {p3, v0, p1}, Lio/github/hidroh/materialistic/AppUtils;->toggleFabAction(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lio/github/hidroh/materialistic/data/WebItem;Z)V

    .line 147
    return-void
.end method

.method public unbind(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1
    .param p1, "tabLayout"    # Lcom/google/android/material/tabs/TabLayout;

    .line 150
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 153
    :cond_0
    return-void
.end method
