.class public Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;,
        Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;,
        Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemResponseListener;,
        Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<",
        "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;",
        "Lio/github/hidroh/materialistic/data/Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_SHOW_ALL:Ljava/lang/String; = "state:showAll"

.field private static final STATE_USERNAME:Ljava/lang/String; = "state:username"


# instance fields
.field private final VOTED:Ljava/lang/Object;

.field final mAdded:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mCacheMode:I

.field mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

.field mFavoriteRevision:I

.field private mHighlightUpdated:Z

.field mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field final mItems:Landroidx/recyclerview/widget/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/SortedList<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
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

.field private final mPrefObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field final mPromoted:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mShowAll:Z

.field private final mSortedListCallback:Landroidx/recyclerview/widget/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListener:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->VOTED:Ljava/lang/Object;

    .line 70
    new-instance v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$1;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAutoViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 79
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPrefObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 80
    new-instance v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;

    invoke-direct {v0, p0, p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mSortedListCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 98
    new-instance v0, Landroidx/recyclerview/widget/SortedList;

    const-class v1, Lio/github/hidroh/materialistic/data/Item;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mSortedListCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    .line 99
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAdded:Landroidx/collection/ArraySet;

    .line 100
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPromoted:Landroidx/collection/ArrayMap;

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mFavoriteRevision:I

    .line 103
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mHighlightUpdated:Z

    .line 104
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCacheMode:I

    .line 108
    new-instance v0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$K7sP_OKAreniuevOoCJFm8JNT1Y;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$K7sP_OKAreniuevOoCJFm8JNT1Y;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mObserver:Landroidx/lifecycle/Observer;

    .line 147
    new-instance v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;

    .line 148
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->getListSwipePreferences(Landroid/content/Context;)[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    .line 202
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 203
    return-void
.end method

.method public static synthetic lambda$bindItem$2(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p3, "anchor"    # Landroid/view/View;

    .line 340
    invoke-virtual {p0, p3, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->showMoreOptions(Landroid/view/View;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 109
    if-nez p1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isCleared(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 113
    iget v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mFavoriteRevision:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mFavoriteRevision:I

    .line 114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 115
    return-void

    .line 117
    :cond_1
    const/4 v0, -0x1

    .line 118
    .local v0, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 119
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v3}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    move v0, v2

    .line 121
    goto :goto_1

    .line 118
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_3
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 125
    return-void

    .line 127
    :cond_4
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/hidroh/materialistic/data/Item;

    .line 128
    .local v2, "item":Lio/github/hidroh/materialistic/data/Item;
    sget-object v3, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v3, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isAdded(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    invoke-interface {v2, v1}, Lio/github/hidroh/materialistic/data/WebItem;->setFavorite(Z)V

    .line 130
    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mFavoriteRevision:I

    invoke-interface {v2, v1}, Lio/github/hidroh/materialistic/data/Item;->setLocalRevision(I)V

    goto :goto_2

    .line 131
    :cond_5
    sget-object v3, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v3, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isRemoved(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 132
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lio/github/hidroh/materialistic/data/WebItem;->setFavorite(Z)V

    .line 133
    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mFavoriteRevision:I

    invoke-interface {v2, v1}, Lio/github/hidroh/materialistic/data/Item;->setLocalRevision(I)V

    goto :goto_2

    .line 135
    :cond_6
    invoke-interface {v2, v1}, Lio/github/hidroh/materialistic/data/Item;->setIsViewed(Z)V

    .line 137
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 138
    return-void
.end method

.method public static synthetic lambda$notifyUpdated$3(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 421
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setShowAll(Z)V

    .line 422
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->notifyUpdated()V

    .line 423
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 424
    return-void
.end method

.method public static synthetic lambda$onAttachedToRecyclerView$1(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;IZ)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "key"    # I
    .param p3, "contextChanged"    # Z

    .line 213
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/github/hidroh/materialistic/Preferences;->getListSwipePreferences(Landroid/content/Context;)[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v2

    .line 213
    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->setSwipePreferences(Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V

    .line 215
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 216
    return-void
.end method

.method public static synthetic lambda$showMoreOptions$4(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p3, "item"    # Landroid/view/MenuItem;

    .line 450
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900a7

    if-ne v0, v2, :cond_0

    .line 451
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->toggleSave(Lio/github/hidroh/materialistic/data/Item;)V

    .line 452
    return v1

    .line 454
    :cond_0
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a9

    if-ne v0, v2, :cond_1

    .line 455
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->vote(Lio/github/hidroh/materialistic/data/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 456
    return v1

    .line 458
    :cond_1
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a6

    if-ne v0, v2, :cond_2

    .line 459
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->refresh(Lio/github/hidroh/materialistic/data/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 460
    return v1

    .line 462
    :cond_2
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a4

    if-ne v0, v2, :cond_3

    .line 463
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_ID:Ljava/lang/String;

    .line 464
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_TEXT:Ljava/lang/String;

    .line 466
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 463
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 467
    return v1

    .line 469
    :cond_3
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a5

    if-ne v0, v2, :cond_4

    .line 470
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/github/hidroh/materialistic/UserActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lio/github/hidroh/materialistic/UserActivity;->EXTRA_USERNAME:Ljava/lang/String;

    .line 471
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 470
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    return v1

    .line 474
    :cond_4
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a8

    if-ne v0, v2, :cond_5

    .line 475
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return v1

    .line 478
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private setUpdated([Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 362
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mHighlightUpdated:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItems()Landroidx/recyclerview/widget/SortedList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 366
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAdded:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 369
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPromoted:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 370
    new-instance v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;[Lio/github/hidroh/materialistic/data/Item;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;

    invoke-direct {v1, p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;[Lio/github/hidroh/materialistic/data/Item;)V

    .line 391
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 415
    return-void

    .line 363
    :cond_2
    :goto_0
    return-void
.end method

.method private toggleAutoMarkAsViewed(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 536
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->autoMarkAsViewed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAutoViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAutoViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 541
    :goto_0
    return-void
.end method


# virtual methods
.method protected bindItem(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .line 327
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 328
    .local v0, "story":Lio/github/hidroh/materialistic/data/Item;
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mHighlightUpdated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAdded:Landroidx/collection/ArraySet;

    .line 330
    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPromoted:Landroidx/collection/ArrayMap;

    .line 331
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPromoted:Landroidx/collection/ArrayMap;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 329
    :goto_0
    invoke-virtual {p1, v0, v1, v3}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->setUpdated(Lio/github/hidroh/materialistic/data/Item;ZI)V

    .line 333
    :cond_1
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getBy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 333
    :goto_2
    invoke-virtual {p1, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->setChecked(Z)V

    .line 335
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->isViewed()Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->setViewed(Z)V

    .line 336
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v1

    iget v4, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mFavoriteRevision:I

    if-ge v1, v4, :cond_4

    .line 337
    invoke-interface {v0, v2}, Lio/github/hidroh/materialistic/data/WebItem;->setFavorite(Z)V

    .line 339
    :cond_4
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->setFavorite(Z)V

    .line 340
    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;

    invoke-direct {v1, p0, v0, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    invoke-virtual {p1, v1, v3}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->bindMoreOptions(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;Z)V

    .line 341
    return-void
.end method

.method protected create(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 231
    new-instance v0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getItem(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "position"    # I

    .line 350
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItems()Landroidx/recyclerview/widget/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItems()Landroidx/recyclerview/widget/SortedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    return-object v0

    .line 351
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getItem(I)Lio/github/hidroh/materialistic/data/WebItem;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object p1

    return-object p1
.end method

.method protected getItemCacheMode()I
    .locals 1

    .line 358
    iget v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCacheMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 245
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v0

    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAdded:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public getItems()Landroidx/recyclerview/widget/SortedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/SortedList<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    return-object v0
.end method

.method public initDisplayOptions(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->highlightUpdatedEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mHighlightUpdated:Z

    .line 294
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->toggleAutoMarkAsViewed(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 297
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 299
    :cond_0
    return-void
.end method

.method protected isItemAvailable(Lio/github/hidroh/materialistic/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 345
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic isItemAvailable(Lio/github/hidroh/materialistic/data/WebItem;)Z
    .locals 0

    .line 65
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->isItemAvailable(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result p1

    return p1
.end method

.method protected loadItem(I)V
    .locals 5
    .param p1, "adapterPosition"    # I

    .line 317
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 318
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/Item;->setLocalRevision(I)V

    .line 322
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItemCacheMode()I

    move-result v3

    new-instance v4, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemResponseListener;

    invoke-direct {v4, p0, v0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemResponseListener;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-interface {v1, v2, v3, v4}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 323
    return-void
.end method

.method markAsViewed(I)V
    .locals 3
    .param p1, "position"    # I

    .line 524
    if-gez p1, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    .line 528
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 529
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->isItemAvailable(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->isViewed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 532
    :cond_2
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/data/SessionManager;->view(Ljava/lang/String;)V

    .line 533
    return-void

    .line 530
    :cond_3
    :goto_1
    return-void
.end method

.method notifyUpdated()V
    .locals 4

    .line 419
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUpdateListener:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;

    if-eqz v0, :cond_0

    .line 420
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAdded:Landroidx/collection/ArraySet;

    invoke-virtual {v2}, Landroidx/collection/ArraySet;->size()I

    move-result v2

    new-instance v3, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$qqoPgV7snzNffke8hl1uxXC9HmU;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$qqoPgV7snzNffke8hl1uxXC9HmU;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;->onUpdated(ZILandroid/view/View$OnClickListener;)V

    .line 426
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 208
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 209
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 210
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->toggleAutoMarkAsViewed(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 211
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPrefObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;

    invoke-direct {v2, p0, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 219
    return-void

    nop

    :array_0
    .array-data 4
        0x7f1000ef
        0x7f1000f1
    .end array-data
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 65
    check-cast p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->VOTED:Ljava/lang/Object;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->animateVote(I)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 241
    :goto_0
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 224
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 225
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 226
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPrefObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 430
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItems()Landroidx/recyclerview/widget/SortedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 432
    .local v0, "position":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 433
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 435
    :cond_0
    return-void
.end method

.method onVoted(ILjava/lang/Boolean;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "successful"    # Ljava/lang/Boolean;

    .line 508
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 509
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100197

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100199

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 512
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 513
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->VOTED:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 516
    :cond_1
    :goto_0
    return-void
.end method

.method refresh(Lio/github/hidroh/materialistic/data/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 494
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lio/github/hidroh/materialistic/data/Item;->setLocalRevision(I)V

    .line 495
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 496
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 262
    if-nez p1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "state:showAll"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    .line 267
    const-string v0, "state:username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 3

    .line 254
    invoke-super {p0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->saveState()Landroid/os/Bundle;

    move-result-object v0

    .line 255
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v1, "state:showAll"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    const-string v1, "state:username"

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-object v0
.end method

.method public setCacheMode(I)V
    .locals 0
    .param p1, "cacheMode"    # I

    .line 519
    iput p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCacheMode:I

    .line 520
    return-void
.end method

.method public setHighlightUpdated(Z)V
    .locals 0
    .param p1, "highlightUpdated"    # Z

    .line 285
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mHighlightUpdated:Z

    .line 286
    return-void
.end method

.method public setItems([Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 279
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setUpdated([Lio/github/hidroh/materialistic/data/Item;)V

    .line 280
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList;->clear()V

    .line 281
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public setShowAll(Z)V
    .locals 0
    .param p1, "showAll"    # Z

    .line 289
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mShowAll:Z

    .line 290
    return-void
.end method

.method public setUpdateListener(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;)V
    .locals 0
    .param p1, "updateListener"    # Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;

    .line 271
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mUpdateListener:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$UpdateListener;

    .line 272
    return-void
.end method

.method showMoreOptions(Landroid/view/View;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    .line 439
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/github/hidroh/materialistic/widget/PopupMenu;->create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 440
    const v1, 0x7f0d0004

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 442
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10018b

    goto :goto_0

    :cond_0
    const v1, 0x7f100147

    .line 441
    :goto_0
    const v2, 0x7f0900a7

    invoke-interface {v0, v2, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setMenuItemTitle(II)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    sget-object v3, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Save:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 444
    invoke-virtual {v1, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->hasAction(Lio/github/hidroh/materialistic/Preferences$SwipeAction;)Z

    move-result v1

    .line 443
    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setMenuItemVisible(IZ)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    const v1, 0x7f0900a9

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    sget-object v3, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Vote:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 446
    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->hasAction(Lio/github/hidroh/materialistic/Preferences$SwipeAction;)Z

    move-result v2

    .line 445
    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setMenuItemVisible(IZ)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    const v1, 0x7f0900a6

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    sget-object v3, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Refresh:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 448
    invoke-virtual {v2, v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->hasAction(Lio/github/hidroh/materialistic/Preferences$SwipeAction;)Z

    move-result v2

    .line 447
    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setMenuItemVisible(IZ)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$meEA8VVy1ZIlVM9xY2_TNzxmgzM;

    invoke-direct {v1, p0, p2, p3}, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$meEA8VVy1ZIlVM9xY2_TNzxmgzM;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    .line 449
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->show()V

    .line 481
    return-void
.end method

.method toggleSave(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;

    .line 485
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->add(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void
.end method

.method public toggleSave(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .line 302
    const/4 v0, -0x1

    .line 303
    .local v0, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 304
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    move v0, v1

    .line 306
    goto :goto_1

    .line 303
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 310
    return-void

    .line 312
    :cond_2
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->toggleSave(Lio/github/hidroh/materialistic/data/Item;)V

    .line 313
    return-void
.end method

.method vote(Lio/github/hidroh/materialistic/data/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 500
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;

    .line 501
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-direct {v3, p0, v4, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;-><init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Item;)V

    .line 500
    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/accounts/UserServices;->voteUp(Landroid/content/Context;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V

    .line 504
    :cond_0
    return-void
.end method
