.class Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "MaterialisticDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;
    .param p2, "x0"    # I

    .line 32
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 35
    const-string v0, "CREATE TABLE IF NOT EXISTS `saved` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `itemid` TEXT, `url` TEXT, `title` TEXT, `time` TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS `read` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `itemid` TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS `Readable` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `itemid` TEXT, `content` TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"6d7efc4b6410ff6acc7727175ff34c99\")"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 44
    const-string v0, "DROP TABLE IF EXISTS `saved`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "DROP TABLE IF EXISTS `read`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "DROP TABLE IF EXISTS `Readable`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$000(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$100(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$200(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$302(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$400(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 62
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$500(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$600(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;

    invoke-static {v2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;->access$700(Lio/github/hidroh/materialistic/data/MaterialisticDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method protected validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 18
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 71
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    .local v1, "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v2, "_id"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "_id"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "itemid"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "itemid"

    const-string v5, "TEXT"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "url"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "url"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "title"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "title"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "time"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "time"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 78
    .local v2, "_foreignKeysSaved":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 79
    .local v3, "_indicesSaved":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "saved"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 80
    .local v4, "_infoSaved":Landroidx/room/util/TableInfo;
    const-string v5, "saved"

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v5

    .line 81
    .local v5, "_existingSaved":Landroidx/room/util/TableInfo;
    invoke-virtual {v4, v5}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    .local v8, "_columnsRead":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v9, "_id"

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const-string v11, "_id"

    const-string v12, "INTEGER"

    invoke-direct {v10, v11, v12, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v9, "itemid"

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const-string v11, "itemid"

    const-string v12, "TEXT"

    invoke-direct {v10, v11, v12, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 90
    .local v9, "_foreignKeysRead":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    .local v10, "_indicesRead":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v11, Landroidx/room/util/TableInfo;

    const-string v12, "read"

    invoke-direct {v11, v12, v8, v9, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 92
    .local v11, "_infoRead":Landroidx/room/util/TableInfo;
    const-string v12, "read"

    invoke-static {v0, v12}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v12

    .line 93
    .local v12, "_existingRead":Landroidx/room/util/TableInfo;
    invoke-virtual {v11, v12}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 98
    new-instance v13, Ljava/util/HashMap;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    .local v13, "_columnsReadable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v14, "_id"

    new-instance v15, Landroidx/room/util/TableInfo$Column;

    const-string v7, "_id"

    move-object/from16 v17, v1

    .end local v1    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v17, "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v1, "INTEGER"

    invoke-direct {v15, v7, v1, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "itemid"

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const-string v7, "itemid"

    const-string v14, "TEXT"

    const/4 v15, 0x0

    invoke-direct {v6, v7, v14, v15, v15}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "content"

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const-string v7, "content"

    const-string v14, "TEXT"

    invoke-direct {v6, v7, v14, v15, v15}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    .local v1, "_foreignKeysReadable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 104
    .local v6, "_indicesReadable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v7, Landroidx/room/util/TableInfo;

    const-string v14, "Readable"

    invoke-direct {v7, v14, v13, v1, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 105
    .local v7, "_infoReadable":Landroidx/room/util/TableInfo;
    const-string v14, "Readable"

    invoke-static {v0, v14}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v14

    .line 106
    .local v14, "_existingReadable":Landroidx/room/util/TableInfo;
    invoke-virtual {v7, v14}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 111
    return-void

    .line 107
    :cond_0
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "_foreignKeysReadable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v16, "_foreignKeysReadable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    const-string v1, "Migration didn\'t properly handle Readable(io.github.hidroh.materialistic.data.MaterialisticDatabase.Readable).\n Expected:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 94
    .end local v6    # "_indicesReadable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v7    # "_infoReadable":Landroidx/room/util/TableInfo;
    .end local v13    # "_columnsReadable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v14    # "_existingReadable":Landroidx/room/util/TableInfo;
    .end local v16    # "_foreignKeysReadable":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v17    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v1, "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v17    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migration didn\'t properly handle read(io.github.hidroh.materialistic.data.MaterialisticDatabase.ReadStory).\n Expected:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n Found:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .end local v8    # "_columnsRead":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v9    # "_foreignKeysRead":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v10    # "_indicesRead":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v11    # "_infoRead":Landroidx/room/util/TableInfo;
    .end local v12    # "_existingRead":Landroidx/room/util/TableInfo;
    .end local v17    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v1    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    :cond_2
    move-object/from16 v17, v1

    .end local v1    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v17    # "_columnsSaved":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migration didn\'t properly handle saved(io.github.hidroh.materialistic.data.MaterialisticDatabase.SavedStory).\n Expected:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n Found:\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
