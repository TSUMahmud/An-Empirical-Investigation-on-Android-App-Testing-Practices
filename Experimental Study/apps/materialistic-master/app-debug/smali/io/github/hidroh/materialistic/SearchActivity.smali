.class public Lio/github/hidroh/materialistic/SearchActivity;
.super Lio/github/hidroh/materialistic/BaseListActivity;
.source "SearchActivity.java"


# static fields
.field private static final MAX_RECENT_SUGGESTIONS:I = 0xa


# instance fields
.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;-><init>()V

    return-void
.end method

.method private sort(Z)V
    .locals 2
    .param p1, "byTime"    # Z

    .line 98
    sget-boolean v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    if-ne v0, p1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    sput-boolean p1, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    .line 102
    invoke-static {p0, p1}, Lio/github/hidroh/materialistic/Preferences;->setSortByRecent(Landroid/content/Context;Z)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ListFragment;

    .line 105
    .local v0, "listFragment":Lio/github/hidroh/materialistic/ListFragment;
    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ListFragment;->filter(Ljava/lang/String;)V

    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method protected getDefaultTitle()Ljava/lang/String;
    .locals 1

    .line 82
    const v0, 0x7f100180

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateListFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_FILTER:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_ITEM_MANAGER:Ljava/lang/String;

    const-class v2, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_ITEM_MANAGER:Ljava/lang/String;

    const-class v2, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    const-class v1, Lio/github/hidroh/materialistic/ListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v0, Lio/github/hidroh/materialistic/SearchActivity$1;

    const-string v1, "io.github.hidroh.materialistic.recentprovider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v1, v2}, Lio/github/hidroh/materialistic/SearchActivity$1;-><init>(Lio/github/hidroh/materialistic/SearchActivity;Landroid/content/Context;Ljava/lang/String;I)V

    .line 53
    .local v0, "suggestions":Landroid/provider/SearchRecentSuggestions;
    iget-object v1, p0, Lio/github/hidroh/materialistic/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v0    # "suggestions":Landroid/provider/SearchRecentSuggestions;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0900be

    if-ne v0, v1, :cond_1

    .line 73
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0900c0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/SearchActivity;->sort(Z)V

    .line 75
    return v0

    .line 77
    :cond_1
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 65
    sget-boolean v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900c0

    goto :goto_0

    :cond_0
    const v0, 0x7f0900bf

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 67
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
