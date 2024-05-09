.class public Lio/github/hidroh/materialistic/DataModule;
.super Ljava/lang/Object;
.source "DataModule.java"


# annotations
.annotation runtime Ldagger/Module;
    complete = false
    includes = {
        Lio/github/hidroh/materialistic/NetworkModule;
    }
    library = true
.end annotation


# static fields
.field public static final IO_THREAD:Ljava/lang/String; = "io"

.field public static final MAIN_THREAD:Ljava/lang/String; = "main"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideAlgoliaClient(Lio/github/hidroh/materialistic/data/AlgoliaClient;)Lio/github/hidroh/materialistic/data/ItemManager;
    .locals 0
    .param p1, "client"    # Lio/github/hidroh/materialistic/data/AlgoliaClient;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "algolia"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 61
    return-object p1
.end method

.method public provideAlgoliaPopularClient(Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;)Lio/github/hidroh/materialistic/data/ItemManager;
    .locals 0
    .param p1, "client"    # Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "popular"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 66
    return-object p1
.end method

.method public provideDatabase(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 112
    invoke-static {p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    return-object v0
.end method

.method public provideFeedbackClient(Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;)Lio/github/hidroh/materialistic/data/FeedbackClient;
    .locals 0
    .param p1, "client"    # Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 76
    return-object p1
.end method

.method public provideHackerNewsClient(Lio/github/hidroh/materialistic/data/HackerNewsClient;)Lio/github/hidroh/materialistic/data/ItemManager;
    .locals 0
    .param p1, "client"    # Lio/github/hidroh/materialistic/data/HackerNewsClient;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 56
    return-object p1
.end method

.method public provideIoScheduler()Lrx/Scheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "io"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 92
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public provideLocalCache(Lio/github/hidroh/materialistic/data/android/Cache;)Lio/github/hidroh/materialistic/data/LocalCache;
    .locals 0
    .param p1, "cache"    # Lio/github/hidroh/materialistic/data/android/Cache;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 107
    return-object p1
.end method

.method public provideMainThreadScheduler()Lrx/Scheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 97
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public provideOpenHelper(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .param p1, "database"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 132
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public provideReadStoriesDao(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;
    .locals 1
    .param p1, "database"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 122
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getReadStoriesDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    move-result-object v0

    return-object v0
.end method

.method public provideReadabilityClient(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;)Lio/github/hidroh/materialistic/data/ReadabilityClient;
    .locals 0
    .param p1, "client"    # Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 81
    return-object p1
.end method

.method public provideReadableDao(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;
    .locals 1
    .param p1, "database"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 127
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getReadableDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    move-result-object v0

    return-object v0
.end method

.method public provideSavedStoriesDao(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;
    .locals 1
    .param p1, "database"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 117
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getSavedStoriesDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    move-result-object v0

    return-object v0
.end method

.method public provideSyncScheduler()Lio/github/hidroh/materialistic/data/SyncScheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 102
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncScheduler;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/SyncScheduler;-><init>()V

    return-object v0
.end method

.method public provideUserManager(Lio/github/hidroh/materialistic/data/HackerNewsClient;)Lio/github/hidroh/materialistic/data/UserManager;
    .locals 0
    .param p1, "client"    # Lio/github/hidroh/materialistic/data/HackerNewsClient;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 71
    return-object p1
.end method

.method public provideUserServices(Lokhttp3/Call$Factory;Lrx/Scheduler;)Lio/github/hidroh/materialistic/accounts/UserServices;
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "ioScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "io"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 87
    new-instance v0, Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    invoke-direct {v0, p1, p2}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;-><init>(Lokhttp3/Call$Factory;Lrx/Scheduler;)V

    return-object v0
.end method
