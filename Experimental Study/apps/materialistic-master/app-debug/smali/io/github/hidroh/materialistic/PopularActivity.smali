.class public Lio/github/hidroh/materialistic/PopularActivity;
.super Lio/github/hidroh/materialistic/BaseListActivity;
.source "PopularActivity.java"


# static fields
.field private static final STATE_RANGE:Ljava/lang/String; = "state:range"


# instance fields
.field private mRange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;-><init>()V

    return-void
.end method

.method private filter(Ljava/lang/String;)V
    .locals 2
    .param p1, "range"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/PopularActivity;->setRange(Ljava/lang/String;)V

    .line 90
    invoke-static {p0, p1}, Lio/github/hidroh/materialistic/Preferences;->setPopularRange(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ListFragment;

    .line 93
    .local v0, "listFragment":Lio/github/hidroh/materialistic/ListFragment;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/ListFragment;->filter(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private setRange(Ljava/lang/String;)V
    .locals 2
    .param p1, "range"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lio/github/hidroh/materialistic/PopularActivity;->mRange:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x56f8b6c3

    if-eq v0, v1, :cond_4

    const v1, -0x36ec4fff

    if-eq v0, v1, :cond_3

    const v1, -0x36eb67b6

    if-eq v0, v1, :cond_2

    const v1, 0x58da1413

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "past_month"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "past_year"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const-string v0, "past_week"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "last_24h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 104
    const v0, 0x7f1000b7

    .line 105
    .local v0, "stringRes":I
    goto :goto_2

    .line 113
    .end local v0    # "stringRes":I
    :pswitch_0
    const v0, 0x7f1000ba

    goto :goto_2

    .line 110
    :pswitch_1
    const v0, 0x7f1000b8

    .line 111
    .restart local v0    # "stringRes":I
    goto :goto_2

    .line 107
    .end local v0    # "stringRes":I
    :pswitch_2
    const v0, 0x7f1000b9

    .line 108
    .restart local v0    # "stringRes":I
    nop

    .line 116
    :goto_2
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    .line 117
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getDefaultTitle()Ljava/lang/String;
    .locals 1

    .line 71
    const v0, 0x7f10017e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateListFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getPopularRange(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/PopularActivity;->setRange(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_FILTER:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/PopularActivity;->mRange:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_ITEM_MANAGER:Ljava/lang/String;

    const-class v2, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-class v1, Lio/github/hidroh/materialistic/ListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method protected isSearchable()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string v0, "state:range"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/PopularActivity;->setRange(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 42
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0900b2

    if-ne v0, v2, :cond_0

    .line 48
    const-string v0, "last_24h"

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/PopularActivity;->filter(Ljava/lang/String;)V

    .line 49
    return v1

    .line 50
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900b4

    if-ne v0, v2, :cond_1

    .line 51
    const-string v0, "past_week"

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/PopularActivity;->filter(Ljava/lang/String;)V

    .line 52
    return v1

    .line 53
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900b3

    if-ne v0, v2, :cond_2

    .line 54
    const-string v0, "past_month"

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/PopularActivity;->filter(Ljava/lang/String;)V

    .line 55
    return v1

    .line 56
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900b5

    if-ne v0, v2, :cond_3

    .line 57
    const-string v0, "past_year"

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/PopularActivity;->filter(Ljava/lang/String;)V

    .line 58
    return v1

    .line 60
    :cond_3
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "state:range"

    iget-object v1, p0, Lio/github/hidroh/materialistic/PopularActivity;->mRange:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
