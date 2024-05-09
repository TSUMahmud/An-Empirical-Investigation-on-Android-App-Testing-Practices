.class public Lio/github/hidroh/materialistic/FavoriteActivity;
.super Lio/github/hidroh/materialistic/BaseListActivity;
.source "FavoriteActivity.java"


# static fields
.field static final EMPTY_QUERY:Ljava/lang/String;

.field private static final STATE_FILTER:Ljava/lang/String; = "state:filter"


# instance fields
.field private mFilter:Ljava/lang/String;

.field private final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/FavoriteActivity;->EMPTY_QUERY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;-><init>()V

    .line 36
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteActivity$r2J9ZLs0vAO3kJ8p-xH_KeYzoBM;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$FavoriteActivity$r2J9ZLs0vAO3kJ8p-xH_KeYzoBM;-><init>(Lio/github/hidroh/materialistic/FavoriteActivity;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/FavoriteActivity;Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 37
    if-nez p1, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isRemoved(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSelectedItem()Lio/github/hidroh/materialistic/data/WebItem;

    move-result-object v0

    .line 42
    .local v0, "selected":Lio/github/hidroh/materialistic/data/WebItem;
    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p0, v1}, Lio/github/hidroh/materialistic/BaseListActivity;->onItemSelected(Lio/github/hidroh/materialistic/data/WebItem;)V

    goto :goto_0

    .line 46
    .end local v0    # "selected":Lio/github/hidroh/materialistic/data/WebItem;
    :cond_1
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->isCleared(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0, v1}, Lio/github/hidroh/materialistic/BaseListActivity;->onItemSelected(Lio/github/hidroh/materialistic/data/WebItem;)V

    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    nop

    .line 49
    :goto_1
    return-void
.end method


# virtual methods
.method protected getDefaultTitle()Ljava/lang/String;
    .locals 1

    .line 89
    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getItemCacheMode()I
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected instantiateListFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/FavoriteFragment;->EXTRA_FILTER:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-class v1, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method protected isSearchable()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "state:filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 60
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 65
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/BaseListActivity;->onItemSelected(Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 69
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    sget-object v2, Lio/github/hidroh/materialistic/FavoriteActivity;->EMPTY_QUERY:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    .line 73
    :cond_1
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/FavoriteFragment;

    .line 76
    .local v0, "fragment":Lio/github/hidroh/materialistic/FavoriteFragment;
    if-eqz v0, :cond_2

    .line 77
    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/FavoriteFragment;->filter(Ljava/lang/String;)V

    .line 79
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "state:filter"

    iget-object v1, p0, Lio/github/hidroh/materialistic/FavoriteActivity;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
