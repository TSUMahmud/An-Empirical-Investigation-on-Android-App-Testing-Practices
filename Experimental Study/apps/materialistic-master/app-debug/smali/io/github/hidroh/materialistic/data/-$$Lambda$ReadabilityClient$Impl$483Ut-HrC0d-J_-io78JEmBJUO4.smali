.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;->f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;->f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->lambda$parse$1(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
