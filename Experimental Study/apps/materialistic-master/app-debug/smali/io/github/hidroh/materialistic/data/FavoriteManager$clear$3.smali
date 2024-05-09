.class final Lio/github/hidroh/materialistic/data/FavoriteManager$clear$3;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->clear(Landroid/content/Context;Ljava/lang/String;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$3;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "it"    # Ljava/lang/Integer;

    .line 159
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$3;->$context:Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-static {v1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->access$buildCleared(Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->setLiveValue(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$3;->call(Ljava/lang/Integer;)V

    return-void
.end method
