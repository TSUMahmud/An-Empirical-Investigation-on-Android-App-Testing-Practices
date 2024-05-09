.class abstract Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;
.super Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueConsumerField<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 74
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;, "Lrx/internal/util/unsafe/SpscArrayQueueL3Pad<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueConsumerField;-><init>(I)V

    .line 75
    return-void
.end method
