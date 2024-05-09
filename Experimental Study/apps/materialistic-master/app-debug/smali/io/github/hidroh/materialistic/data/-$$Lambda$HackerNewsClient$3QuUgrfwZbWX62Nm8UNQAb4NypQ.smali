.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$3QuUgrfwZbWX62Nm8UNQAb4NypQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$3QuUgrfwZbWX62Nm8UNQAb4NypQ;->f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$3QuUgrfwZbWX62Nm8UNQAb4NypQ;->f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

    check-cast p1, [I

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->lambda$3QuUgrfwZbWX62Nm8UNQAb4NypQ(Lio/github/hidroh/materialistic/data/HackerNewsClient;[I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object p1

    return-object p1
.end method
