.class Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;
.super Landroidx/lifecycle/ComputableLiveData;
.source "MaterialisticDatabaseSavedStoriesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->selectAll()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;
    .param p2, "arg0"    # Ljava/util/concurrent/Executor;

    .line 157
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0, p2}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->compute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected compute()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->_observer:Landroidx/room/InvalidationTracker$Observer;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5$1;

    const-string v1, "saved"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5$1;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->_observer:Landroidx/room/InvalidationTracker$Observer;

    .line 169
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->access$000(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->_observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;->access$000(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, "_cursorIndexOfId":I
    const-string v2, "itemid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, "_cursorIndexOfItemId":I
    const-string v3, "url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "_cursorIndexOfUrl":I
    const-string v4, "title"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, "_cursorIndexOfTitle":I
    const-string v5, "time"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 178
    .local v5, "_cursorIndexOfTime":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 181
    new-instance v7, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    invoke-direct {v7}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;-><init>()V

    .line 183
    .local v7, "_item":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 184
    .local v8, "_tmpId":I
    invoke-virtual {v7, v8}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setId(I)V

    .line 186
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "_tmpItemId":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setItemId(Ljava/lang/String;)V

    .line 189
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "_tmpUrl":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setUrl(Ljava/lang/String;)V

    .line 192
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "_tmpTitle":Ljava/lang/String;
    invoke-virtual {v7, v11}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setTitle(Ljava/lang/String;)V

    .line 195
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, "_tmpTime":Ljava/lang/String;
    invoke-virtual {v7, v12}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->setTime(Ljava/lang/String;)V

    .line 197
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    goto :goto_0

    .line 199
    .end local v7    # "_item":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    .end local v8    # "_tmpId":I
    .end local v9    # "_tmpItemId":Ljava/lang/String;
    .end local v10    # "_tmpUrl":Ljava/lang/String;
    .end local v11    # "_tmpTitle":Ljava/lang/String;
    .end local v12    # "_tmpTime":Ljava/lang/String;
    :cond_1
    nop

    .line 201
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 199
    return-object v6

    .line 201
    .end local v1    # "_cursorIndexOfId":I
    .end local v2    # "_cursorIndexOfItemId":I
    .end local v3    # "_cursorIndexOfUrl":I
    .end local v4    # "_cursorIndexOfTitle":I
    .end local v5    # "_cursorIndexOfTime":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 202
    throw v1

    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 207
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 208
    return-void
.end method
