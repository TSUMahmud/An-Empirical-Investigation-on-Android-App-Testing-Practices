.class public Lio/github/hidroh/materialistic/data/ItemSyncService;
.super Landroid/app/Service;
.source "ItemSyncService.java"


# static fields
.field private static sItemSyncAdapter:Lio/github/hidroh/materialistic/data/ItemSyncAdapter;

.field private static final sItemSyncAdapterLock:Ljava/lang/Object;


# instance fields
.field mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lio/github/hidroh/materialistic/data/ItemSyncService;->sItemSyncAdapter:Lio/github/hidroh/materialistic/data/ItemSyncAdapter;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/ItemSyncService;->sItemSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 52
    sget-object v0, Lio/github/hidroh/materialistic/data/ItemSyncService;->sItemSyncAdapter:Lio/github/hidroh/materialistic/data/ItemSyncAdapter;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    .line 39
    invoke-interface {v0}, Lio/github/hidroh/materialistic/Injectable;->getApplicationGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lio/github/hidroh/materialistic/ActivityModule;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/ActivityModule;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 40
    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lio/github/hidroh/materialistic/data/ItemSyncService;->sItemSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lio/github/hidroh/materialistic/data/ItemSyncService;->sItemSyncAdapter:Lio/github/hidroh/materialistic/data/ItemSyncAdapter;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/ItemSyncService;->mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;

    iget-object v4, p0, Lio/github/hidroh/materialistic/data/ItemSyncService;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    invoke-direct {v1, v2, v3, v4}, Lio/github/hidroh/materialistic/data/ItemSyncAdapter;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/ReadabilityClient;)V

    sput-object v1, Lio/github/hidroh/materialistic/data/ItemSyncService;->sItemSyncAdapter:Lio/github/hidroh/materialistic/data/ItemSyncAdapter;

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
