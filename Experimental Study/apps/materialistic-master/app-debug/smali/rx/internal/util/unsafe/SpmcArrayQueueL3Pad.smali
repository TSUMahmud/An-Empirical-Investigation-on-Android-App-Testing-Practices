.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.super Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 110
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;, "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;-><init>(I)V

    .line 111
    return-void
.end method
