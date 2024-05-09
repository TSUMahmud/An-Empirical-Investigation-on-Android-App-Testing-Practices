.class public Lio/github/hidroh/materialistic/FavoriteFragment;
.super Lio/github/hidroh/materialistic/BaseListFragment;
.source "FavoriteFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;
.implements Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;


# static fields
.field public static final EXTRA_FILTER:Ljava/lang/String;

.field private static final STATE_FILTER:Ljava/lang/String; = "state:filter"

.field private static final STATE_SEARCH_VIEW_EXPANDED:Ljava/lang/String; = "state:searchViewExpanded"


# instance fields
.field private mActionMode:Landroidx/appcompat/view/ActionMode;

.field mActionViewResolver:Lio/github/hidroh/materialistic/ActionViewResolver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAdapter:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEmptySearchView:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFilter:Ljava/lang/String;

.field private mSearchViewExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/FavoriteFragment;->EXTRA_FILTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListFragment;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 3

    .line 235
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 237
    const v1, 0x7f100048

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$itqltuVBxss1U9ISnfoQmmOL5Ls;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$itqltuVBxss1U9ISnfoQmmOL5Ls;-><init>(Lio/github/hidroh/materialistic/FavoriteFragment;)V

    .line 238
    const v2, 0x104000a

    invoke-interface {v0, v2, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 240
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    return-void
.end method

.method private createSearchView(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuSearch"    # Landroid/view/MenuItem;

    .line 216
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionViewResolver:Lio/github/hidroh/materialistic/ActionViewResolver;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/ActionViewResolver;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 217
    .local v0, "searchView":Landroidx/appcompat/widget/SearchView;
    const v1, 0x7f100084

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "search"

    .line 219
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 221
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 222
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 223
    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$_melh2oI58APdaGbC1qYDTP4TF4;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$_melh2oI58APdaGbC1qYDTP4TF4;-><init>(Lio/github/hidroh/materialistic/FavoriteFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$-HaY2G_sGJpapXMaf5K-34Rggtg;

    invoke-direct {v1, v0}, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$-HaY2G_sGJpapXMaf5K-34Rggtg;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 232
    return-void
.end method

.method public static synthetic lambda$clear$3(Lio/github/hidroh/materialistic/FavoriteFragment;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 239
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->clear(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$createSearchView$1(Lio/github/hidroh/materialistic/FavoriteFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 226
    return-void
.end method

.method static synthetic lambda$createSearchView$2(Landroidx/appcompat/widget/SearchView;)Z
    .locals 2
    .param p0, "searchView"    # Landroidx/appcompat/widget/SearchView;

    .line 229
    sget-object v0, Lio/github/hidroh/materialistic/FavoriteActivity;->EMPTY_QUERY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$onCreateView$0(Lio/github/hidroh/materialistic/FavoriteFragment;Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "bookmark":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    const/4 v1, 0x1

    return v1
.end method

.method private toggleEmptyView(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isEmpty"    # Z
    .param p2, "filter"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptySearchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptySearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptySearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptySearchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :goto_0
    return-void
.end method


# virtual methods
.method protected createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 98
    const v0, 0x7f0d000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    const v0, 0x7f0900ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/FavoriteFragment;->createSearchView(Landroid/view/MenuItem;)V

    .line 100
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    const v0, 0x7f0d0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseListFragment;->createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 104
    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    .line 156
    iput-object p1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->attach(Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method protected getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;
    .locals 2

    .line 162
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    .line 165
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mAdapter:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isInActionMode()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 87
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->notifyChanged()V

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lio/github/hidroh/materialistic/FavoriteFragment;->toggleEmptyView(ZLjava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 196
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v0, "state:filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    .line 61
    const-string v0, "state:searchViewExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/FavoriteFragment;->EXTRA_FILTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    .line 65
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    const v0, 0x7f0c004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lio/github/hidroh/materialistic/BaseListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptySearchView:Landroid/view/View;

    .line 73
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$zoxHbL6vZ6qecAhTJtvJRXo3Wog;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteFragment$zoxHbL6vZ6qecAhTJtvJRXo3Wog;-><init>(Lio/github/hidroh/materialistic/FavoriteFragment;)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 144
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->onDetach()V

    .line 145
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 148
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900a0

    if-ne v0, v2, :cond_0

    .line 119
    invoke-direct {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->clear()V

    .line 120
    return v1

    .line 122
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900ab

    if-ne v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/github/hidroh/materialistic/data/FavoriteManager;->export(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return v1

    .line 126
    :cond_1
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 131
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "state:filter"

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "state:searchViewExpanded"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 93
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->attach(Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 139
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager;->detach()V

    .line 140
    return-void
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 109
    const v0, 0x7f0900ba

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 109
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 112
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseFragment;->prepareOptionsMenu(Landroid/view/Menu;)V

    .line 114
    :cond_2
    return-void
.end method

.method public bridge synthetic scrollToNext()Z
    .locals 1

    .line 41
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->scrollToNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic scrollToPrevious()Z
    .locals 1

    .line 41
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->scrollToPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic scrollToTop()V
    .locals 0

    .line 41
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseListFragment;->scrollToTop()V

    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroidx/appcompat/view/ActionMode$Callback;

    .line 170
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mSearchViewExpanded:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 176
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public stopActionMode()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 187
    return-void
.end method
