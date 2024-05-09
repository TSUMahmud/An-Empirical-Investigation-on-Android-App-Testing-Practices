.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$aetR_TL6-a_63KUkqdIqS6eGT98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/SyncDelegate;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/SyncDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$aetR_TL6-a_63KUkqdIqS6eGT98;->f$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$aetR_TL6-a_63KUkqdIqS6eGT98;->f$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->stopSync()V

    return-void
.end method
