.class public final Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscExactAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TT;>;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final capacitySkip:I

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final mask:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 40
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 41
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 42
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 43
    sub-int v1, v0, p1

    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 152
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .line 137
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 85
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    return-void

    .line 85
    :cond_1
    :goto_1
    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .line 132
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .line 162
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 89
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, v1, :cond_0

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

    .line 112
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 56
    .local v0, "pi":J
    iget v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 58
    .local v2, "m":I
    iget v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    long-to-int v4, v3

    and-int v3, v4, v2

    .line 59
    .local v3, "fullCheck":I
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    const/4 v4, 0x0

    return v4

    .line 62
    :cond_0
    long-to-int v4, v0

    and-int/2addr v4, v2

    .line 63
    .local v4, "offset":I
    iget-object v5, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 64
    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 65
    const/4 v5, 0x1

    return v5

    .line 52
    .end local v0    # "pi":J
    .end local v2    # "m":I
    .end local v3    # "fullCheck":I
    .end local v4    # "offset":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 70
    .local v0, "ci":J
    long-to-int v2, v0

    iget v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int/2addr v2, v3

    .line 71
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 73
    return-object v4

    .line 75
    :cond_0
    iget-object v5, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 76
    invoke-virtual {p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 77
    return-object v3
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .line 142
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .line 147
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 8

    .line 94
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 96
    .local v0, "ci":J
    :goto_0
    iget-object v2, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 97
    .local v2, "pi":J
    iget-object v4, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 98
    .local v4, "ci2":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 99
    sub-long v6, v2, v4

    long-to-int v7, v6

    return v7

    .line 101
    :cond_0
    move-wide v0, v4

    .line 102
    .end local v2    # "pi":J
    .end local v4    # "ci2":J
    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 117
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .line 122
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
