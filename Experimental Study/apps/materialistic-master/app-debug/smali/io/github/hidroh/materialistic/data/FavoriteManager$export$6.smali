.class final Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Action1;


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
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $appContext:Landroid/content/Context;

.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;->$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/net/Uri;)V
    .locals 3
    .param p1, "it"    # Landroid/net/Uri;

    .line 129
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;->$appContext:Landroid/content/Context;

    const-string v2, "appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$notifyExportDone(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;->call(Landroid/net/Uri;)V

    return-void
.end method
