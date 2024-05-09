.class public Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
.source "FavoriteRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;,
        Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;,
        Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<",
        "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;",
        "Lio/github/hidroh/materialistic/data/Favorite;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field final mActionModeDelegate:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field final mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

.field private mPendingAdd:I

.field final mSelected:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSyncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionModeDelegate"    # Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

    .line 124
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$1;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 120
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mPendingAdd:I

    .line 125
    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeDelegate:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

    .line 126
    new-instance v0, Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/MenuTintDelegate;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    .line 127
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/MenuTintDelegate;->onActivityCreated(Landroid/content/Context;)V

    .line 128
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 151
    return-void
.end method

.method public static synthetic lambda$bindItem$0(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Landroid/view/View;)Z
    .locals 2
    .param p1, "favorite"    # Lio/github/hidroh/materialistic/data/Favorite;
    .param p2, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p3, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeDelegate:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;->startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->toggle(Ljava/lang/String;I)V

    .line 181
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$bindItem$1(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Landroid/view/View;)V
    .locals 0
    .param p1, "favorite"    # Lio/github/hidroh/materialistic/data/Favorite;
    .param p2, "v"    # Landroid/view/View;

    .line 186
    invoke-direct {p0, p2, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->showMoreOptions(Landroid/view/View;Lio/github/hidroh/materialistic/data/Favorite;)V

    return-void
.end method

.method public static synthetic lambda$dismiss$2(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Favorite;Landroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Favorite;
    .param p3, "v"    # Landroid/view/View;

    .line 257
    iput p1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mPendingAdd:I

    .line 258
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->add(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 259
    return-void
.end method

.method public static synthetic lambda$showMoreOptions$3(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Favorite;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 276
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900a9

    if-ne v0, v2, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->vote(Lio/github/hidroh/materialistic/data/Favorite;)V

    .line 278
    return v1

    .line 280
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a4

    if-ne v0, v2, :cond_1

    .line 281
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_ID:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_TEXT:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    return v1

    .line 286
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a8

    if-ne v0, v2, :cond_2

    .line 287
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return v1

    .line 290
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private showMoreOptions(Landroid/view/View;Lio/github/hidroh/materialistic/data/Favorite;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Favorite;

    .line 273
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/github/hidroh/materialistic/widget/PopupMenu;->create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 274
    const v1, 0x7f0d0003

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;

    invoke-direct {v1, p0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$5lChiZf6DKdUL-hb50JlZ3m8pmY;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;)V

    .line 275
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/widget/PopupMenu;->setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu;->show()V

    .line 293
    return-void
.end method

.method private toggle(Ljava/lang/String;I)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 264
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 270
    return-void
.end method

.method private vote(Lio/github/hidroh/materialistic/data/Favorite;)V
    .locals 4
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Favorite;

    .line 296
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/accounts/UserServices;->voteUp(Landroid/content/Context;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)Z

    .line 297
    return-void
.end method


# virtual methods
.method protected bindItem(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object v0

    .line 178
    .local v0, "favorite":Lio/github/hidroh/materialistic/data/Favorite;
    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;

    invoke-direct {v1, p0, v0, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$Jq62fYoewHF6rT-X3LQP3c-0tL0;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    invoke-virtual {p1, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;

    invoke-direct {v1, p0, v0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$vtZwO-73ERKYssmDHLPm7odVKVo;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Favorite;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->bindMoreOptions(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;Z)V

    .line 187
    return-void
.end method

.method protected create(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 167
    new-instance v0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method dismiss(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 252
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object v0

    .line 253
    .local v0, "item":Lio/github/hidroh/materialistic/data/Favorite;
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/github/hidroh/materialistic/data/FavoriteManager;->remove(Landroid/content/Context;Ljava/util/Collection;)V

    .line 255
    const v1, 0x7f100187

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;

    invoke-direct {v2, p0, p2, v0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$FavoriteRecyclerViewAdapter$33UEFRrkE_wMZFR_xhni42esEOs;-><init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Favorite;)V

    .line 256
    const v3, 0x7f10018a

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 260
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 261
    return-void
.end method

.method protected getItem(I)Lio/github/hidroh/materialistic/data/Favorite;
    .locals 1
    .param p1, "position"    # I

    .line 205
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->getItem(I)Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getItem(I)Lio/github/hidroh/materialistic/data/WebItem;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object p1

    return-object p1
.end method

.method protected getItemCacheMode()I
    .locals 1

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager;->getSize()I

    move-result v0

    return v0
.end method

.method protected handleItemClick(Lio/github/hidroh/materialistic/data/Favorite;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Favorite;
    .param p2, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    .line 196
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeDelegate:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->handleItemClick(Lio/github/hidroh/materialistic/data/WebItem;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->toggle(Ljava/lang/String;I)V

    .line 201
    :goto_0
    return-void
.end method

.method protected bridge synthetic handleItemClick(Lio/github/hidroh/materialistic/data/WebItem;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 0

    .line 52
    check-cast p1, Lio/github/hidroh/materialistic/data/Favorite;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->handleItemClick(Lio/github/hidroh/materialistic/data/Favorite;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    return-void
.end method

.method protected isItemAvailable(Lio/github/hidroh/materialistic/data/Favorite;)Z
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Favorite;

    .line 191
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic isItemAvailable(Lio/github/hidroh/materialistic/data/WebItem;)Z
    .locals 0

    .line 52
    check-cast p1, Lio/github/hidroh/materialistic/data/Favorite;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->isItemAvailable(Lio/github/hidroh/materialistic/data/Favorite;)Z

    move-result p1

    return p1
.end method

.method protected isSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 210
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyChanged()V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    .local v0, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 226
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 227
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    .end local v0    # "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    :cond_2
    iget v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mPendingAdd:I

    if-ltz v0, :cond_3

    .line 231
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mPendingAdd:I

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 236
    :goto_1
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 156
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 157
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 162
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 163
    return-void
.end method

.method onVoted(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 301
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 302
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100197

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100199

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V

    .line 308
    :goto_0
    return-void
.end method

.method refreshSelection()V
    .locals 4

    .line 245
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSyncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lio/github/hidroh/materialistic/data/SyncScheduler;->scheduleSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    .end local v1    # "id":Ljava/lang/String;
    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method removeSelection()V
    .locals 3

    .line 240
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSelected:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->remove(Landroid/content/Context;Ljava/util/Collection;)V

    .line 241
    return-void
.end method
