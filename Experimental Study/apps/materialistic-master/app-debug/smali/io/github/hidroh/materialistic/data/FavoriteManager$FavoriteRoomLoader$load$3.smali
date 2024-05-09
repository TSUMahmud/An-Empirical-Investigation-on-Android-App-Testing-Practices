.class final Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "it"    # Landroid/database/Cursor;

    .line 311
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    iget-object v0, v0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;-><init>(Landroid/database/Cursor;)V

    :goto_0
    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$setCursor$p(Lio/github/hidroh/materialistic/data/FavoriteManager;Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;)V

    .line 312
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->access$getObserver$p(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;

    move-result-object v0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;->onChanged()V

    .line 313
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;->call(Landroid/database/Cursor;)V

    return-void
.end method
