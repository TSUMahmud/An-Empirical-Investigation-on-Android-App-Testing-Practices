.class Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "MaterialisticDatabaseSavedStoriesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 34
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    .line 42
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 43
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getItemId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 48
    :goto_0
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_1
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 58
    :goto_2
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 59
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 63
    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "INSERT OR REPLACE INTO `saved`(`_id`,`itemid`,`url`,`title`,`time`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
