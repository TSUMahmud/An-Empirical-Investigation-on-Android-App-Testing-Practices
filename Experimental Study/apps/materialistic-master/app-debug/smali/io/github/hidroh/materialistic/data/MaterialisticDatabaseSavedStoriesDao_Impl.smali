.class public final Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;
.super Ljava/lang/Object;
.source "MaterialisticDatabaseSavedStoriesDao_Impl.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSavedStory:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByItemId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByTitle:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$1;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__insertionAdapterOfSavedStory:Landroidx/room/EntityInsertionAdapter;

    .line 65
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$2;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 72
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$3;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByItemId:Landroidx/room/SharedSQLiteStatement;

    .line 79
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$4;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByTitle:Landroidx/room/SharedSQLiteStatement;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    .line 21
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method


# virtual methods
.method public deleteAll()I
    .locals 3

    .line 101
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 102
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 104
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 105
    .local v1, "_result":I
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    nop

    .line 108
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 109
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 106
    return v1

    .line 108
    .end local v1    # "_result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 109
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 110
    throw v1
.end method

.method public deleteByItemId(Ljava/lang/String;)I
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByItemId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 116
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 118
    const/4 v1, 0x1

    .line 119
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 120
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 124
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 125
    .local v2, "_result":I
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    nop

    .line 128
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByItemId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 126
    return v2

    .line 128
    .end local v1    # "_argIndex":I
    .end local v2    # "_result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByItemId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 130
    throw v1
.end method

.method public deleteByTitle(Ljava/lang/String;)I
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByTitle:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 136
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 138
    const/4 v1, 0x1

    .line 139
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 140
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 144
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 145
    .local v2, "_result":I
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    nop

    .line 148
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 149
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByTitle:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 146
    return v2

    .line 148
    .end local v1    # "_argIndex":I
    .end local v2    # "_result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 149
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__preparedStmtOfDeleteByTitle:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 150
    throw v1
.end method

.method public varargs insert([Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;)V
    .locals 2
    .param p1, "savedStories"    # [Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 92
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__insertionAdapterOfSavedStory:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 96
    throw v0
.end method

.method public searchToCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .line 222
    const-string v0, "SELECT * FROM saved WHERE title LIKE \'%\' || ? || \'%\' ORDER BY time DESC"

    .line 223
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM saved WHERE title LIKE \'%\' || ? || \'%\' ORDER BY time DESC"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 224
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 225
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 226
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 230
    :goto_0
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 231
    .local v3, "_tmpResult":Landroid/database/Cursor;
    return-object v3
.end method

.method public selectAll()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;",
            ">;>;"
        }
    .end annotation

    .line 155
    const-string v0, "SELECT * FROM saved ORDER BY time DESC"

    .line 156
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM saved ORDER BY time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 157
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    new-instance v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 209
    invoke-virtual {v2}, Landroidx/lifecycle/ComputableLiveData;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 157
    return-object v2
.end method

.method public selectAllToCursor()Landroid/database/Cursor;
    .locals 3

    .line 214
    const-string v0, "SELECT * FROM saved ORDER BY time DESC"

    .line 215
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM saved ORDER BY time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 216
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 217
    .local v2, "_tmpResult":Landroid/database/Cursor;
    return-object v2
.end method

.method public selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    .locals 18
    .param p1, "itemId"    # Ljava/lang/String;

    .line 236
    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM saved WHERE itemid = ?"

    .line 237
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM saved WHERE itemid = ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 238
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 239
    .local v4, "_argIndex":I
    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v3, v4, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 244
    :goto_0
    move-object/from16 v5, p0

    iget-object v0, v5, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "_cursorIndexOfId":I
    const-string v7, "itemid"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 248
    .local v7, "_cursorIndexOfItemId":I
    const-string v8, "url"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 249
    .local v8, "_cursorIndexOfUrl":I
    const-string v9, "title"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 250
    .local v9, "_cursorIndexOfTitle":I
    const-string v10, "time"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 252
    .local v10, "_cursorIndexOfTime":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 253
    new-instance v11, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    invoke-direct {v11}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;-><init>()V

    .line 255
    .local v11, "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 256
    .local v12, "_tmpId":I
    invoke-virtual {v11, v12}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setId(I)V

    .line 258
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "_tmpItemId":Ljava/lang/String;
    invoke-virtual {v11, v13}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setItemId(Ljava/lang/String;)V

    .line 261
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, "_tmpUrl":Ljava/lang/String;
    invoke-virtual {v11, v14}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setUrl(Ljava/lang/String;)V

    .line 264
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 265
    .local v15, "_tmpTitle":Ljava/lang/String;
    invoke-virtual {v11, v15}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setTitle(Ljava/lang/String;)V

    .line 267
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 268
    .local v17, "_tmpTime":Ljava/lang/String;
    move/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "_tmpTime":Ljava/lang/String;
    .local v0, "_tmpTime":Ljava/lang/String;
    .local v16, "_cursorIndexOfId":I
    invoke-virtual {v11, v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v0    # "_tmpTime":Ljava/lang/String;
    .end local v12    # "_tmpId":I
    .end local v13    # "_tmpItemId":Ljava/lang/String;
    .end local v14    # "_tmpUrl":Ljava/lang/String;
    .end local v15    # "_tmpTitle":Ljava/lang/String;
    goto :goto_1

    .line 270
    .end local v11    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    .end local v16    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    :cond_1
    move/from16 v16, v0

    .end local v0    # "_cursorIndexOfId":I
    .restart local v16    # "_cursorIndexOfId":I
    const/4 v11, 0x0

    .line 272
    .restart local v11    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    :goto_1
    nop

    .line 274
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 272
    return-object v11

    .line 274
    .end local v7    # "_cursorIndexOfItemId":I
    .end local v8    # "_cursorIndexOfUrl":I
    .end local v9    # "_cursorIndexOfTitle":I
    .end local v10    # "_cursorIndexOfTime":I
    .end local v11    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    .end local v16    # "_cursorIndexOfId":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 276
    throw v0
.end method
