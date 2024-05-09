.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$3ZFtyZsZUPaeacRxUmdhF22UW68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/ResponseListener;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$3ZFtyZsZUPaeacRxUmdhF22UW68;->f$0:Lio/github/hidroh/materialistic/data/ResponseListener;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$3ZFtyZsZUPaeacRxUmdhF22UW68;->f$0:Lio/github/hidroh/materialistic/data/ResponseListener;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;->lambda$getStories$0(Lio/github/hidroh/materialistic/data/ResponseListener;Ljava/lang/Throwable;)V

    return-void
.end method
