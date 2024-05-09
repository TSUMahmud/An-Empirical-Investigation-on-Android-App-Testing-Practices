.class final Lio/github/hidroh/materialistic/data/FavoriteManager$add$4;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func1;


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
.field final synthetic $story:Lio/github/hidroh/materialistic/data/WebItem;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$4;->$story:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "it"    # Ljava/lang/String;

    .line 141
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->access$buildAdded(Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$4;->$story:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$4;->call(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
