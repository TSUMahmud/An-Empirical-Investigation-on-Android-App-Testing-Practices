.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$FE32MaiIi4VwudN3v2e-2S0lbTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FE32MaiIi4VwudN3v2e-2S0lbTQ;->f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FE32MaiIi4VwudN3v2e-2S0lbTQ;->f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;->onResponse(Ljava/lang/String;)V

    return-void
.end method
