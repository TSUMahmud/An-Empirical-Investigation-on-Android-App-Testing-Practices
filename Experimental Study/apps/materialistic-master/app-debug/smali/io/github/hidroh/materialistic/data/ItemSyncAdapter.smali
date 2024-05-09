.class Lio/github/hidroh/materialistic/data/ItemSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "ItemSyncAdapter.java"


# instance fields
.field private final mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;

.field private final mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/ReadabilityClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .param p3, "readabilityClient"    # Lio/github/hidroh/materialistic/data/ReadabilityClient;

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 39
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;->mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;

    .line 40
    iput-object p3, p0, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    .line 41
    return-void
.end method


# virtual methods
.method createSyncDelegate()Lio/github/hidroh/materialistic/data/SyncDelegate;
    .locals 4

    .line 52
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;->mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    invoke-direct {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/SyncDelegate;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/ReadabilityClient;)V

    return-object v0
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .line 46
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;->createSyncDelegate()Lio/github/hidroh/materialistic/data/SyncDelegate;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->performSync(Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V

    .line 47
    return-void
.end method
