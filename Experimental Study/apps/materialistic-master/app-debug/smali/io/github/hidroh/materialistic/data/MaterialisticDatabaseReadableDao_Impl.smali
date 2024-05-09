.class public final Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;
.super Ljava/lang/Object;
.source "MaterialisticDatabaseReadableDao_Impl.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfReadable:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 20
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl$1;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__insertionAdapterOfReadable:Landroidx/room/EntityInsertionAdapter;

    .line 41
    return-void
.end method


# virtual methods
.method public insert(Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;)V
    .locals 2
    .param p1, "readable"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;

    .line 45
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 47
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__insertionAdapterOfReadable:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 51
    nop

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 51
    throw v0
.end method

.method public selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    .locals 11
    .param p1, "itemId"    # Ljava/lang/String;

    .line 56
    const-string v0, "SELECT * FROM readable WHERE itemid = ? LIMIT 1"

    .line 57
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM readable WHERE itemid = ? LIMIT 1"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 58
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 59
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 64
    :goto_0
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadableDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 66
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, "_cursorIndexOfId":I
    const-string v5, "itemid"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 68
    .local v5, "_cursorIndexOfItemId":I
    const-string v6, "content"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 70
    .local v6, "_cursorIndexOfContent":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "_tmpItemId":Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "_tmpContent":Ljava/lang/String;
    new-instance v9, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;

    invoke-direct {v9, v7, v8}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v9, "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 78
    .local v10, "_tmpId":I
    invoke-virtual {v9, v10}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v7    # "_tmpItemId":Ljava/lang/String;
    .end local v8    # "_tmpContent":Ljava/lang/String;
    .end local v10    # "_tmpId":I
    goto :goto_1

    .line 80
    .end local v9    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    :cond_1
    const/4 v9, 0x0

    .line 82
    .restart local v9    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    :goto_1
    nop

    .line 84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 82
    return-object v9

    .line 84
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfItemId":I
    .end local v6    # "_cursorIndexOfContent":I
    .end local v9    # "_result":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 86
    throw v4
.end method
