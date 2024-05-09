.class public abstract Lio/github/hidroh/materialistic/BaseListActivity;
.super Lio/github/hidroh/materialistic/DrawerActivity;
.source "BaseListActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/MultiPaneListener;


# static fields
.field protected static final LIST_FRAGMENT_TAG:Ljava/lang/String;

.field private static final STATE_FULLSCREEN:Ljava/lang/String; = "state:fullscreen"

.field private static final STATE_SELECTED_ITEM:Ljava/lang/String; = "state:selectedItem"


# instance fields
.field mActionViewResolver:Lio/github/hidroh/materialistic/ActionViewResolver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

.field private mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

.field mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mExternalBrowser:Z

.field mFullscreen:Z

.field private mIsMultiPane:Z

.field mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mListView:Landroid/view/View;

.field private mMultiWindowEnabled:Z

.field private mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

.field mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field protected mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

.field mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".LIST_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;-><init>()V

    .line 83
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 84
    new-instance v0, Lio/github/hidroh/materialistic/BaseListActivity$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/BaseListActivity$1;-><init>(Lio/github/hidroh/materialistic/BaseListActivity;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bindViewPager()V
    .locals 5

    .line 405
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->unbind(Lcom/google/android/material/tabs/TabLayout;)V

    .line 408
    :cond_0
    new-instance v0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    invoke-direct {v2}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;-><init>()V

    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 409
    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setItem(Lio/github/hidroh/materialistic/data/WebItem;)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getItemCacheMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setCacheMode(I)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 411
    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setShowArticle(Z)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 412
    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setDefaultViewMode(Lio/github/hidroh/materialistic/Preferences$StoryViewMode;)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    .line 413
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-object v4, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->bind(Landroidx/viewpager/widget/ViewPager;Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 414
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->setFullscreen()V

    .line 417
    :cond_1
    return-void
.end method

.method private getBackInterceptor()Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;
    .locals 3

    .line 360
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    .line 362
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    .line 366
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 367
    .local v0, "item":Landroidx/fragment/app/Fragment;
    instance-of v2, v0, Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    if-eqz v2, :cond_1

    .line 368
    move-object v1, v0

    check-cast v1, Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    return-object v1

    .line 370
    :cond_1
    return-object v1

    .line 363
    .end local v0    # "item":Landroidx/fragment/app/Fragment;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getScrollableList()Lio/github/hidroh/materialistic/Scrollable;
    .locals 2

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Scrollable;

    return-object v0
.end method

.method public static synthetic lambda$M6YwdaG7FEHwY11dnQ4lDya7N5A(Lio/github/hidroh/materialistic/BaseListActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseListActivity;->onPreferenceChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/BaseListActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getScrollableList()Lio/github/hidroh/materialistic/Scrollable;

    move-result-object v0

    .line 104
    .local v0, "scrollable":Lio/github/hidroh/materialistic/Scrollable;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lio/github/hidroh/materialistic/Scrollable;->scrollToTop()V

    .line 107
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lio/github/hidroh/materialistic/BaseListActivity;I)V
    .locals 2
    .param p1, "direction"    # I

    .line 122
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Navigable;

    .line 123
    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/Navigable;->onNavigate(I)V

    .line 122
    return-void
.end method

.method public static synthetic lambda$onPostCreate$2(Lio/github/hidroh/materialistic/BaseListActivity;Lcom/google/android/material/snackbar/Snackbar;Landroid/view/View;)V
    .locals 2
    .param p1, "snackbar"    # Lcom/google/android/material/snackbar/Snackbar;
    .param p2, "v"    # Landroid/view/View;

    .line 161
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/ReleaseNotesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method private onPreferenceChanged(IZ)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 435
    const v0, 0x7f1000d0

    if-eq p1, v0, :cond_5

    const v0, 0x7f1000f5

    if-eq p1, v0, :cond_4

    const v0, 0x7f1000fc

    if-eq p1, v0, :cond_1

    const v0, 0x7f10011c

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getDefaultStoryView(Landroid/content/Context;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 441
    goto :goto_1

    .line 443
    :cond_1
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->navigationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 444
    .local v0, "enabled":Z
    if-nez v0, :cond_2

    .line 445
    invoke-static {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->resetPosition(Landroid/content/Context;)V

    .line 447
    :cond_2
    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    if-eqz v1, :cond_6

    .line 448
    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    goto :goto_1

    .line 452
    .end local v0    # "enabled":Z
    :cond_4
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->multiWindowEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mMultiWindowEnabled:Z

    goto :goto_1

    .line 437
    :cond_5
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->externalBrowserEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mExternalBrowser:Z

    .line 438
    nop

    .line 455
    :cond_6
    :goto_1
    return-void
.end method

.method private openMultiPaneItem()V
    .locals 4

    .line 386
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    const v1, 0x7f090074

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getDefaultTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ThemedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 392
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-static {v0, v3}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 393
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0, v3}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ThemedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 399
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->bindViewPager()V

    .line 400
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/data/SessionManager;->view(Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void
.end method

.method private openSinglePaneItem()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mExternalBrowser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    if-eq v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v2}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->openWebUrlExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)V

    goto :goto_0

    .line 378
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_CACHE_MODE:Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getItemCacheMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mMultiWindowEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->multiWindowIntent(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 383
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private unbindViewPager()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 426
    .local v0, "transaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 427
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v3

    const v4, 0x7f090044

    if-ne v3, v4, :cond_0

    .line 428
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 430
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 432
    return-void
.end method


# virtual methods
.method protected abstract getDefaultTitle()Ljava/lang/String;
.end method

.method protected getItemCacheMode()I
    .locals 1

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItem()Lio/github/hidroh/materialistic/data/WebItem;
    .locals 1

    .line 307
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 283
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected abstract instantiateListFragment()Landroidx/fragment/app/Fragment;
.end method

.method public isMultiPane()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    return v0
.end method

.method protected isSearchable()Z
    .locals 1

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 251
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    const/4 v3, 0x0

    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    invoke-super {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->onBackPressed()V

    .line 257
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/DrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getDefaultTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ThemedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 100
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 102
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$AwO7byFFFyBCEe4aa8bl2P3LGSM;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$AwO7byFFFyBCEe4aa8bl2P3LGSM;-><init>(Lio/github/hidroh/materialistic/BaseListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    .line 110
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    const v1, 0x102000a

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    sget-object v4, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mListView:Landroid/view/View;

    .line 114
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 115
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 116
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/ViewPager;

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    .line 117
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 118
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 119
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    .line 120
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$vtTsDFsCokKrRoVL4qUY8vL5AoM;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$vtTsDFsCokKrRoVL4qUY8vL5AoM;-><init>(Lio/github/hidroh/materialistic/BaseListActivity;)V

    invoke-virtual {v0, v2}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->setNavigable(Lio/github/hidroh/materialistic/Navigable;)V

    .line 124
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 125
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0, v2}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 127
    :cond_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->multiWindowEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mMultiWindowEnabled:Z

    .line 128
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getDefaultStoryView(Landroid/content/Context;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 129
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->externalBrowserEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mExternalBrowser:Z

    .line 130
    if-nez p1, :cond_1

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->instantiateListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    sget-object v3, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 136
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "state:selectedItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/WebItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 139
    const-string v0, "state:fullscreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    .line 140
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->openMultiPaneItem()V

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->unbindViewPager()V

    .line 146
    :goto_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$M6YwdaG7FEHwY11dnQ4lDya7N5A;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$M6YwdaG7FEHwY11dnQ4lDya7N5A;-><init>(Lio/github/hidroh/materialistic/BaseListActivity;)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p0, v1, v2}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 151
    return-void

    :array_0
    .array-data 4
        0x7f1000fc
        0x7f1000d0
        0x7f10011c
        0x7f1000f5
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 184
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->isSearchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    const v0, 0x7f0900ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    .local v0, "menuSearch":Landroid/view/MenuItem;
    const-string v1, "search"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 191
    .local v1, "searchManager":Landroid/app/SearchManager;
    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mActionViewResolver:Lio/github/hidroh/materialistic/ActionViewResolver;

    invoke-virtual {v2, v0}, Lio/github/hidroh/materialistic/ActionViewResolver;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    .line 192
    .local v2, "searchView":Landroidx/appcompat/widget/SearchView;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lio/github/hidroh/materialistic/SearchActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 195
    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 197
    .end local v0    # "menuSearch":Landroid/view/MenuItem;
    .end local v1    # "searchManager":Landroid/app/SearchManager;
    .end local v2    # "searchView":Landroidx/appcompat/widget/SearchView;
    :cond_1
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 243
    invoke-super {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->onDestroy()V

    .line 244
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 245
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onItemSelected(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 288
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 289
    .local v0, "previousItem":Lio/github/hidroh/materialistic/data/WebItem;
    iput-object p1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 290
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    if-eqz v1, :cond_4

    .line 291
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 292
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 297
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 299
    :cond_3
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->openMultiPaneItem()V

    goto :goto_0

    .line 300
    :cond_4
    if-eqz p1, :cond_5

    .line 301
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->openSinglePaneItem()V

    .line 303
    :cond_5
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 261
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getScrollableList()Lio/github/hidroh/materialistic/Scrollable;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/KeyDelegate;->setScrollable(Lio/github/hidroh/materialistic/Scrollable;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 262
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getBackInterceptor()Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/KeyDelegate;->setBackInterceptor(Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;)V

    .line 263
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 263
    :goto_1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 275
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 275
    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 269
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 269
    :goto_1
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f09013f

    const v3, 0x7f0900bc

    if-ne v0, v3, :cond_1

    .line 212
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "anchor":Landroid/view/View;
    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget-object v4, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 213
    invoke-static {p0, v3, v2, v4}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/PopupMenu;Landroid/view/View;Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 215
    return v1

    .line 217
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0900ac

    if-ne v0, v3, :cond_3

    .line 218
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .restart local v0    # "anchor":Landroid/view/View;
    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    if-nez v0, :cond_2

    .line 220
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iget-object v4, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    iget-object v5, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 221
    invoke-virtual {v5}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v5

    .line 219
    invoke-static {p0, v3, v2, v4, v5}, Lio/github/hidroh/materialistic/AppUtils;->openExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/PopupMenu;Landroid/view/View;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 222
    return v1

    .line 224
    .end local v0    # "anchor":Landroid/view/View;
    :cond_3
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/DrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 155
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/DrawerActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->isReleaseNotesSeen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100085

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 159
    .local v0, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    const v1, 0x7f10017f

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$iD83kiWkrNv0nsLQPZ3dJ7jqDLY;

    invoke-direct {v2, p0, v0}, Lio/github/hidroh/materialistic/-$$Lambda$BaseListActivity$iD83kiWkrNv0nsLQPZ3dJ7jqDLY;-><init>(Lio/github/hidroh/materialistic/BaseListActivity;Lcom/google/android/material/snackbar/Snackbar;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    const v1, 0x7f060082

    .line 164
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    new-instance v1, Lio/github/hidroh/materialistic/BaseListActivity$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/BaseListActivity$2;-><init>(Lio/github/hidroh/materialistic/BaseListActivity;)V

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/snackbar/Snackbar;

    .line 171
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 173
    .end local v0    # "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 202
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mIsMultiPane:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 203
    const v0, 0x7f0900bc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 204
    const v0, 0x7f0900ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    :cond_2
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->isSearchable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 229
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    const-string v0, "state:selectedItem"

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mSelectedItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    const-string v0, "state:fullscreen"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 178
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 179
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->attach(Landroid/app/Activity;)V

    .line 180
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 236
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 237
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 238
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->detach(Landroid/app/Activity;)V

    .line 239
    return-void
.end method

.method setFullscreen()V
    .locals 5

    .line 346
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 347
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mListView:Landroid/view/View;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/KeyDelegate;->setAppBarEnabled(Z)V

    .line 350
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ViewPager;->setSwipeEnabled(Z)V

    .line 351
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 352
    return-void
.end method
