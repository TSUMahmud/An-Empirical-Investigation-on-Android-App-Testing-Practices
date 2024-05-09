.class final Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 417
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;-><init>(Lrx/Subscriber;)V

    .line 418
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 420
    return-void
.end method


# virtual methods
.method drain()V
    .locals 13

    .line 454
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x1

    .line 459
    .local v0, "missed":I
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    .line 460
    .local v1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 463
    .local v2, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 464
    .local v3, "r":J
    const-wide/16 v5, 0x0

    .line 466
    .local v5, "e":J
    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v5, v3

    if-eqz v10, :cond_6

    .line 467
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 468
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 469
    return-void

    .line 472
    :cond_1
    iget-boolean v10, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 474
    .local v10, "d":Z
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 476
    .local v11, "o":Ljava/lang/Object;
    if-nez v11, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 478
    .local v12, "empty":Z
    :goto_2
    if-eqz v10, :cond_4

    if-eqz v12, :cond_4

    .line 479
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 480
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_3

    .line 481
    invoke-super {p0, v7}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 483
    :cond_3
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 485
    :goto_3
    return-void

    .line 488
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    if-eqz v12, :cond_5

    .line 489
    goto :goto_4

    .line 492
    :cond_5
    invoke-static {v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 494
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 495
    .end local v10    # "d":Z
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "empty":Z
    goto :goto_1

    .line 497
    :cond_6
    :goto_4
    cmp-long v10, v5, v3

    if-nez v10, :cond_a

    .line 498
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 499
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 500
    return-void

    .line 503
    :cond_7
    iget-boolean v9, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 505
    .local v9, "d":Z
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    .line 507
    .local v7, "empty":Z
    :goto_5
    if-eqz v9, :cond_a

    if-eqz v7, :cond_a

    .line 508
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 509
    .local v8, "ex":Ljava/lang/Throwable;
    if-eqz v8, :cond_9

    .line 510
    invoke-super {p0, v8}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 512
    :cond_9
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 514
    :goto_6
    return-void

    .line 518
    .end local v7    # "empty":Z
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v9    # "d":Z
    :cond_a
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_b

    .line 519
    invoke-static {p0, v5, v6}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 522
    :cond_b
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 523
    if-nez v0, :cond_c

    .line 524
    nop

    .line 527
    .end local v3    # "r":J
    .end local v5    # "e":J
    return-void

    .line 526
    :cond_c
    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .line 437
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 438
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 439
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 430
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 432
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 433
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 424
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 426
    return-void
.end method

.method onRequested()V
    .locals 0

    .line 443
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 444
    return-void
.end method

.method onUnsubscribed()V
    .locals 2

    .line 448
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 451
    :cond_0
    return-void
.end method
