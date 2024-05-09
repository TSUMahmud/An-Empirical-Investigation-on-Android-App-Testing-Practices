.class public abstract Lio/github/hidroh/materialistic/BaseStoriesActivity;
.super Lio/github/hidroh/materialistic/BaseListActivity;
.source "BaseStoriesActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/ListFragment$RefreshCallback;


# static fields
.field private static final STATE_LAST_UPDATED:Ljava/lang/String; = "state:lastUpdated"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final mLastUpdateTask:Ljava/lang/Runnable;

.field mLastUpdated:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseListActivity;-><init>()V

    .line 35
    new-instance v0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;-><init>(Lio/github/hidroh/materialistic/BaseStoriesActivity;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdateTask:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract getFetchMode()Ljava/lang/String;
.end method

.method protected instantiateListFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_ITEM_MANAGER:Ljava/lang/String;

    const-class v2, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lio/github/hidroh/materialistic/ListFragment;->EXTRA_FILTER:Ljava/lang/String;

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseStoriesActivity;->getFetchMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-class v1, Lio/github/hidroh/materialistic/ListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v0, "state:lastUpdated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdated:Ljava/lang/Long;

    .line 65
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 76
    invoke-super {p0}, Lio/github/hidroh/materialistic/ThemedActivity;->onPause()V

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public onRefreshed()V
    .locals 2

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/BaseListActivity;->onItemSelected(Lio/github/hidroh/materialistic/data/WebItem;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdated:Ljava/lang/Long;

    .line 92
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 69
    invoke-super {p0}, Lio/github/hidroh/materialistic/ThemedActivity;->onResume()V

    .line 70
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdated:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 84
    const-string v1, "state:lastUpdated"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    :cond_0
    return-void
.end method
