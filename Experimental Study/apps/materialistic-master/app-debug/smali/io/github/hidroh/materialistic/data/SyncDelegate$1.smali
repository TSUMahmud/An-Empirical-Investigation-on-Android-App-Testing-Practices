.class Lio/github/hidroh/materialistic/data/SyncDelegate$1;
.super Ljava/lang/Object;
.source "SyncDelegate.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/SyncDelegate;->sync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/SyncDelegate;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/SyncDelegate;

    .line 186
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$1;->this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$1;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 198
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$1;->this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$1;->val$itemId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/data/SyncDelegate;->notifyItem(Ljava/lang/String;Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 199
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;",
            "Lretrofit2/Response<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-object v1, v0

    .local v1, "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$1;->this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->sync(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 194
    :cond_0
    return-void
.end method
