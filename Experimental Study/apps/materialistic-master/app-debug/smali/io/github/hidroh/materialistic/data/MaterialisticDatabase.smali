.class public abstract Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.super Landroidx/room/RoomDatabase;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$FavoriteEntry;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$DbConstants;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;,
        Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    }
.end annotation


# static fields
.field private static final BASE_URI:Ljava/lang/String; = "content://io.github.hidroh.materialistic"

.field private static sInstance:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;


# instance fields
.field private final mLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static getBaseReadUri()Landroid/net/Uri;
    .locals 2

    .line 76
    const-string v0, "content://io.github.hidroh.materialistic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "read"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseSavedUri()Landroid/net/Uri;
    .locals 2

    .line 72
    const-string v0, "content://io.github.hidroh.materialistic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->sInstance:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    const-string v3, "Materialistic.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->setupBuilder(Landroidx/room/RoomDatabase$Builder;)Landroidx/room/RoomDatabase$Builder;

    .line 46
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    sput-object v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->sInstance:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    .line 48
    :cond_0
    sget-object v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->sInstance:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected static setupBuilder(Landroidx/room/RoomDatabase$Builder;)Landroidx/room/RoomDatabase$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase;",
            ">;)",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase;",
            ">;"
        }
    .end annotation

    .line 53
    .local p0, "builder":Landroidx/room/RoomDatabase$Builder;, "Landroidx/room/RoomDatabase$Builder<Lio/github/hidroh/materialistic/data/MaterialisticDatabase;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/room/migration/Migration;

    new-instance v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$1;

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$1;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    return-object p0
.end method


# virtual methods
.method public createReadUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 96
    invoke-static {}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getBaseReadUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public abstract getReadStoriesDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;
.end method

.method public abstract getReadableDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;
.end method

.method public abstract getSavedStoriesDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;
.end method

.method public setLiveValue(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
