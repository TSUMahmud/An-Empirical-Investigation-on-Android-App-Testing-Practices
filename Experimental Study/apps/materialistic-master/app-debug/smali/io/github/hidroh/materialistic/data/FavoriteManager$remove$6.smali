.class final Lio/github/hidroh/materialistic/data/FavoriteManager$remove$6;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->remove(Landroid/content/Context;Ljava/util/Collection;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$6;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$6;->call(Ljava/lang/String;)V

    return-void
.end method

.method public final call(Ljava/lang/String;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$6;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$delete(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;)V

    return-void
.end method
