.class abstract Lrx/internal/util/unsafe/SpscUnboundedArrayQueueL2Pad;
.super Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueueL2Pad;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueL2Pad<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;-><init>()V

    return-void
.end method
