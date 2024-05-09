.class public abstract Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;",
        "T::",
        "Lio/github/hidroh/materialistic/data/WebItem;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# static fields
.field private static final STATE_LAST_SELECTION_POSITION:Ljava/lang/String; = "state:lastSelectedPosition"

.field private static final VIEW_TYPE_CARD:I = 0x0

.field private static final VIEW_TYPE_FLAT:I = 0x1


# instance fields
.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCardViewEnabled:Z

.field protected mContext:Landroid/content/Context;

.field private mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

.field mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHotThreshold:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mLastSelectedPosition:I

.field private mMultiPaneListener:Lio/github/hidroh/materialistic/MultiPaneListener;

.field private mMultiWindowEnabled:Z

.field mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mLastSelectedPosition:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCardViewEnabled:Z

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mHotThreshold:I

    .line 68
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 72
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->createLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/Injectable;->inject(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Lio/github/hidroh/materialistic/MultiPaneListener;

    iput-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiPaneListener:Lio/github/hidroh/materialistic/MultiPaneListener;

    .line 76
    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->multiWindowEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiWindowEnabled:Z

    .line 77
    return-void
.end method

.method private clearViewHolder(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->clear()V

    .line 177
    return-void
.end method

.method public static synthetic lambda$onAttachedToRecyclerView$0(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 83
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->multiWindowEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiWindowEnabled:Z

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/WebItem;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "holder"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .param p3, "v"    # Landroid/view/View;

    .line 116
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->handleItemClick(Lio/github/hidroh/materialistic/data/WebItem;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "v"    # Landroid/view/View;

    .line 117
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->openItem(Lio/github/hidroh/materialistic/data/WebItem;)V

    return-void
.end method

.method private openItem(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    .local p1, "item":Lio/github/hidroh/materialistic/data/WebItem;, "TT;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_CACHE_MODE:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->getItemCacheMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_OPEN_COMMENTS:Ljava/lang/String;

    .line 225
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiWindowEnabled:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    .line 227
    invoke-static {v2, v0}, Lio/github/hidroh/materialistic/AppUtils;->multiWindowIntent(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    nop

    .line 226
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected abstract bindItem(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method protected abstract create(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method protected abstract getItem(I)Lio/github/hidroh/materialistic/data/WebItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected abstract getItemCacheMode()I
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 128
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/WebItem;

    move-result-object v0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 123
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCardViewEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected handleItemClick(Lio/github/hidroh/materialistic/data/WebItem;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TVH;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    .local p1, "item":Lio/github/hidroh/materialistic/data/WebItem;, "TT;"
    .local p2, "holder":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiPaneListener:Lio/github/hidroh/materialistic/MultiPaneListener;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/MultiPaneListener;->onItemSelected(Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 204
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 206
    iget v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mLastSelectedPosition:I

    if-ltz v0, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 209
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mLastSelectedPosition:I

    .line 211
    :cond_1
    return-void
.end method

.method final isAttached()Z
    .locals 1

    .line 162
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCardViewEnabled()Z
    .locals 1

    .line 132
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCardViewEnabled:Z

    return v0
.end method

.method protected abstract isItemAvailable(Lio/github/hidroh/materialistic/data/WebItem;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected isSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 185
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiPaneListener:Lio/github/hidroh/materialistic/MultiPaneListener;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/MultiPaneListener;->isMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiPaneListener:Lio/github/hidroh/materialistic/MultiPaneListener;

    .line 186
    invoke-interface {v0}, Lio/github/hidroh/materialistic/MultiPaneListener;->getSelectedItem()Lio/github/hidroh/materialistic/data/WebItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mMultiPaneListener:Lio/github/hidroh/materialistic/MultiPaneListener;

    .line 187
    invoke-interface {v0}, Lio/github/hidroh/materialistic/MultiPaneListener;->getSelectedItem()Lio/github/hidroh/materialistic/data/WebItem;

    move-result-object v0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0
.end method

.method protected loadItem(I)V
    .locals 0
    .param p1, "adapterPosition"    # I

    .line 169
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 82
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$eMf0-B5HLrRtvPKqkiCKbIUysPk;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$eMf0-B5HLrRtvPKqkiCKbIUysPk;-><init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x7f1000f5

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 85
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    check-cast p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 8
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    .local p1, "holder":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/WebItem;

    move-result-object v7

    .line 105
    .local v7, "item":Lio/github/hidroh/materialistic/data/WebItem;, "TT;"
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->clearViewHolder(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    .line 106
    invoke-virtual {p0, v7}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isItemAvailable(Lio/github/hidroh/materialistic/data/WebItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->loadItem(I)V

    .line 108
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-interface {v7}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 112
    iget v2, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mHotThreshold:I

    iget-boolean v3, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCardViewEnabled:Z

    .line 115
    invoke-interface {v7}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$jlnqftxaauIU53jODWxjMyDJn4Y;

    invoke-direct {v5, p0, v7, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$jlnqftxaauIU53jODWxjMyDJn4Y;-><init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/WebItem;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V

    new-instance v6, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;

    invoke-direct {v6, p0, v7}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;-><init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 112
    move-object v0, p1

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->bind(Lio/github/hidroh/materialistic/data/WebItem;IZZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->bindItem(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;I)V

    .line 119
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->create(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    move-result-object v0

    .line 96
    .local v0, "holder":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;, "TVH;"
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->flatten()V

    .line 99
    :cond_0
    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 155
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    if-nez p1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    const-string v0, "state:lastSelectedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mLastSelectedPosition:I

    .line 159
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 3

    .line 149
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v1, "state:lastSelectedPosition"

    iget v2, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mLastSelectedPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    return-object v0
.end method

.method public final setCardViewEnabled(Z)V
    .locals 0
    .param p1, "cardViewEnabled"    # Z

    .line 136
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCardViewEnabled:Z

    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public setCustomTabsDelegate(Lio/github/hidroh/materialistic/CustomTabsDelegate;)V
    .locals 0
    .param p1, "customTabsDelegate"    # Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 141
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 142
    return-void
.end method

.method public setHotThresHold(I)V
    .locals 0
    .param p1, "hotThresHold"    # I

    .line 145
    .local p0, "this":Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter<TVH;TT;>;"
    iput p1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mHotThreshold:I

    .line 146
    return-void
.end method
