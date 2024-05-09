.class Lio/github/hidroh/materialistic/data/MaterialisticDatabase$DbConstants;
.super Ljava/lang/Object;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DbConstants"
.end annotation


# static fields
.field static final DB_NAME:Ljava/lang/String; = "Materialistic.db"

.field static final SQL_CREATE_READABLE_TABLE:Ljava/lang/String; = "CREATE TABLE readable (_id INTEGER NOT NULL PRIMARY KEY, itemid TEXT, content TEXT)"

.field static final SQL_CREATE_READ_TABLE:Ljava/lang/String; = "CREATE TABLE read (_id INTEGER NOT NULL PRIMARY KEY, itemid TEXT)"

.field static final SQL_CREATE_SAVED_TABLE:Ljava/lang/String; = "CREATE TABLE saved (_id INTEGER NOT NULL PRIMARY KEY, itemid TEXT, url TEXT, title TEXT, time TEXT)"

.field static final SQL_DROP_FAVORITE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS favorite"

.field static final SQL_DROP_READABILITY_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS readability"

.field static final SQL_DROP_VIEWED_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS viewed"

.field static final SQL_INSERT_FAVORITE_SAVED:Ljava/lang/String; = "INSERT INTO saved SELECT * FROM favorite"

.field static final SQL_INSERT_READABILITY_READABLE:Ljava/lang/String; = "INSERT INTO readable SELECT * FROM readability"

.field static final SQL_INSERT_VIEWED_READ:Ljava/lang/String; = "INSERT INTO read SELECT * FROM viewed"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
