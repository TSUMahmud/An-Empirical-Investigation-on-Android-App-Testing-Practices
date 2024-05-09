.class public final Lrx/internal/util/unsafe/SpmcArrayQueue;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 118
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 217
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->lvProducerIndex()J

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

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_2

    .line 126
    iget-object v0, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    .line 127
    .local v0, "lb":[Ljava/lang/Object;, "[TE;"
    iget-wide v1, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->mask:J

    .line 128
    .local v1, "lMask":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->lvProducerIndex()J

    move-result-wide v3

    .line 129
    .local v3, "currProducerIndex":J
    invoke-virtual {p0, v3, v4}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->calcElementOffset(J)J

    move-result-wide v5

    .line 130
    .local v5, "offset":J
    invoke-virtual {p0, v0, v5, v6}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 131
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v7

    sub-long v7, v3, v7

    .line 133
    .local v7, "size":J
    cmp-long v9, v7, v1

    if-lez v9, :cond_0

    .line 134
    const/4 v9, 0x0

    return v9

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v5, v6}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 141
    .end local v7    # "size":J
    :cond_1
    invoke-virtual {p0, v0, v5, v6, p1}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 144
    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->soTail(J)V

    .line 145
    const/4 v7, 0x1

    return v7

    .line 124
    .end local v0    # "lb":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "lMask":J
    .end local v3    # "currProducerIndex":J
    .end local v5    # "offset":J
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;->lvProducerIndexCache()J

    move-result-wide v0

    .line 180
    .local v0, "currProducerIndexCache":J
    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v2

    .line 181
    .local v2, "currentConsumerIndex":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 182
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->lvProducerIndex()J

    move-result-wide v4

    .line 183
    .local v4, "currProducerIndex":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 184
    const/4 v6, 0x0

    return-object v6

    .line 186
    :cond_0
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;->svProducerIndexCache(J)V

    .line 189
    .end local v4    # "currProducerIndex":J
    :cond_1
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .local v5, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_2

    .line 190
    return-object v5

    .line 189
    :cond_2
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;->lvProducerIndexCache()J

    move-result-wide v0

    .line 153
    .local v0, "currProducerIndexCache":J
    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v2

    .line 154
    .local v2, "currentConsumerIndex":J
    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    .line 155
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->lvProducerIndex()J

    move-result-wide v5

    .line 156
    .local v5, "currProducerIndex":J
    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    .line 157
    return-object v4

    .line 159
    :cond_0
    invoke-virtual {p0, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField;->svProducerIndexCache(J)V

    .line 162
    .end local v5    # "currProducerIndex":J
    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-virtual {p0, v2, v3, v5, v6}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->casHead(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->calcElementOffset(J)J

    move-result-wide v5

    .line 166
    .local v5, "offset":J
    iget-object v7, p0, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    .line 168
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v7, v5, v6}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 170
    .local v8, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v7, v5, v6, v4}, Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 171
    return-object v8

    .line 162
    .end local v5    # "offset":J
    .end local v7    # "lb":[Ljava/lang/Object;, "[TE;"
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_0
.end method

.method public size()I
    .locals 8

    .line 200
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v0

    .line 202
    .local v0, "after":J
    :goto_0
    move-wide v2, v0

    .line 203
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->lvProducerIndex()J

    move-result-wide v4

    .line 204
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v0

    .line 205
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 206
    sub-long v6, v4, v0

    long-to-int v7, v6

    return v7

    .line 208
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_0
    goto :goto_0
.end method
