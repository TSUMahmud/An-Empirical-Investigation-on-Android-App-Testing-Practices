.class public final Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;
.super Ljava/lang/Object;
.source "MaterialisticDatabaseReadStoriesDao_Impl.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfReadStory:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 20
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl$1;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__insertionAdapterOfReadStory:Landroidx/room/EntityInsertionAdapter;

    .line 36
    return-void
.end method


# virtual methods
.method public insert(Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;)V
    .locals 2
    .param p1, "readStory"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    .line 40
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 42
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__insertionAdapterOfReadStory:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 46
    nop

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 46
    throw v0
.end method

.method public selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    .locals 9
    .param p1, "itemId"    # Ljava/lang/String;

    .line 51
    const-string v0, "SELECT * FROM read WHERE itemid = ? LIMIT 1"

    .line 52
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM read WHERE itemid = ? LIMIT 1"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 53
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 54
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 59
    :goto_0
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 61
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 62
    .local v4, "_cursorIndexOfId":I
    const-string v5, "itemid"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 64
    .local v5, "_cursorIndexOfItemId":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "_tmpItemId":Ljava/lang/String;
    new-instance v7, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    invoke-direct {v7, v6}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;-><init>(Ljava/lang/String;)V

    .line 69
    .local v7, "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 70
    .local v8, "_tmpId":I
    invoke-virtual {v7, v8}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v6    # "_tmpItemId":Ljava/lang/String;
    .end local v8    # "_tmpId":I
    goto :goto_1

    .line 72
    .end local v7    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    :cond_1
    const/4 v7, 0x0

    .line 74
    .restart local v7    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    :goto_1
    nop

    .line 76
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 74
    return-object v7

    .line 76
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfItemId":I
    .end local v7    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 77
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 78
    throw v4
.end method
