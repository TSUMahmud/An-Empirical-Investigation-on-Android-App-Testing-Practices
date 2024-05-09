.class public final Lrx/internal/util/atomic/SpscAtomicArrayQueue;
.super Lrx/internal/util/atomic/AtomicReferenceArrayQueue;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/atomic/AtomicReferenceArrayQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;


# instance fields
.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final lookAheadStep:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 42
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;-><init>(I)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 46
    return-void
.end method

.method private lvConsumerIndex()J
    .locals 2

    .line 124
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvProducerIndex()J
    .locals 2

    .line 127
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private soConsumerIndex(J)V
    .locals 1
    .param p1, "newIndex"    # J

    .line 120
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 121
    return-void
.end method

.method private soProducerIndex(J)V
    .locals 1
    .param p1, "newIndex"    # J

    .line 116
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 117
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 35
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 5

    .line 112
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 35
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->iterator()Ljava/util/Iterator;

    .end local p0    # "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    const/4 v0, 0x0

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 50
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_2

    .line 54
    iget-object v0, p0, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->mask:I

    .line 56
    .local v1, "mask":I
    iget-object v2, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 57
    .local v2, "index":J
    invoke-virtual {p0, v2, v3, v1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 58
    .local v4, "offset":I
    iget-wide v5, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerLookAhead:J

    cmp-long v7, v2, v5

    if-ltz v7, :cond_1

    .line 59
    iget v5, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 60
    .local v5, "step":I
    int-to-long v6, v5

    add-long/2addr v6, v2

    invoke-virtual {p0, v6, v7, v1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->calcElementOffset(JI)I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 61
    int-to-long v6, v5

    add-long/2addr v6, v2

    iput-wide v6, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->producerLookAhead:J

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, v0, v4}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 64
    const/4 v6, 0x0

    return v6

    .line 67
    .end local v5    # "step":I
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v4, p1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 68
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-direct {p0, v5, v6}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 69
    const/4 v5, 0x1

    return v5

    .line 51
    .end local v0    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "mask":I
    .end local v2    # "index":J
    .end local v4    # "offset":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->calcElementOffset(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->lvElement(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 75
    .local v0, "index":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->calcElementOffset(J)I

    move-result v2

    .line 77
    .local v2, "offset":I
    iget-object v3, p0, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 78
    .local v3, "lElementBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, v3, v2}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 80
    return-object v5

    .line 82
    :cond_0
    invoke-virtual {p0, v3, v2, v5}, Lrx/internal/util/atomic/AtomicReferenceArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 83
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-direct {p0, v5, v6}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 84
    return-object v4
.end method

.method public size()I
    .locals 8

    .line 99
    .local p0, "this":Lrx/internal/util/atomic/SpscAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 101
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 102
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 103
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 104
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 105
    sub-long v6, v4, v0

    long-to-int v7, v6

    return v7

    .line 107
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_0
    goto :goto_0
.end method
