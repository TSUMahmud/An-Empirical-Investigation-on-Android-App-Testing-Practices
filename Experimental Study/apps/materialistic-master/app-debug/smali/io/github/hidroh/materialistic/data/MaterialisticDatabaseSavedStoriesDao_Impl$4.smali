.class Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "MaterialisticDatabaseSavedStoriesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 79
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$4;->this$0:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 82
    const-string v0, "DELETE FROM saved WHERE title LIKE \'%\' || ? || \'%\'"

    .line 83
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE FROM saved WHERE title LIKE \'%\' || ? || \'%\'"

    return-object v1
.end method
