.class final Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;
.super Landroid/database/CursorWrapper;
.source "FavoriteManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoriteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoriteManager.kt\nio/github/hidroh/materialistic/data/FavoriteManager$Cursor\n*L\n1#1,317:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final getFavorite()Lio/github/hidroh/materialistic/data/Favorite;
    .locals 7

    .line 295
    nop

    .line 296
    const-string v0, "itemid"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string v0, "url"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    const-string v0, "title"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string v0, "time"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(getColumnIndex\u2026eEntry.COLUMN_NAME_TIME))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 295
    new-instance v0, Lio/github/hidroh/materialistic/data/Favorite;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/github/hidroh/materialistic/data/Favorite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 299
    return-object v0
.end method
