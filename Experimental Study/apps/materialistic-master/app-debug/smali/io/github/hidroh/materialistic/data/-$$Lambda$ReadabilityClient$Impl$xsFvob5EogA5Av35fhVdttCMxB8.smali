.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func0;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;->f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;->f$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->lambda$parse$0(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
