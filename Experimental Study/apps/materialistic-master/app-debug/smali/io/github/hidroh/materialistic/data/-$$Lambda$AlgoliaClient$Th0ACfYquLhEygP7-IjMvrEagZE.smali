.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$Th0ACfYquLhEygP7-IjMvrEagZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/AlgoliaClient;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/AlgoliaClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$Th0ACfYquLhEygP7-IjMvrEagZE;->f$0:Lio/github/hidroh/materialistic/data/AlgoliaClient;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$Th0ACfYquLhEygP7-IjMvrEagZE;->f$0:Lio/github/hidroh/materialistic/data/AlgoliaClient;

    check-cast p1, Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;->lambda$Th0ACfYquLhEygP7-IjMvrEagZE(Lio/github/hidroh/materialistic/data/AlgoliaClient;Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object p1

    return-object p1
.end method
