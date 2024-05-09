.class public Landroidx/room/RoomOpenHelper;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomOpenHelper$Delegate;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroidx/room/DatabaseConfiguration;

.field private final mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

.field private final mIdentityHash:Ljava/lang/String;

.field private final mLegacyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;
    .param p2, "delegate"    # Landroidx/room/RoomOpenHelper$Delegate;
    .param p3, "identityHash"    # Ljava/lang/String;
    .param p4, "legacyHash"    # Ljava/lang/String;

    .line 54
    iget v0, p2, Landroidx/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 55
    iput-object p1, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    .line 56
    iput-object p2, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    .line 57
    iput-object p3, p0, Landroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Landroidx/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private checkIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "identityHash":Ljava/lang/String;
    invoke-static {p1}, Landroidx/room/RoomOpenHelper;->hasRoomMasterTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 128
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 132
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 135
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_3
    :goto_1
    return-void
.end method

.method private createMasterTableIfNotExists(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 148
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private static hasRoomMasterTable(Landroidx/sqlite/db/SupportSQLiteDatabase;)Z
    .locals 3
    .param p0, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 152
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 158
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 143
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 144
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-static {v0}, Landroidx/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 68
    invoke-super {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 73
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 74
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 75
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 76
    return-void
.end method

.method public onDowngrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomOpenHelper;->onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    .line 111
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 115
    invoke-super {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 116
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->checkIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 117
    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenHelper$Delegate;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    .line 120
    return-void
.end method

.method public onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "migrated":Z
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v1, p2, p3}, Landroidx/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "migrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    if-eqz v1, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/migration/Migration;

    .line 86
    .local v3, "migration":Landroidx/room/migration/Migration;
    invoke-virtual {v3, p1}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 87
    .end local v3    # "migration":Landroidx/room/migration/Migration;
    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v2, p1}, Landroidx/room/RoomOpenHelper$Delegate;->validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 89
    invoke-direct {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 90
    const/4 v0, 0x1

    .line 93
    .end local v1    # "migrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    :cond_1
    if-nez v0, :cond_3

    .line 94
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mConfiguration:Landroidx/room/DatabaseConfiguration;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroidx/room/DatabaseConfiguration;->isMigrationRequiredFrom(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenHelper$Delegate;->dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 96
    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->mDelegate:Landroidx/room/RoomOpenHelper$Delegate;

    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenHelper$Delegate;->createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    goto :goto_1

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A migration from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was required but not found. Please provide the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "necessary Migration path via "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RoomDatabase.Builder.addMigration(Migration ...) or allow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "destructive migrations via one of the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_3
    :goto_1
    return-void
.end method
