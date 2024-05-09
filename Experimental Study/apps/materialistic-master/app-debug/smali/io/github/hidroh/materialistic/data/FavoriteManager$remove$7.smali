.class final Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func1;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .line 189
    sget-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->access$buildRemoved(Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;->call(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
