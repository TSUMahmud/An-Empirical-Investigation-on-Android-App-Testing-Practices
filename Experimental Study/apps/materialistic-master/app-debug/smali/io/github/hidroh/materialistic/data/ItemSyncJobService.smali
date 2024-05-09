.class public Lio/github/hidroh/materialistic/data/ItemSyncJobService;
.super Landroid/app/job/JobService;
.source "ItemSyncJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mSyncDelegates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/hidroh/materialistic/data/SyncDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mSyncDelegates:Ljava/util/Map;

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lio/github/hidroh/materialistic/data/ItemSyncJobService;Ljava/lang/String;Landroid/app/job/JobParameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "jobId"    # Ljava/lang/String;
    .param p2, "jobParameters"    # Landroid/app/job/JobParameters;
    .param p3, "token"    # Ljava/lang/String;

    .line 56
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 58
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mSyncDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method createSyncDelegate()Lio/github/hidroh/materialistic/data/SyncDelegate;
    .locals 3

    .line 77
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncDelegate;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    invoke-direct {v0, p0, v1, v2}, Lio/github/hidroh/materialistic/data/SyncDelegate;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/ReadabilityClient;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 43
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 44
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    .line 45
    invoke-interface {v0}, Lio/github/hidroh/materialistic/Injectable;->getApplicationGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lio/github/hidroh/materialistic/ActivityModule;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/ActivityModule;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 46
    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 52
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "jobId":Ljava/lang/String;
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->createSyncDelegate()Lio/github/hidroh/materialistic/data/SyncDelegate;

    move-result-object v1

    .line 54
    .local v1, "syncDelegate":Lio/github/hidroh/materialistic/data/SyncDelegate;
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mSyncDelegates:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;

    invoke-direct {v2, p0, v0, p1}, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;-><init>(Lio/github/hidroh/materialistic/data/ItemSyncJobService;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/data/SyncDelegate;->subscribe(Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;)V

    .line 61
    new-instance v2, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/data/SyncDelegate;->performSync(Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V

    .line 62
    const/4 v2, 0x1

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 67
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mSyncDelegates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mSyncDelegates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->stopSync()V

    .line 71
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
