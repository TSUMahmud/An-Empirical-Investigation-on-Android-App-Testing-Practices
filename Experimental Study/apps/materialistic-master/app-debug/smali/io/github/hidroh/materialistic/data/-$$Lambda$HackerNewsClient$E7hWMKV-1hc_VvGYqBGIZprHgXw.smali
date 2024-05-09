.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func0;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lrx/Observable;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;Lrx/Observable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;->f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;->f$2:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;->f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;->f$2:Lrx/Observable;

    invoke-static {v0, v1, v2}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->lambda$getItem$3(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
