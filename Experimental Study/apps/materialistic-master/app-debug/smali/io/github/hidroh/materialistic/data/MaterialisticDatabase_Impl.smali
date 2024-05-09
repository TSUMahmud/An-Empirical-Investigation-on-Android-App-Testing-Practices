.class public final Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;
.super Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.source "MaterialisticDatabase_Impl.java"


# instance fields
.field private volatile _readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

.field private volatile _readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

.field private volatile _savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    .line 23
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    .line 23
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    .line 23
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 23
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 23
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    .line 23
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    .line 23
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    .line 23
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 128
    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 129
    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 131
    .local v0, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 132
    const-string v1, "DELETE FROM `saved`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v1, "DELETE FROM `read`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v1, "DELETE FROM `Readable`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 138
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v1, "VACUUM"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void

    .line 137
    :catchall_0
    move-exception v1

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 138
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    const-string v2, "VACUUM"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 123
    new-instance v0, Landroidx/room/InvalidationTracker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "saved"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "read"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Readable"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 32
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;I)V

    const-string v2, "6d7efc4b6410ff6acc7727175ff34c99"

    const-string v3, "b4faee4f2c1e011a609939ca8b84cc44"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 115
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 116
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 117
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 118
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public getReadStoriesDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    return-object v0

    .line 164
    :cond_0
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    .line 168
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    monitor-exit p0

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReadableDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;
    .locals 1

    .line 175
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    return-object v0

    .line 178
    :cond_0
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    .line 182
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    monitor-exit p0

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSavedStoriesDao()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    return-object v0

    .line 150
    :cond_0
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    .line 154
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->_savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    monitor-exit p0

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
