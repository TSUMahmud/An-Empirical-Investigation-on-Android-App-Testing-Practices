.class public final Lrx/internal/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCap(JJ)J
    .locals 5
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 89
    add-long v0, p0, p2

    .line 90
    .local v0, "u":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    .line 93
    :cond_0
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 59
    .local v0, "current":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    .line 60
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    return-wide v0

    .line 63
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_0
    goto :goto_0
.end method

.method public static produced(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 7
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .line 376
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 377
    .local v0, "current":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 378
    return-wide v2

    .line 380
    :cond_0
    sub-long v2, v0, p1

    .line 381
    .local v2, "next":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 384
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    return-wide v2

    .line 387
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_1
    goto :goto_0

    .line 382
    .restart local v0    # "current":J
    .restart local v2    # "next":J
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced than requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    return-void
.end method

.method public static validate(J)Z
    .locals 3
    .param p0, "n"    # J

    .line 397
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    .line 400
    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
