.class public Lio/github/hidroh/materialistic/ItemFragment;
.super Lio/github/hidroh/materialistic/LazyLoadFragment;
.source "ItemFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Scrollable;
.implements Lio/github/hidroh/materialistic/Navigable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/ItemFragment$ItemChangedListener;,
        Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;
    }
.end annotation


# static fields
.field public static final EXTRA_CACHE_MODE:Ljava/lang/String;

.field public static final EXTRA_ITEM:Ljava/lang/String;

.field private static final STATE_ADAPTER_ITEMS:Ljava/lang/String; = "state:adapterItems"

.field private static final STATE_CACHE_MODE:Ljava/lang/String; = "state:cacheMode"

.field private static final STATE_ITEM:Ljava/lang/String; = "state:item"

.field private static final STATE_ITEM_ID:Ljava/lang/String; = "state:itemId"


# instance fields
.field private mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

.field private mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

.field private mCacheMode:I

.field private mEmptyView:Landroid/view/View;

.field private mFragmentView:Landroid/view/View;

.field private mItem:Lio/github/hidroh/materialistic/data/Item;

.field private mItemDecoration:Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

.field private mItemId:Ljava/lang/String;

.field mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field private final mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ItemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ItemFragment;->EXTRA_ITEM:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ItemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_CACHE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ItemFragment;->EXTRA_CACHE_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    .line 71
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    return-void
.end method

