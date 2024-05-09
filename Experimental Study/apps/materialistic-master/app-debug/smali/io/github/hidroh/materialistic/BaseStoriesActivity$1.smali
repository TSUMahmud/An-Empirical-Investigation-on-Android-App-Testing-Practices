.class Lio/github/hidroh/materialistic/BaseStoriesActivity$1;
.super Ljava/lang/Object;
.source "BaseStoriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/BaseStoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/BaseStoriesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/BaseStoriesActivity;

    .line 35
    iput-object p1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 38
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    iget-object v1, v0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdated:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->hasConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    const v2, 0x7f10008b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mLastUpdated:Ljava/lang/Long;

    .line 47
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    const/high16 v12, 0x80000

    .line 47
    invoke-static/range {v6 .. v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/BaseStoriesActivity;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseStoriesActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseStoriesActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    .line 55
    :goto_0
    return-void
.end method
