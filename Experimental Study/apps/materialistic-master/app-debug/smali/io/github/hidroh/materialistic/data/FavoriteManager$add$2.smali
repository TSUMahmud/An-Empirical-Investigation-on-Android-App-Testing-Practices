.class final Lio/github/hidroh/materialistic/data/FavoriteManager$add$2;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Action1;


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
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lio/github/hidroh/materialistic/data/WebItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$2;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 2
    .param p1, "it"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 139
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$2;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$insert(Lio/github/hidroh/materialistic/data/FavoriteManager;Lio/github/hidroh/materialistic/data/WebItem;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$2;->call(Lio/github/hidroh/materialistic/data/WebItem;)V

    return-void
.end method
