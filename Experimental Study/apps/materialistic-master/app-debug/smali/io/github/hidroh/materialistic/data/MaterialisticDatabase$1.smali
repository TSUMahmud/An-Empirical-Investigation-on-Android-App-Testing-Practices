.class final Lio/github/hidroh/materialistic/data/MaterialisticDatabase$1;
.super Landroidx/room/migration/Migration;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->setupBuilder(Landroidx/room/RoomDatabase$Builder;)Landroidx/room/RoomDatabase$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 56
    const-string v0, "CREATE TABLE saved (_id INTEGER NOT NULL PRIMARY KEY, itemid TEXT, url TEXT, title TEXT, time TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "INSERT INTO saved SELECT * FROM favorite"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "DROP TABLE IF EXISTS favorite"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "CREATE TABLE read (_id INTEGER NOT NULL PRIMARY KEY, itemid TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "INSERT INTO read SELECT * FROM viewed"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "DROP TABLE IF EXISTS viewed"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "CREATE TABLE readable (_id INTEGER NOT NULL PRIMARY KEY, itemid TEXT, content TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "INSERT INTO readable SELECT * FROM readability"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "DROP TABLE IF EXISTS readability"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method
