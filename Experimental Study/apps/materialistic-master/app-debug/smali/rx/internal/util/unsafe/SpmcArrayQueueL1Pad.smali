.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;
.super Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 28
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;, "Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;-><init>(I)V

    .line 29
    return-void
.end method
