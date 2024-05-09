.class final Lio/github/hidroh/materialistic/data/FavoriteManager$add$1;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->add(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "Lrx/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $story:Lio/github/hidroh/materialistic/data/WebItem;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$1;->$story:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$1;->call()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final call()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/WebItem;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$1;->$story:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
