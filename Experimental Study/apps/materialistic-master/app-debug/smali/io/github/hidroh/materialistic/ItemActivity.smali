.class public Lio/github/hidroh/materialistic/ItemActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "ItemActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/ItemFragment$ItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;,
        Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;
    }
.end annotation


# static fields
.field public static final EXTRA_CACHE_MODE:Ljava/lang/String;

.field public static final EXTRA_ITEM:Ljava/lang/String;

.field public static final EXTRA_OPEN_COMMENTS:Ljava/lang/String;

.field private static final PARAM_ID:Ljava/lang/String; = "id"

.field private static final STATE_FULLSCREEN:Ljava/lang/String; = "state:fullscreen"

.field private static final STATE_ITEM:Ljava/lang/String; = "state:item"

.field private static final STATE_ITEM_ID:Ljava/lang/String; = "state:itemId"


# instance fields
.field private mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

.field mBookmark:Landroid/widget/ImageView;

.field mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mExternalBrowser:Z

.field mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFullscreen:Z

.field mItem:Lio/github/hidroh/materialistic/data/WebItem;

.field mItemId:Ljava/lang/String;

.field mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

.field private final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

.field private mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

.field private mVoteButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_CACHE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_CACHE_MODE:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_OPEN_COMMENTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_OPEN_COMMENTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    .line 101
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$8S4hItNF_2_Hv9_f-duEEzqSdy4;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$8S4hItNF_2_Hv9_f-duEEzqSdy4;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mObserver:Landroidx/lifecycle/Observer;

    .line 121
    new-instance v0, Lio/github/hidroh/materialistic/ItemActivity$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/ItemActivity$1;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    return-void
.end method

