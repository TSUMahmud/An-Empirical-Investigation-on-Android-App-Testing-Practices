.class abstract Lrx/internal/util/unsafe/SpscArrayQueueL1Pad;
.super Lrx/internal/util/unsafe/SpscArrayQueueColdField;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueColdField<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 36
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueueL1Pad;, "Lrx/internal/util/unsafe/SpscArrayQueueL1Pad<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueColdField;-><init>(I)V

    .line 37
    return-void
.end method
