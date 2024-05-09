.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$rgulBzcVW2Zs1zvNS_X1Q_Q6gXQ;
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

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$rgulBzcVW2Zs1zvNS_X1Q_Q6gXQ;->f$0:Lio/github/hidroh/materialistic/data/ResponseListener;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$rgulBzcVW2Zs1zvNS_X1Q_Q6gXQ;->f$0:Lio/github/hidroh/materialistic/data/ResponseListener;

    check-cast p1, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/ResponseListener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
