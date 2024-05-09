.class public Lio/github/hidroh/materialistic/ListFragment;
.super Lio/github/hidroh/materialistic/BaseListFragment;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_FILTER:Ljava/lang/String;

.field public static final EXTRA_ITEM_MANAGER:Ljava/lang/String;

.field private static final STATE_CACHE_MODE:Ljava/lang/String; = "state:cacheMode"

.field private static final STATE_FILTER:Ljava/lang/String; = "state:filter"


# instance fields
.field private mAdapter:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

.field mAlgoliaItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "algolia"
    .end annotation
.end field

.field private mCacheMode:I

.field private mEmptyView:Landroid/view/View;

.field private mErrorView:Landroid/view/View;

.field private mFilter:Ljava/lang/String;

.field mHnItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field mIoThreadScheduler:Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "io"
    .end annotation
.end field

.field private final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mPopularItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "popular"
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field private mRefreshCallback:Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;

.field private mStoryListViewModel:Lio/github/hidroh/materialistic/StoryListViewModel;

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ITEM_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_ITEM_MANAGER:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_FILTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListFragment;-><init>()V

    .line 52
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 53
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$egsko0filQFYhojZ3XfeqW4-6eQ;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$egsko0filQFYhojZ3XfeqW4-6eQ;-><init>(Lio/github/hidroh/materialistic/ListFragment;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mObserver:Landroidx/lifecycle/Observer;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    return-void
.end method

.method public static synthetic lambda$jJimaPCZa49xvXO9ncIdXeK8aTM(Lio/github/hidroh/materialistic/ListFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/ListFragment;->onPreferenceChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lio/github/hidroh/materialistic/ListFragment;Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 54
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    .local v0, "toastMessageResId":I
    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isAdded(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const v0, 0x7f100188

    goto :goto_0

    .line 60
    :cond_1
    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isRemoved(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const v0, 0x7f100187

    .line 63
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f10018a

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$PLd5qyBR9q-oY5JK-xTMbGFhLR0;

    invoke-direct {v3, p0, p1}, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$PLd5qyBR9q-oY5JK-xTMbGFhLR0;-><init>(Lio/github/hidroh/materialistic/ListFragment;Landroid/net/Uri;)V

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 68
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 69
    return-void
.end method

.method public static synthetic lambda$null$0(Lio/github/hidroh/materialistic/ListFragment;Landroid/net/Uri;Landroid/view/View;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "v"    # Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->toggleSave(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onActivityCreated$3(Lio/github/hidroh/materialistic/ListFragment;ZILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "showAll"    # Z
    .param p2, "itemCount"    # I
    .param p3, "actionClickListener"    # Landroid/view/View$OnClickListener;

    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 161
    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0001

    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 162
    invoke-virtual {v3, v4, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f100155

    .line 165
    invoke-virtual {v0, v1, p3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0003

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 169
    invoke-virtual {v3, v4, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    .line 168
    invoke-static {v2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 172
    .local v0, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    const v1, 0x7f100154

    invoke-virtual {v0, v1, p3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 175
    .end local v0    # "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onActivityCreated$4(Lio/github/hidroh/materialistic/ListFragment;Landroidx/core/util/Pair;)V
    .locals 1
    .param p1, "itemLists"    # Landroidx/core/util/Pair;

    .line 179
    if-nez p1, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 183
    check-cast v0, [Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ListFragment;->onItemsLoaded([Lio/github/hidroh/materialistic/data/Item;)V

    .line 185
    :cond_1
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 186
    check-cast v0, [Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ListFragment;->onItemsLoaded([Lio/github/hidroh/materialistic/data/Item;)V

    .line 188
    :cond_2
    return-void
.end method

.method public static synthetic lambda$onCreateView$2(Lio/github/hidroh/materialistic/ListFragment;)V
    .locals 2

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    .line 125
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v0

    iget v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setCacheMode(I)V

    .line 126
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ListFragment;->refresh()V

    .line 127
    return-void
.end method

.method private onPreferenceChanged(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 221
    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->initDisplayOptions(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 224
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setShowAll(Z)V

    .line 228
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mStoryListViewModel:Lio/github/hidroh/materialistic/StoryListViewModel;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    iget v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/StoryListViewModel;->refreshStories(Ljava/lang/String;I)V

    .line 229
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setHighlightUpdated(Z)V

    .line 208
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 209
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ListFragment;->refresh()V

    .line 210
    return-void
.end method

.method protected bridge synthetic getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
    .locals 2

    .line 214
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    .line 217
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 133
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_ITEM_MANAGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "managerClassName":Ljava/lang/String;
    const-class v1, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mAlgoliaItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    goto :goto_0

    .line 139
    :cond_0
    const-class v1, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mPopularItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mHnItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 144
    .local v1, "itemManager":Lio/github/hidroh/materialistic/data/ItemManager;
    :goto_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setHotThresHold(I)V

    .line 145
    iget-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mHnItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    const/16 v3, 0x12c

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 146
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1a9a0

    if-eq v5, v6, :cond_4

    const v6, 0x2e15e4

    if-eq v5, v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v5, "best"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const-string v5, "new"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setHotThresHold(I)V

    goto :goto_2

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setHotThresHold(I)V

    .line 149
    nop

    .line 152
    :goto_2
    goto :goto_3

    .line 154
    :cond_5
    iget-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mPopularItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    if-ne v1, v2, :cond_6

    .line 155
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->setHotThresHold(I)V

    .line 157
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->initDisplayOptions(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 158
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    iget v3, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setCacheMode(I)V

    .line 159
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$dES7Sz4j8S1Q2cZrsp5luxEuFyk;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$dES7Sz4j8S1Q2cZrsp5luxEuFyk;-><init>(Lio/github/hidroh/materialistic/ListFragment;)V

    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setUpdateListener(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;)V

    .line 176
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v3, Lio/github/hidroh/materialistic/StoryListViewModel;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lio/github/hidroh/materialistic/StoryListViewModel;

    iput-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mStoryListViewModel:Lio/github/hidroh/materialistic/StoryListViewModel;

    .line 177
    iget-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mStoryListViewModel:Lio/github/hidroh/materialistic/StoryListViewModel;

    iget-object v3, p0, Lio/github/hidroh/materialistic/ListFragment;->mIoThreadScheduler:Lrx/Scheduler;

    invoke-virtual {v2, v1, v3}, Lio/github/hidroh/materialistic/StoryListViewModel;->inject(Lio/github/hidroh/materialistic/data/ItemManager;Lrx/Scheduler;)V

    .line 178
    iget-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mStoryListViewModel:Lio/github/hidroh/materialistic/StoryListViewModel;

    iget-object v3, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    iget v4, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    invoke-virtual {v2, v3, v4}, Lio/github/hidroh/materialistic/StoryListViewModel;->getStories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$sNwCGt3PnAcyxMRWTQjhOQddKu8;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$sNwCGt3PnAcyxMRWTQjhOQddKu8;-><init>(Lio/github/hidroh/materialistic/ListFragment;)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 189
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    instance-of v0, p1, Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mRefreshCallback:Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;

    .line 93
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$jJimaPCZa49xvXO9ncIdXeK8aTM;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$jJimaPCZa49xvXO9ncIdXeK8aTM;-><init>(Lio/github/hidroh/materialistic/ListFragment;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p1, v1, v2}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 97
    return-void

    nop

    :array_0
    .array-data 4
        0x7f1000d5
        0x7f100127
        0x7f1000be
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v0, "state:filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    .line 103
    const-string v0, "state:cacheMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_FILTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    .line 107
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    const/4 v0, 0x0

    const v1, 0x7f0c004c

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mErrorView:Landroid/view/View;

    .line 114
    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mEmptyView:Landroid/view/View;

    .line 115
    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    const v2, 0x7f090118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 117
    iget-object v2, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x7f0600ac

    aput v5, v4, v0

    invoke-virtual {v2, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 118
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v4, 0x7f04008a

    invoke-static {v2, v4}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v2

    .line 118
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 120
    if-nez p3, :cond_0

    .line 121
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$JPaCiHGO67ea5GjUxho6aD5HjcU;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ListFragment$JPaCiHGO67ea5GjUxho6aD5HjcU;-><init>(Lio/github/hidroh/materialistic/ListFragment;)V

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 128
    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .line 200
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mRefreshCallback:Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;

    .line 202
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->onDetach()V

    .line 203
    return-void
.end method

.method onItemsLoaded([Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 233
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 237
    iget-object v3, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v3, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 238
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItems()Landroidx/recyclerview/widget/SortedList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItems()Landroidx/recyclerview/widget/SortedList;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f10004f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 240
    :cond_2
    :goto_0
    iget-object v3, p0, Lio/github/hidroh/materialistic/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 248
    :cond_3
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setItems([Lio/github/hidroh/materialistic/data/Item;)V

    .line 249
    array-length v3, p1

    if-nez v3, :cond_4

    .line 250
    iget-object v3, p0, Lio/github/hidroh/materialistic/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v3, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 253
    :cond_4
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    :goto_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 258
    iget-object v0, p0, Lio/github/hidroh/materialistic/ListFragment;->mRefreshCallback:Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;

    if-eqz v0, :cond_5

    .line 259
    invoke-interface {v0}, Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;->onRefreshed()V

    .line 262
    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 193
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v0, "state:filter"

    iget-object v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "state:cacheMode"

    iget v1, p0, Lio/github/hidroh/materialistic/ListFragment;->mCacheMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic scrollToNext()Z
    .locals 1

    .line 46
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->scrollToNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic scrollToPrevious()Z
    .locals 1

    .line 46
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->scrollToPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic scrollToTop()V
    .locals 0

    .line 46
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->scrollToTop()V

    return-void
.end method