.method private bindData(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 10
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 353
    if-nez p1, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 357
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ItemActivity;->bindFavorite()V

    .line 358
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/data/SessionManager;->view(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mVoteButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mVoteButton:Landroid/widget/ImageButton;

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;

    invoke-direct {v2, p0, p1}, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;-><init>(Lio/github/hidroh/materialistic/ItemActivity;Lio/github/hidroh/materialistic/data/WebItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 362
    .local v0, "titleTextView":Landroid/widget/TextView;
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 363
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/github/hidroh/materialistic/ThemedActivity;->setTaskTitle(Ljava/lang/CharSequence;)V

    .line 365
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    const v2, 0x7f090109

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 367
    .local v2, "sourceTextView":Landroid/widget/TextView;
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    .end local v2    # "sourceTextView":Landroid/widget/TextView;
    goto :goto_0

    .line 371
    :cond_1
    const v2, 0x7f110137

    invoke-static {v0, v2}, Lio/github/hidroh/materialistic/AppUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 372
    nop

    .line 373
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0400a5

    invoke-static {p0, v4}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 374
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 375
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p0, v2}, Lio/github/hidroh/materialistic/ThemedActivity;->setTaskTitle(Ljava/lang/CharSequence;)V

    .line 379
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    const v2, 0x7f0900da

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 380
    .local v2, "postedTextView":Landroid/widget/TextView;
    invoke-interface {p1, p0}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-interface {p1, p0, v3, v1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 382
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 383
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x19bbd

    if-eq v6, v7, :cond_5

    const v7, 0x3497bf

    if-eq v6, v7, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v6, "poll"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "job"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 389
    :pswitch_0
    const v4, 0x7f08008f

    invoke-virtual {v2, v4, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 385
    :pswitch_1
    const v4, 0x7f0800a2

    invoke-virtual {v2, v4, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 387
    nop

    .line 393
    :goto_2
    instance-of v4, p1, Lio/github/hidroh/materialistic/data/Item;

    if-eqz v4, :cond_6

    move-object v4, p1

    check-cast v4, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v4}, Lio/github/hidroh/materialistic/data/Item;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 394
    .local v4, "hasText":Z
    :goto_3
    new-instance v5, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    new-instance v7, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    invoke-direct {v7}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;-><init>()V

    .line 396
    invoke-virtual {v7, p1}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setItem(Lio/github/hidroh/materialistic/data/WebItem;)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v7

    if-nez v4, :cond_8

    iget-boolean v8, p0, Lio/github/hidroh/materialistic/ItemActivity;->mExternalBrowser:Z

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v8, 0x1

    .line 397
    :goto_5
    invoke-virtual {v7, v8}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setShowArticle(Z)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v7

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_CACHE_MODE:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setCacheMode(I)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v7

    .line 399
    invoke-virtual {v7, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setRetainInstance(Z)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v3

    iget-object v7, p0, Lio/github/hidroh/materialistic/ItemActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 400
    invoke-virtual {v3, v7}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;->setDefaultViewMode(Lio/github/hidroh/materialistic/Preferences$StoryViewMode;)Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;

    move-result-object v3

    invoke-direct {v5, p0, v6, v3}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lio/github/hidroh/materialistic/widget/ItemPagerAdapter$Builder;)V

    iput-object v5, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    .line 401
    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    iget-object v5, p0, Lio/github/hidroh/materialistic/ItemActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    iget-object v6, p0, Lio/github/hidroh/materialistic/ItemActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v7, p0, Lio/github/hidroh/materialistic/ItemActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-object v8, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v5, v6, v7, v8}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->bind(Landroidx/viewpager/widget/ViewPager;Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 402
    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v5, Lio/github/hidroh/materialistic/ItemActivity$3;

    iget-object v6, p0, Lio/github/hidroh/materialistic/ItemActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-direct {v5, p0, v6}, Lio/github/hidroh/materialistic/ItemActivity$3;-><init>(Lio/github/hidroh/materialistic/ItemActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 408
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mExternalBrowser:Z

    if-eqz v3, :cond_9

    if-nez v4, :cond_9

    .line 409
    const v3, 0x7f09002d

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 410
    .local v3, "buttonArticle":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$ZxIqx7a2YSyBfeGw-Fz3DZuSTsY;

    invoke-direct {v1, p0, p1}, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$ZxIqx7a2YSyBfeGw-Fz3DZuSTsY;-><init>(Lio/github/hidroh/materialistic/ItemActivity;Lio/github/hidroh/materialistic/data/WebItem;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    .end local v3    # "buttonArticle":Landroid/widget/TextView;
    :cond_9
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    if-eqz v1, :cond_a

    .line 416
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ItemActivity;->setFullscreen()V

    .line 418
    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decorateFavorite(Z)V
    .locals 2
    .param p1, "isFavorite"    # Z

    .line 421
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mBookmark:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f08006e

    goto :goto_0

    :cond_0
    const v1, 0x7f08006d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    return-void
.end method

.method private getCurrent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 426
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 427
    return-object v1

    .line 429
    :cond_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 430
    .local v0, "currentItem":Landroidx/fragment/app/Fragment;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    return-object v0

    .line 434
    :cond_1
    return-object v1
.end method

.method public static synthetic lambda$2On8IKp400mSj0XAx1fBrK1Qohc(Lio/github/hidroh/materialistic/ItemActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/ItemActivity;->onPreferenceChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$bindData$2(Lio/github/hidroh/materialistic/ItemActivity;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V
    .locals 0
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "v"    # Landroid/view/View;

    .line 360
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/ItemActivity;->vote(Lio/github/hidroh/materialistic/data/WebItem;)V

    return-void
.end method

.method public static synthetic lambda$bindData$3(Lio/github/hidroh/materialistic/ItemActivity;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V
    .locals 2
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "v"    # Landroid/view/View;

    .line 412
    nop

    .line 413
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    .line 412
    invoke-static {p0, p1, v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->openWebUrlExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsSession;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/ItemActivity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 102
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    return-void

    .line 108
    :cond_1
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isCleared(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/WebItem;->setFavorite(Z)V

    .line 110
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ItemActivity;->bindFavorite()V

    .line 111
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    return-void

    .line 116
    :cond_3
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isAdded(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isRemoved(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    :cond_4
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isAdded(Landroid/net/Uri;)Z

    move-result v1

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/WebItem;->setFavorite(Z)V

    .line 118
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ItemActivity;->bindFavorite()V

    .line 120
    :cond_5
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lio/github/hidroh/materialistic/ItemActivity;I)V
    .locals 3
    .param p1, "direction"    # I

    .line 150
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/ItemPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/Navigable;

    invoke-static {p1, v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->navigate(ILcom/google/android/material/appbar/AppBarLayout;Lio/github/hidroh/materialistic/Navigable;)V

    return-void
.end method

.method private navigationVisible()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->navigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onPreferenceChanged(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 456
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->navigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-static {p0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->resetPosition(Landroid/content/Context;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/ItemActivity;->navigationVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 460
    return-void
.end method

.method private vote(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 3
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 439
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    invoke-interface {v0, p0, v1, v2}, Lio/github/hidroh/materialistic/accounts/UserServices;->voteUp(Landroid/content/Context;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)Z

    .line 440
    return-void
.end method


# virtual methods
.method bindFavorite()V
    .locals 2

    .line 317
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    if-nez v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->isStoryType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mBookmark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/ItemActivity;->decorateFavorite(Z)V

    .line 325
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mBookmark:Landroid/widget/ImageView;

    new-instance v1, Lio/github/hidroh/materialistic/ItemActivity$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/ItemActivity$2;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    if-nez v0, :cond_0

    .line 256
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onBackPressed()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 261
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 133
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->externalBrowserEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mExternalBrowser:Z

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_OPEN_COMMENTS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getDefaultStoryView(Landroid/content/Context;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mStoryViewMode:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 140
    :goto_0
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 141
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 145
    new-instance v0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    .line 146
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 147
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    .line 148
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$d6vIRFuxojdoJ3mASRcAU4pg_rA;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$d6vIRFuxojdoJ3mASRcAU4pg_rA;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->setNavigable(Lio/github/hidroh/materialistic/Navigable;)V

    .line 151
    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mVoteButton:Landroid/widget/ImageButton;

    .line 152
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mBookmark:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 154
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 155
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 156
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/ViewPager;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    .line 157
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mNavButton:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-static {v0, v2}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 158
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0, v2}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 161
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    sget-object v5, Lio/github/hidroh/materialistic/WebFragment;->ACTION_FULLSCREEN:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 163
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$2On8IKp400mSj0XAx1fBrK1Qohc;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$2On8IKp400mSj0XAx1fBrK1Qohc;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x7f1000fc

    aput v5, v4, v2

    invoke-virtual {v1, p0, v3, v4}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 165
    if-eqz p1, :cond_1

    .line 166
    const-string v1, "state:item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/WebItem;

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 167
    const-string v1, "state:itemId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    .line 168
    const-string v1, "state:fullscreen"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    goto :goto_1

    .line 170
    :cond_1
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "id"

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->getDataUriId(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_2
    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/WebItem;

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 174
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    .line 178
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    if-eqz v1, :cond_4

    .line 179
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/ItemActivity;->bindData(Lio/github/hidroh/materialistic/data/WebItem;)V

    goto :goto_2

    .line 180
    :cond_4
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 181
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_CACHE_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;

    invoke-direct {v5, p0}, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;-><init>(Lio/github/hidroh/materialistic/ItemActivity;)V

    .line 181
    invoke-interface {v1, v3, v4, v5}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 185
    :cond_5
    :goto_2
    invoke-static {p0}, Lio/github/hidroh/materialistic/AppUtils;->hasConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 186
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f1000ac

    invoke-static {v1, v3, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 188
    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 199
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 200
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 248
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onDestroy()V

    .line 249
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public onItemChanged(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 7
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 291
    iput-object p1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 292
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    .line 295
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 297
    :cond_0
    return-void
.end method

.method onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/Item;

    .line 310
    iput-object p1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 311
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 312
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/ItemActivity;->bindData(Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 313
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 265
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    const-class v1, Lio/github/hidroh/materialistic/Scrollable;

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/ItemActivity;->getCurrent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/Scrollable;

    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/KeyDelegate;->setScrollable(Lio/github/hidroh/materialistic/Scrollable;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 266
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    const-class v1, Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/ItemActivity;->getCurrent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/KeyDelegate;->setBackInterceptor(Lio/github/hidroh/materialistic/KeyDelegate$BackInterceptor;)V

    .line 267
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
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

    .line 267
    :goto_1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 279
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
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

    .line 279
    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 273
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
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

    .line 273
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

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 213
    return v1

    .line 215
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09013f

    const v3, 0x7f0900ac

    if-ne v0, v3, :cond_2

    .line 216
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, "anchor":Landroid/view/View;
    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget-object v4, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    iget-object v5, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 219
    invoke-virtual {v5}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v5

    .line 217
    invoke-static {p0, v3, v2, v4, v5}, Lio/github/hidroh/materialistic/AppUtils;->openExternal(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/PopupMenu;Landroid/view/View;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 220
    return v1

    .line 222
    .end local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0900bc

    if-ne v0, v3, :cond_4

    .line 223
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .restart local v0    # "anchor":Landroid/view/View;
    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemActivity;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    if-nez v0, :cond_3

    .line 225
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    iget-object v4, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    .line 224
    invoke-static {p0, v3, v2, v4}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/PopupMenu;Landroid/view/View;Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 226
    return v1

    .line 228
    .end local v0    # "anchor":Landroid/view/View;
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 205
    const v0, 0x7f0900bc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 233
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string v0, "state:item"

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItem:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    const-string v0, "state:itemId"

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mItemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "state:fullscreen"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 193
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 194
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->attach(Landroid/app/Activity;)V

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 241
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 242
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 243
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->detach(Landroid/app/Activity;)V

    .line 244
    return-void
.end method

.method onVoted(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 444
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 445
    const v1, 0x7f100197

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mVoteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 448
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f06004b

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 449
    const v2, 0x7f100199

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V

    .line 453
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 286
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->setFullscreen(Z)V

    .line 287
    return-void
.end method

.method setFullscreen()V
    .locals 3

    .line 301
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mSystemUiHelper:Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->setFullscreen(Z)V

    .line 302
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mAppBar:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 303
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/KeyDelegate;->setAppBarEnabled(Z)V

    .line 304
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mViewPager:Lio/github/hidroh/materialistic/widget/ViewPager;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ViewPager;->setSwipeEnabled(Z)V

    .line 305
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity;->mReplyButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->toggleFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Z)V

    .line 306
    return-void
.end method
