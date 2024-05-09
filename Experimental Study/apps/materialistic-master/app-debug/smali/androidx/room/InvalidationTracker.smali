.class public Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/InvalidationTracker$WeakObserver;,
        Landroidx/room/InvalidationTracker$ObservedTableTracker;,
        Landroidx/room/InvalidationTracker$Observer;,
        Landroidx/room/InvalidationTracker$ObserverWrapper;
    }
.end annotation


# static fields
.field private static final TRIGGERS:[Ljava/lang/String;


# instance fields
.field volatile mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

.field final mDatabase:Landroidx/room/RoomDatabase;

.field private volatile mInitialized:Z

.field mMaxVersion:J

.field private mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

.field final mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/room/InvalidationTracker$Observer;",
            "Landroidx/room/InvalidationTracker$ObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mQueryArgs:[Ljava/lang/Object;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field mTableIdLookup:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTableNames:[Ljava/lang/String;

.field mTableVersions:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DELETE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "INSERT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 7
    .param p1, "database"    # Landroidx/room/RoomDatabase;
    .param p2, "tableNames"    # [Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/room/InvalidationTracker;->mMaxVersion:J

    .line 110
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    iput-boolean v3, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 120
    new-instance v2, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v2}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    .line 301
    new-instance v2, Landroidx/room/InvalidationTracker$1;

    invoke-direct {v2, p0}, Landroidx/room/InvalidationTracker$1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 131
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 132
    new-instance v2, Landroidx/room/InvalidationTracker$ObservedTableTracker;

    array-length v3, p2

    invoke-direct {v2, v3}, Landroidx/room/InvalidationTracker$ObservedTableTracker;-><init>(I)V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    .line 133
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Landroidx/collection/ArrayMap;

    .line 134
    array-length v2, p2

    .line 135
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 136
    const/4 v3, 0x0

    .local v3, "id":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 137
    aget-object v4, p2, v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "tableName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Landroidx/collection/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 136
    .end local v4    # "tableName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "id":I
    :cond_0
    array-length v3, p2

    new-array v3, v3, [J

    iput-object v3, p0, Landroidx/room/InvalidationTracker;->mTableVersions:[J

    .line 142
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->mTableVersions:[J

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 143
    return-void
.end method

.method private static appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "triggerType"    # Ljava/lang/String;

    .line 174
    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "room_table_modification_trigger_"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    return-void
.end method

.method private startTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 8
    .param p1, "writableDb"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .line 194
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 195
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 197
    .local v6, "trigger":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 198
    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v1, v0, v6}, Landroidx/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v7, " AFTER "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ON `"

    .line 202
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "` BEGIN INSERT OR REPLACE INTO "

    .line 204
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "room_table_modification_log"

    .line 205
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " VALUES(null, "

    .line 206
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "); END"

    .line 208
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    .end local v6    # "trigger":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method private stopTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 8
    .param p1, "writableDb"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .line 183
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 184
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 186
    .local v6, "trigger":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 187
    const-string v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {v1, v0, v6}, Landroidx/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    .end local v6    # "trigger":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 9
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;

    .line 229
    iget-object v0, p1, Landroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    .line 230
    .local v0, "tableNames":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 231
    .local v1, "tableIds":[I
    array-length v2, v0

    .line 232
    .local v2, "size":I
    array-length v3, v0

    new-array v3, v3, [J

    .line 235
    .local v3, "versions":[J
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 236
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Landroidx/collection/ArrayMap;

    aget-object v6, v0, v4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 237
    .local v5, "tableId":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 240
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v4

    .line 241
    iget-wide v6, p0, Landroidx/room/InvalidationTracker;->mMaxVersion:J

    aput-wide v6, v3, v4

    .line 235
    .end local v5    # "tableId":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    .restart local v5    # "tableId":Ljava/lang/Integer;
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is no table with name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 243
    .end local v4    # "i":I
    .end local v5    # "tableId":Ljava/lang/Integer;
    :cond_1
    new-instance v4, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-direct {v4, p1, v1, v0, v3}, Landroidx/room/InvalidationTracker$ObserverWrapper;-><init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V

    .line 245
    .local v4, "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    iget-object v6, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v6

    .line 246
    :try_start_0
    iget-object v7, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v7, p1, v4}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/room/InvalidationTracker$ObserverWrapper;

    move-object v5, v7

    .line 247
    .local v5, "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    if-nez v5, :cond_2

    iget-object v6, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v6, v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onAdded([I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 249
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 251
    :cond_2
    return-void

    .line 247
    .end local v5    # "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v7

    .restart local v5    # "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    return-void
.end method

.method public addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;

    .line 265
    new-instance v0, Landroidx/room/InvalidationTracker$WeakObserver;

    invoke-direct {v0, p0, p1}, Landroidx/room/InvalidationTracker$WeakObserver;-><init>(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V

    invoke-virtual {p0, v0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 266
    return-void
.end method

.method ensureInitialization()Z
    .locals 3

    .line 287
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 288
    return v1

    .line 290
    :cond_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 294
    :cond_1
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_2

    .line 295
    const-string v0, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v1

    .line 298
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method internalInit(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 165
    nop

    .line 166
    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 167
    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 164
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .end local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    throw v0

    .line 169
    .restart local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public refreshVersionsAsync()V
    .locals 3

    .line 389
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    return-void
.end method

.method public removeObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 3
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;

    .line 277
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 278
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v2, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/InvalidationTracker$ObserverWrapper;

    move-object v1, v2

    .line 279
    .local v1, "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    iget-object v2, v1, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    invoke-virtual {v0, v2}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onRemoved([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 283
    :cond_0
    return-void

    .line 279
    .end local v1    # "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v2

    .restart local v1    # "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method syncTriggers()V
    .locals 1

    .line 462
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 466
    return-void
.end method

.method syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 407
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    return-void

    .line 415
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 416
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :try_start_1
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    .local v1, "tablesToSync":[I
    if-nez v1, :cond_1

    .line 443
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 422
    return-void

    .line 424
    :cond_1
    :try_start_3
    array-length v2, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 426
    .local v2, "limit":I
    :try_start_4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 427
    const/4 v3, 0x0

    .local v3, "tableId":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 428
    aget v4, v1, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 433
    :pswitch_0
    invoke-direct {p0, p1, v3}, Landroidx/room/InvalidationTracker;->stopTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    goto :goto_2

    .line 430
    :pswitch_1
    invoke-direct {p0, p1, v3}, Landroidx/room/InvalidationTracker;->startTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    .line 431
    nop

    .line 427
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    .end local v3    # "tableId":I
    :cond_2
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 439
    :try_start_5
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 440
    nop

    .line 441
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v3}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 443
    .end local v1    # "tablesToSync":[I
    .end local v2    # "limit":I
    :try_start_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 444
    nop

    .line 445
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    goto :goto_0

    .line 439
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "tablesToSync":[I
    .restart local v2    # "limit":I
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .end local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 443
    .end local v1    # "tablesToSync":[I
    .end local v2    # "limit":I
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    throw v1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 446
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 448
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_3
    const-string v1, "ROOM"

    const-string v2, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
