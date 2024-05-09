.class public final Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;
.super Ljava/lang/Object;
.source "SpscUnboundedAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field consumerMask:I

.field producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J

.field producerLookAheadStep:I

.field producerMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "bufferSize"    # I

    .line 45
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 47
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    .line 48
    .local v1, "mask":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 51
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 52
    iput v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:I

    .line 53
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->adjustLookAheadStep(I)V

    .line 54
    iput-object v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 55
    iput v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 56
    add-int/lit8 v3, v1, -0x1

    int-to-long v3, v3

    iput-wide v3, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 57
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 58
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 216
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAheadStep:I

    .line 217
    return-void
.end method

.method private static calcDirectOffset(I)I
    .locals 0
    .param p0, "index"    # I

    .line 247
    return p0
.end method

.method private static calcWrappedOffset(JI)I
    .locals 1
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .line 244
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    return v0
.end method

.method private lpConsumerIndex()J
    .locals 2

    .line 232
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lpProducerIndex()J
    .locals 2

    .line 228
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .locals 2

    .line 224
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 254
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private lvProducerIndex()J
    .locals 2

    .line 220
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 2
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 187
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 188
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 5
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 148
    invoke-static {p2, p3, p4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 149
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "n":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 151
    return-object v2

    .line 153
    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v3, p2

    invoke-direct {p0, v3, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 154
    invoke-static {p1, v0, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 155
    return-object v1
.end method

.method private resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .locals 6
    .param p2, "currIndex"    # J
    .param p4, "offset"    # I
    .param p6, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p5, "e":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 102
    .local v0, "capacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 103
    .local v1, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v1, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 104
    add-long v2, p2, p6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 105
    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 106
    invoke-static {v1, p4, p5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 107
    invoke-direct {p0, p1, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 108
    sget-object v2, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method private soConsumerIndex(J)V
    .locals 1
    .param p1, "v"    # J

    .line 240
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 241
    return-void
.end method

.method private static soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 250
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method private soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    invoke-static {p1, v0, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method private soProducerIndex(J)V
    .locals 1
    .param p1, "v"    # J

    .line 236
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 237
    return-void
.end method

.method private writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 2
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 95
    invoke-static {p1, p5, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 304
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 289
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 181
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    return-void

    .line 181
    :cond_1
    :goto_1
    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 264
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 284
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 212
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

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

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 67
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    if-eqz p1, :cond_3

    .line 71
    iget-object v9, v8, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 72
    .local v9, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpProducerIndex()J

    move-result-wide v10

    .line 73
    .local v10, "index":J
    iget v12, v8, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:I

    .line 74
    .local v12, "mask":I
    invoke-static {v10, v11, v12}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v13

    .line 75
    .local v13, "offset":I
    iget-wide v0, v8, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    cmp-long v2, v10, v0

    if-gez v2, :cond_0

    .line 76
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 78
    :cond_0
    iget v14, v8, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAheadStep:I

    .line 80
    .local v14, "lookAheadStep":I
    int-to-long v0, v14

    add-long/2addr v0, v10

    invoke-static {v0, v1, v12}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v15

    .line 81
    .local v15, "lookAheadElementOffset":I
    invoke-static {v9, v15}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1

    .line 82
    int-to-long v3, v14

    add-long/2addr v3, v10

    sub-long/2addr v3, v1

    iput-wide v3, v8, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 83
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 84
    :cond_1
    add-long/2addr v1, v10

    invoke-static {v1, v2, v12}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    invoke-static {v9, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 87
    :cond_2
    int-to-long v6, v12

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide v2, v10

    move v4, v13

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v7}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 88
    const/4 v0, 0x1

    return v0

    .line 68
    .end local v9    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .end local v10    # "index":J
    .end local v12    # "mask":I
    .end local v13    # "offset":I
    .end local v14    # "lookAheadStep":I
    .end local v15    # "lookAheadElementOffset":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 168
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 169
    .local v1, "index":J
    iget v3, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 170
    .local v3, "mask":I
    invoke-static {v1, v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 171
    .local v4, "offset":I
    invoke-static {v0, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 172
    .local v5, "e":Ljava/lang/Object;
    sget-object v6, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-direct {p0, v6, v1, v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 176
    :cond_0
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 129
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 130
    .local v1, "index":J
    iget v3, p0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 131
    .local v3, "mask":I
    invoke-static {v1, v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 132
    .local v4, "offset":I
    invoke-static {v0, v4}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 133
    .local v5, "e":Ljava/lang/Object;
    sget-object v6, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 134
    .local v6, "isNextBuffer":Z
    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 135
    const-wide/16 v8, 0x1

    add-long/2addr v8, v1

    invoke-direct {p0, v8, v9}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 136
    invoke-static {v0, v4, v7}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 137
    return-object v5

    .line 138
    :cond_1
    if-eqz v6, :cond_2

    .line 139
    invoke-direct {p0, v0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 142
    :cond_2
    return-object v7
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 279
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 294
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 299
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 8

    .line 199
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 201
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 202
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 203
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 204
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 205
    sub-long v6, v4, v0

    long-to-int v7, v6

    return v7

    .line 207
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_0
    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 269
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
