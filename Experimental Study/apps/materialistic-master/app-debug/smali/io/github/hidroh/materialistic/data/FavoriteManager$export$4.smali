.class final Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->export(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $appContext:Landroid/content/Context;

.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;->$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "it"    # Landroid/database/Cursor;

    .line 117
    nop

    .line 118
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;->$appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;-><init>(Landroid/database/Cursor;)V

    invoke-static {v0, v1, v2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$toFile(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 123
    nop

    .line 117
    nop

    .line 123
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;->call(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
