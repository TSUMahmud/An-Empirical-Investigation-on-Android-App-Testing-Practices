.class public abstract Landroidx/room/RoomOpenHelper$Delegate;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegate"
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Landroidx/room/RoomOpenHelper$Delegate;->version:I

    .line 171
    return-void
.end method


# virtual methods
.method protected abstract createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method

.method protected abstract validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end method