.method private bindKidData()V
    .locals 5

    .line 232
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 237
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->getCommentDisplayOption(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "displayOption":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/hidroh/materialistic/Preferences;->isSinglePage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lio/github/hidroh/materialistic/Preferences;->isAutoExpand(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 242
    .local v1, "autoExpand":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    if-nez v2, :cond_2

    .line 243
    :cond_1
    new-instance v2, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    .line 244
    invoke-interface {v4}, Lio/github/hidroh/materialistic/data/Item;->getKidItems()[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    .line 246
    :cond_2
    new-instance v2, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    iget-object v4, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-direct {v2, v3, v4, v1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;Z)V

    iput-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    .line 247
    .end local v1    # "autoExpand":Z
    goto :goto_0

    .line 248
    :cond_3
    new-instance v1, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;

    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v3}, Lio/github/hidroh/materialistic/data/Item;->getKidItems()[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;[Lio/github/hidroh/materialistic/data/Item;)V

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    .line 250
    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iget v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->setCacheMode(I)V

    .line 251
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->initDisplayOptions(Landroid/content/Context;)V

    .line 252
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v3}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 253
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 254
    return-void

    .line 233
    .end local v0    # "displayOption":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lio/github/hidroh/materialistic/ItemFragment;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    .line 127
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 128
    iget v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->setCacheMode(I)V

    .line 130
    :cond_1
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ItemFragment;->loadKidData()V

    .line 131
    return-void
.end method

.method public static synthetic lambda$onNavigate$1(Lio/github/hidroh/materialistic/ItemFragment;I)V
    .locals 2
    .param p1, "position"    # I

    .line 200
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v1, p1}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToPosition(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->lockBinding([I)V

    return-void
.end method

.method public static synthetic lambda$qj-OKuysoMpXc8P4-FEpsU2xjng(Lio/github/hidroh/materialistic/ItemFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/ItemFragment;->onPreferenceChanged(IZ)V

    return-void
.end method

.method private loadKidData()V
    .locals 4

    .line 218
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemId:Ljava/lang/String;

    iget v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    new-instance v3, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;-><init>(Lio/github/hidroh/materialistic/ItemFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 219
    return-void
.end method

.method private notifyItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lio/github/hidroh/materialistic/ItemFragment$ItemChangedListener;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemFragment$ItemChangedListener;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/ItemFragment$ItemChangedListener;->onItemChanged(Lio/github/hidroh/materialistic/data/Item;)V

    .line 284
    :cond_0
    return-void
.end method

.method private onPreferenceChanged(IZ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 257
    if-nez p2, :cond_1

    const v0, 0x7f1000c6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->smoothScrollEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->smoothScrollEnabled(Z)V

    .line 261
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemDecoration:Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->colorCodeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->setColorCodeEnabled(Z)V

    .line 262
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemDecoration:Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->threadIndicatorEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->setThreadIndicatorEnabled(Z)V

    .line 263
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->initDisplayOptions(Landroid/content/Context;)V

    .line 264
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ItemFragment;->load()V

    .line 266
    :cond_2
    :goto_1
    return-void
.end method

.method private showPreferences()V
    .locals 4

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_TITLE:Ljava/lang/String;

    const v2, 0x7f10006b

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_SUMMARY:Ljava/lang/String;

    const v2, 0x7f10013a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    sget-object v1, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_XML_PREFERENCES:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lio/github/hidroh/materialistic/PopupSettingsFragment;

    .line 276
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v1, v2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lio/github/hidroh/materialistic/PopupSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 278
    return-void

    :array_0
    .array-data 4
        0x7f130008
        0x7f130006
    .end array-data
.end method


# virtual methods
.method protected createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 214
    const v0, 0x7f0d0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    return-void
.end method

.method protected load()V
    .locals 1

    .line 205
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ItemFragment;->bindKidData()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ItemFragment;->loadKidData()V

    .line 210
    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onAttach(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ItemFragment$qj-OKuysoMpXc8P4-FEpsU2xjng;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemFragment$qj-OKuysoMpXc8P4-FEpsU2xjng;-><init>(Lio/github/hidroh/materialistic/ItemFragment;)V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p1, v1, v2}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 89
    return-void

    nop

    :array_0
    .array-data 4
        0x7f1000c6
        0x7f1000f3
        0x7f100127
        0x7f1000eb
        0x7f1000c2
        0x7f100125
        0x7f1000d3
        0x7f100121
        0x7f100119
        0x7f1000c3
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 95
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 96
    const-string v1, "state:cacheMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    .line 97
    const-string v0, "state:item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    .line 98
    const-string v0, "state:itemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemId:Ljava/lang/String;

    .line 99
    const-string v0, "state:adapterItems"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/ItemFragment;->EXTRA_CACHE_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ItemFragment;->EXTRA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/WebItem;

    .line 103
    .local v0, "item":Lio/github/hidroh/materialistic/data/WebItem;
    instance-of v1, v0, Lio/github/hidroh/materialistic/data/Item;

    if-eqz v1, :cond_1

    .line 104
    move-object v1, v0

    check-cast v1, Lio/github/hidroh/materialistic/data/Item;

    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    .line 106
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemId:Ljava/lang/String;

    .line 108
    .end local v0    # "item":Lio/github/hidroh/materialistic/data/WebItem;
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->isNewInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const v0, 0x7f0c004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mFragmentView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mEmptyView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0900e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 117
    new-instance v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemDecoration:Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    .line 118
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemDecoration:Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 119
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f090118

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 120
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v2, v4, [I

    const v3, 0x7f0600ac

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 121
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f06008f

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 122
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ItemFragment$zLC4OCob1Nd6GGPu-X1valwlPeM;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemFragment$zLC4OCob1Nd6GGPu-X1valwlPeM;-><init>(Lio/github/hidroh/materialistic/ItemFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 166
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseFragment;->onDestroy()V

    .line 167
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 174
    invoke-super {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onDetach()V

    .line 175
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mPreferenceObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 222
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 223
    if-eqz p1, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    .line 225
    iput-object p1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    .line 226
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/ItemFragment;->notifyItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V

    .line 227
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ItemFragment;->bindKidData()V

    .line 229
    :cond_0
    return-void
.end method

.method public onNavigate(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 195
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getCurrentPosition()I

    move-result v1

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ItemFragment$6jjNJ7u90a0Cjs-e9BFsVY_4B5M;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ItemFragment$6jjNJ7u90a0Cjs-e9BFsVY_4B5M;-><init>(Lio/github/hidroh/materialistic/ItemFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->getNextPosition(IILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    .line 201
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a3

    if-ne v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ItemFragment;->showPreferences()V

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 157
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/LazyLoadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "state:item"

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItem:Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    const-string v0, "state:itemId"

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mItemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "state:adapterItems"

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mAdapterItems:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    const-string v0, "state:cacheMode"

    iget v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mCacheMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 138
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->isNewInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ItemFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    .line 142
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->smoothScrollEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->smoothScrollEnabled(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public scrollToNext()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToNext()Z

    move-result v0

    return v0
.end method

.method public scrollToPrevious()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToPrevious()Z

    move-result v0

    return v0
.end method

.method public scrollToTop()V
    .locals 1

    .line 180
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment;->mScrollableHelper:Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->scrollToTop()V

    .line 181
    return-void
.end method
