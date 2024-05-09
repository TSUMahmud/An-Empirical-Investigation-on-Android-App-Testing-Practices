.class Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "MaterialisticDatabaseReadStoriesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 20
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl$1;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    .line 28
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 29
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->getItemId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 30
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 34
    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseReadStoriesDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "INSERT OR REPLACE INTO `read`(`_id`,`itemid`) VALUES (nullif(?, 0),?)"

    return-object v0
.end method
