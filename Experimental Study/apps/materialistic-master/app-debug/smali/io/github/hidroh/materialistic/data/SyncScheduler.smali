.class public Lio/github/hidroh/materialistic/data/SyncScheduler;
.super Ljava/lang/Object;
.source "SyncScheduler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scheduleSync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    invoke-direct {v0, p1, p2}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->build()Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->scheduleSync(Landroid/content/Context;Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V

    .line 24
    return-void
.end method
