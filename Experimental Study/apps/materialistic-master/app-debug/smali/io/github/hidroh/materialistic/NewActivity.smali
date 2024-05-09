.class public Lio/github/hidroh/materialistic/NewActivity;
.super Lio/github/hidroh/materialistic/BaseStoriesActivity;
.source "NewActivity.java"


# static fields
.field public static final EXTRA_REFRESH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/NewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/NewActivity;->EXTRA_REFRESH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseStoriesActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultTitle()Ljava/lang/String;
    .locals 1

    .line 42
    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFetchMode()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "new"

    return-object v0
.end method

.method protected getItemCacheMode()I
    .locals 1

    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    sget-object v0, Lio/github/hidroh/materialistic/NewActivity;->EXTRA_REFRESH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/BaseListActivity;->LIST_FRAGMENT_TAG:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ListFragment;

    .line 34
    .local v0, "listFragment":Lio/github/hidroh/materialistic/ListFragment;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/NewActivity;->getFetchMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ListFragment;->filter(Ljava/lang/String;)V

    .line 38
    .end local v0    # "listFragment":Lio/github/hidroh/materialistic/ListFragment;
    :cond_0
    return-void
.end method
