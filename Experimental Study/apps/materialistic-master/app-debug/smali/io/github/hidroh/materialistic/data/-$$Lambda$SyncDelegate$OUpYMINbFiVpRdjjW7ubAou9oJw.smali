.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$SyncDelegate$OUpYMINbFiVpRdjjW7ubAou9oJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/SyncDelegate;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/SyncDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$SyncDelegate$OUpYMINbFiVpRdjjW7ubAou9oJw;->f$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$SyncDelegate$OUpYMINbFiVpRdjjW7ubAou9oJw;->f$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->lambda$syncReadability$0(Lio/github/hidroh/materialistic/data/SyncDelegate;Ljava/lang/String;)V

    return-void
.end method
