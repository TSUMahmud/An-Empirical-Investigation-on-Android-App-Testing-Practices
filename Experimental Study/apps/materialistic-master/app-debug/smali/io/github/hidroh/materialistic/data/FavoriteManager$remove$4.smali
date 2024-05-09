.class final Lio/github/hidroh/materialistic/data/FavoriteManager$remove$4;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->remove(Landroid/content/Context;Ljava/lang/String;)V
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
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$4;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/net/Uri;)V
    .locals 1
    .param p1, "it"    # Landroid/net/Uri;

    .line 175
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$4;->$context:Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getInstance(Landroid/content/Context;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->setLiveValue(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$4;->call(Landroid/net/Uri;)V

    return-void
.end method
