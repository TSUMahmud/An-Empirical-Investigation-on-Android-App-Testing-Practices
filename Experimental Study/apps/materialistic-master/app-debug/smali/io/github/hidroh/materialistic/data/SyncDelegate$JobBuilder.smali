.class public Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;
.super Ljava/lang/Object;
.source "SyncDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/SyncDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobBuilder"
.end annotation


# instance fields
.field private final job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    invoke-direct {v0, p2}, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    .line 480
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences$Offline;->currentConnectionEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->setConnectionEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    .line 481
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences$Offline;->isReadabilityEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->setReadabilityEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    .line 482
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences$Offline;->isArticleEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->setArticleEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    .line 483
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences$Offline;->isCommentsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->setCommentsEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    .line 484
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences$Offline;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->setNotificationEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    .line 485
    return-void
.end method


# virtual methods
.method public build()Lio/github/hidroh/materialistic/data/SyncDelegate$Job;
    .locals 1

    .line 513
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    return-object v0
.end method

.method setArticleEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;
    .locals 1
    .param p1, "articleEnabled"    # Z

    .line 498
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iput-boolean p1, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    .line 499
    return-object p0
.end method

.method setCommentsEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;
    .locals 1
    .param p1, "commentsEnabled"    # Z

    .line 503
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iput-boolean p1, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    .line 504
    return-object p0
.end method

.method setConnectionEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;
    .locals 1
    .param p1, "connectionEnabled"    # Z

    .line 488
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iput-boolean p1, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    .line 489
    return-object p0
.end method

.method public setNotificationEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;
    .locals 1
    .param p1, "notificationEnabled"    # Z

    .line 508
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iput-boolean p1, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->notificationEnabled:Z

    .line 509
    return-object p0
.end method

.method setReadabilityEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;
    .locals 1
    .param p1, "readabilityEnabled"    # Z

    .line 493
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->job:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iput-boolean p1, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    .line 494
    return-object p0
.end method
