.class final Lio/github/hidroh/materialistic/data/FavoriteManager$clear$2;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func1;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$2;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)I
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$2;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$deleteMultiple(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$2;->call(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
