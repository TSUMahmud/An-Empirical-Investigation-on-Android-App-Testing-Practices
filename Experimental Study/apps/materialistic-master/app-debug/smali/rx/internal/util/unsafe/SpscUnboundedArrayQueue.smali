.class public Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;
.super Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;
.source "SpscUnboundedArrayQueue.java"

# interfaces
.implements Lrx/internal/util/unsafe/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField<",
        "TE;>;",
        "Lrx/internal/util/unsafe/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J

.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I

.field private static final P_INDEX_OFFSET:J

.field private static final REF_ARRAY_BASE:J

.field private static final REF_ELEMENT_SHIFT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    .line 61
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 62
    .local v0, "scale":I
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 63
    const/4 v1, 0x2

    sput v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ELEMENT_SHIFT:I

    goto :goto_0

    .line 64
    :cond_0
    const/16 v1, 0x8

    if-ne v1, v0, :cond_1

    .line 65
    const/4 v1, 0x3

    sput v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ELEMENT_SHIFT:I

    .line 70
    :goto_0
    sget-object v1, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ARRAY_BASE:J

    .line 72
    :try_start_0
    const-class v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;

    const-string v2, "producerIndex"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "iField":Ljava/lang/reflect/Field;
    sget-object v2, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->P_INDEX_OFFSET:J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .end local v1    # "iField":Ljava/lang/reflect/Field;
    nop

    .line 80
    :try_start_1
    const-class v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;

    const-string v2, "consumerIndex"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 81
    .restart local v1    # "iField":Ljava/lang/reflect/Field;
    sget-object v2, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->C_INDEX_OFFSET:J
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .end local v1    # "iField":Ljava/lang/reflect/Field;
    nop

    .line 87
    .end local v0    # "scale":I
    return-void

    .line 82
    .restart local v0    # "scale":I
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    .line 84
    .local v2, "ex":Ljava/lang/InternalError;
    invoke-virtual {v2, v1}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v2

    .line 74
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .end local v2    # "ex":Ljava/lang/InternalError;
    :catch_1
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    .line 76
    .restart local v2    # "ex":Ljava/lang/InternalError;
    invoke-virtual {v2, v1}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    throw v2

    .line 67
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .end local v2    # "ex":Ljava/lang/InternalError;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown pointer size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "bufferSize"    # I

    .line 90
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;-><init>()V

    .line 91
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 92
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    .line 93
    .local v1, "mask":J
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 94
    .local v3, "buffer":[Ljava/lang/Object;, "[TE;"
    iput-object v3, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    .line 95
    iput-wide v1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerMask:J

    .line 96
    invoke-direct {p0, v0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->adjustLookAheadStep(I)V

    .line 97
    iput-object v3, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerBuffer:[Ljava/lang/Object;

    .line 98
    iput-wide v1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerMask:J

    .line 99
    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    iput-wide v4, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerLookAhead:J

    .line 100
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soProducerIndex(J)V

    .line 101
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 255
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerLookAheadStep:I

    .line 256
    return-void
.end method

.method private static calcDirectOffset(J)J
    .locals 4
    .param p0, "index"    # J

    .line 278
    sget-wide v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ARRAY_BASE:J

    sget v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->REF_ELEMENT_SHIFT:I

    shl-long v2, p0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static calcWrappedOffset(JJ)J
    .locals 2
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 275
    and-long v0, p0, p2

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcDirectOffset(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .locals 3

    .line 263
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static lvElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 285
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private lvNext([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcDirectOffset(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private lvProducerIndex()J
    .locals 3

    .line 259
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPeek([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 3
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object p1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerBuffer:[Ljava/lang/Object;

    .line 231
    invoke-static {p2, p3, p4, p5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v0

    .line 232
    .local v0, "offsetInNew":J
    invoke-static {p1, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private newBufferPoll([Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 5
    .param p2, "index"    # J
    .param p4, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJ)TE;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "nextBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object p1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerBuffer:[Ljava/lang/Object;

    .line 197
    invoke-static {p2, p3, p4, p5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v0

    .line 198
    .local v0, "offsetInNew":J
    invoke-static {p1, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 199
    .local v2, "n":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 200
    return-object v3

    .line 202
    :cond_0
    invoke-static {p1, v0, v1, v3}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 203
    const-wide/16 v3, 0x1

    add-long/2addr v3, p2

    invoke-direct {p0, v3, v4}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soConsumerIndex(J)V

    .line 204
    return-object v2
.end method

.method private resize([Ljava/lang/Object;JJLjava/lang/Object;J)V
    .locals 6
    .param p2, "currIndex"    # J
    .param p4, "offset"    # J
    .param p7, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJTE;J)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "oldBuffer":[Ljava/lang/Object;, "[TE;"
    .local p6, "e":Ljava/lang/Object;, "TE;"
    array-length v0, p1

    .line 151
    .local v0, "capacity":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 152
    .local v1, "newBuffer":[Ljava/lang/Object;, "[TE;"
    iput-object v1, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    .line 153
    add-long v2, p2, p7

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerLookAhead:J

    .line 154
    invoke-static {v1, p4, p5, p6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soNext([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 156
    sget-object v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, p5, v2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 158
    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soProducerIndex(J)V

    .line 159
    return-void
.end method

.method private soConsumerIndex(J)V
    .locals 6
    .param p1, "v"    # J

    .line 271
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 272
    return-void
.end method

.method private static soElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "buffer"    # [Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "e"    # Ljava/lang/Object;

    .line 281
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 282
    return-void
.end method

.method private soNext([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "curr":[Ljava/lang/Object;, "[TE;"
    .local p2, "next":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcDirectOffset(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 163
    return-void
.end method

.method private soProducerIndex(J)V
    .locals 6
    .param p1, "v"    # J

    .line 267
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 268
    return-void
.end method

.method private writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z
    .locals 2
    .param p3, "index"    # J
    .param p5, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)Z"
        }
    .end annotation

    .line 142
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1, p5, p6, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soProducerIndex(J)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 115
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v9, p0

    if-eqz p1, :cond_3

    .line 119
    iget-object v10, v9, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    .line 120
    .local v10, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v11, v9, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;->producerIndex:J

    .line 121
    .local v11, "index":J
    iget-wide v13, v9, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerMask:J

    .line 122
    .local v13, "mask":J
    invoke-static {v11, v12, v13, v14}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v15

    .line 123
    .local v15, "offset":J
    iget-wide v0, v9, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerLookAhead:J

    cmp-long v2, v11, v0

    if-gez v2, :cond_0

    .line 124
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide v3, v11

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v0

    return v0

    .line 126
    :cond_0
    iget v7, v9, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerLookAheadStep:I

    .line 128
    .local v7, "lookAheadStep":I
    int-to-long v0, v7

    add-long/2addr v0, v11

    invoke-static {v0, v1, v13, v14}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v5

    .line 129
    .local v5, "lookAheadElementOffset":J
    invoke-static {v10, v5, v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1

    .line 130
    int-to-long v3, v7

    add-long/2addr v3, v11

    sub-long/2addr v3, v1

    iput-wide v3, v9, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;->producerLookAhead:J

    .line 131
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide v3, v11

    move-wide/from16 v17, v5

    .end local v5    # "lookAheadElementOffset":J
    .local v17, "lookAheadElementOffset":J
    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v0

    return v0

    .line 132
    .end local v17    # "lookAheadElementOffset":J
    .restart local v5    # "lookAheadElementOffset":J
    :cond_1
    move-wide/from16 v17, v5

    .end local v5    # "lookAheadElementOffset":J
    .restart local v17    # "lookAheadElementOffset":J
    add-long/2addr v1, v11

    invoke-static {v1, v2, v13, v14}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide v3, v11

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)Z

    move-result v0

    return v0

    .line 135
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v11

    move-wide v4, v15

    move-object/from16 v6, p1

    move/from16 v19, v7

    .end local v7    # "lookAheadStep":I
    .local v19, "lookAheadStep":I
    move-wide v7, v13

    invoke-direct/range {v0 .. v8}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->resize([Ljava/lang/Object;JJLjava/lang/Object;J)V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 116
    .end local v10    # "buffer":[Ljava/lang/Object;, "[TE;"
    .end local v11    # "index":J
    .end local v13    # "mask":J
    .end local v15    # "offset":J
    .end local v17    # "lookAheadElementOffset":J
    .end local v19    # "lookAheadStep":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerBuffer:[Ljava/lang/Object;

    .line 217
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v7, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;->consumerIndex:J

    .line 218
    .local v7, "index":J
    iget-wide v9, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerMask:J

    .line 219
    .local v9, "mask":J
    invoke-static {v7, v8, v9, v10}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v11

    .line 220
    .local v11, "offset":J
    invoke-static {v0, v11, v12}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    .line 221
    .local v13, "e":Ljava/lang/Object;
    sget-object v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v13, v1, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvNext([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->newBufferPeek([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 225
    :cond_0
    return-object v13
.end method

.method public final poll()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    iget-object v0, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerBuffer:[Ljava/lang/Object;

    .line 178
    .local v0, "buffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v7, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;->consumerIndex:J

    .line 179
    .local v7, "index":J
    iget-wide v9, p0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;->consumerMask:J

    .line 180
    .local v9, "mask":J
    invoke-static {v7, v8, v9, v10}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->calcWrappedOffset(JJ)J

    move-result-wide v11

    .line 181
    .local v11, "offset":J
    invoke-static {v0, v11, v12}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    .line 182
    .local v13, "e":Ljava/lang/Object;
    sget-object v1, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v13, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v14, v1

    .line 183
    .local v14, "isNextBuffer":Z
    const/4 v1, 0x0

    if-eqz v13, :cond_1

    if-nez v14, :cond_1

    .line 184
    invoke-static {v0, v11, v12, v1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 185
    const-wide/16 v1, 0x1

    add-long/2addr v1, v7

    invoke-direct {p0, v1, v2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->soConsumerIndex(J)V

    .line 186
    return-object v13

    .line 187
    :cond_1
    if-eqz v14, :cond_2

    .line 188
    invoke-direct {p0, v0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvNext([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->newBufferPoll([Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 191
    :cond_2
    return-object v1
.end method

.method public final size()I
    .locals 8

    .line 243
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 245
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 246
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 247
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 248
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 249
    sub-long v6, v4, v0

    long-to-int v7, v6

    return v7

    .line 251
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_0
    goto :goto_0
.end method
