.class final Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferEmitter"
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

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .locals 1
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;-><init>(Lrx/Subscriber;)V

    .line 290
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    .line 293
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    return-void
.end method


# virtual methods
.method drain()V
    .locals 12

    .line 328
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    .line 333
    .local v0, "missed":I
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    .line 334
    .local v1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    .line 337
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 338
    .local v3, "r":J
    const-wide/16 v5, 0x0

    .line 340
    .local v5, "e":J
    :goto_1
    cmp-long v7, v5, v3

    if-eqz v7, :cond_6

    .line 341
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 342
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 343
    return-void

    .line 346
    :cond_1
    iget-boolean v7, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 348
    .local v7, "d":Z
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 350
    .local v8, "o":Ljava/lang/Object;
    if-nez v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 352
    .local v9, "empty":Z
    :goto_2
    if-eqz v7, :cond_4

    if-eqz v9, :cond_4

    .line 353
    iget-object v10, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->error:Ljava/lang/Throwable;

    .line 354
    .local v10, "ex":Ljava/lang/Throwable;
    if-eqz v10, :cond_3

    .line 355
    invoke-super {p0, v10}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 357
    :cond_3
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 359
    :goto_3
    return-void

    .line 362
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_4
    if-eqz v9, :cond_5

    .line 363
    goto :goto_4

    .line 366
    :cond_5
    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 368
    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    .line 369
    .end local v7    # "d":Z
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "empty":Z
    goto :goto_1

    .line 371
    :cond_6
    :goto_4
    cmp-long v7, v5, v3

    if-nez v7, :cond_9

    .line 372
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 373
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 374
    return-void

    .line 377
    :cond_7
    iget-boolean v7, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 379
    .restart local v7    # "d":Z
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    .line 381
    .local v8, "empty":Z
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 382
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->error:Ljava/lang/Throwable;

    .line 383
    .local v9, "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_8

    .line 384
    invoke-super {p0, v9}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 386
    :cond_8
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 388
    :goto_5
    return-void

    .line 392
    .end local v7    # "d":Z
    .end local v8    # "empty":Z
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_9
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_a

    .line 393
    invoke-static {p0, v5, v6}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 396
    :cond_a
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 397
    if-nez v0, :cond_b

    .line 398
    nop

    .line 401
    .end local v3    # "r":J
    .end local v5    # "e":J
    return-void

    .line 400
    :cond_b
    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .line 311
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 312
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 313
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 304
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->error:Ljava/lang/Throwable;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 306
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 307
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 298
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 300
    return-void
.end method

.method onRequested()V
    .locals 0

    .line 317
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 318
    return-void
.end method

.method onUnsubscribed()V
    .locals 1

    .line 322
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 325
    :cond_0
    return-void
.end method
