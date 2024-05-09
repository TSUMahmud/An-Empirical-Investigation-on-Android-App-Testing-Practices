.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field volatile done:Z

.field emitting:Z

.field volatile errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final innerGuard:Ljava/lang/Object;

.field volatile innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "*>;"
        }
    .end annotation
.end field

.field lastId:J

.field lastIndex:I

.field final maxConcurrent:I

.field missed:Z

.field producer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field scalarEmissionCount:I

.field final scalarEmissionLimit:I

.field volatile subscriptions:Lrx/subscriptions/CompositeSubscription;

.field uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;ZI)V
    .locals 2
    .param p2, "delayErrors"    # Z
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 189
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 190
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 191
    iput p3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    .line 193
    sget-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 194
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    .line 195
    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    .line 196
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/Subscriber;->request(J)V

    goto :goto_0

    .line 198
    :cond_0
    shr-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    .line 199
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/Subscriber;->request(J)V

    .line 201
    :goto_0
    return-void
.end method

.method private reportError()V
    .locals 3

    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 270
    :goto_0
    return-void
.end method


# virtual methods
.method addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 286
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 288
    .local v1, "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v2, v1

    .line 289
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 290
    .local v3, "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    aput-object p1, v3, v2

    .line 292
    iput-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 293
    .end local v1    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v2    # "n":I
    .end local v3    # "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkTerminate()Z
    .locals 3

    .line 812
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 813
    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 816
    .local v0, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V

    .line 821
    nop

    .line 822
    return v1

    .line 820
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V

    throw v1

    .line 824
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method emit()V
    .locals 2

    .line 561
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    monitor-enter p0

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 563
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 564
    monitor-exit p0

    return-void

    .line 566
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    .line 569
    return-void

    .line 567
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitEmpty()V
    .locals 3

    .line 254
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    add-int/lit8 v0, v0, 0x1

    .line 255
    .local v0, "produced":I
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 257
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    goto :goto_0

    .line 259
    :cond_0
    iput v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 261
    :goto_0
    return-void
.end method

.method emitLoop()V
    .locals 30

    .line 574
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 576
    .local v2, "skipFinal":Z
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    move-object v4, v0

    .line 579
    .local v4, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    if-eqz v0, :cond_1

    .line 580
    const/4 v2, 0x1

    .line 798
    if-nez v2, :cond_0

    .line 799
    monitor-enter p0

    .line 800
    :try_start_1
    iput-boolean v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_1
    return-void

    .line 583
    :cond_1
    :try_start_2
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object v5, v0

    .line 585
    .local v5, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    .line 586
    .local v6, "r":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v8, v0

    .line 589
    .local v8, "unbounded":Z
    const/4 v0, 0x0

    .line 592
    .local v0, "replenishMain":I
    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_c

    .line 594
    :goto_3
    const/4 v13, 0x0

    .line 595
    .local v13, "scalarEmission":I
    const/4 v14, 0x0

    move v15, v0

    .line 596
    .end local v0    # "replenishMain":I
    .local v14, "o":Ljava/lang/Object;
    .local v15, "replenishMain":I
    :goto_4
    cmp-long v0, v6, v11

    if-lez v0, :cond_8

    .line 597
    :try_start_3
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    .line 599
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_4

    .line 600
    const/4 v2, 0x1

    .line 798
    if-nez v2, :cond_3

    .line 799
    monitor-enter p0

    .line 800
    :try_start_4
    iput-boolean v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_3
    :goto_5
    return-void

    .line 603
    :cond_4
    if-nez v14, :cond_5

    .line 604
    goto :goto_8

    .line 606
    :cond_5
    :try_start_5
    invoke-static {v14}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v16, v0

    .line 609
    .local v16, "v":Ljava/lang/Object;, "TT;"
    move-object/from16 v11, v16

    .end local v16    # "v":Ljava/lang/Object;, "TT;"
    .local v11, "v":Ljava/lang/Object;, "TT;"
    :try_start_6
    invoke-interface {v4, v11}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 619
    goto :goto_7

    .line 610
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 611
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_7
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v0, :cond_7

    .line 612
    invoke-static {v12}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 613
    const/4 v2, 0x1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lrx/Subscriber;->unsubscribe()V

    .line 615
    invoke-interface {v4, v12}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 798
    if-nez v2, :cond_6

    .line 799
    monitor-enter p0

    .line 800
    :try_start_8
    iput-boolean v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_6
    :goto_6
    return-void

    .line 618
    :cond_7
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 620
    .end local v12    # "t":Ljava/lang/Throwable;
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 621
    add-int/lit8 v13, v13, 0x1

    .line 622
    sub-long/2addr v6, v9

    .line 623
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    const-wide/16 v11, 0x0

    goto :goto_4

    .line 798
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "r":J
    .end local v8    # "unbounded":Z
    .end local v13    # "scalarEmission":I
    .end local v14    # "o":Ljava/lang/Object;
    .end local v15    # "replenishMain":I
    :catchall_3
    move-exception v0

    move/from16 v21, v2

    goto/16 :goto_24

    .line 624
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    .restart local v8    # "unbounded":Z
    .restart local v13    # "scalarEmission":I
    .restart local v14    # "o":Ljava/lang/Object;
    .restart local v15    # "replenishMain":I
    :cond_8
    :goto_8
    if-lez v13, :cond_a

    .line 625
    if-eqz v8, :cond_9

    .line 626
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_9

    .line 628
    :cond_9
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0, v13}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-wide v6, v11

    .line 631
    :cond_a
    :goto_9
    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-eqz v0, :cond_d

    if-nez v14, :cond_b

    .line 632
    goto :goto_a

    .line 634
    .end local v13    # "scalarEmission":I
    .end local v14    # "o":Ljava/lang/Object;
    :cond_b
    move v0, v15

    const-wide/16 v11, 0x0

    goto :goto_3

    .line 592
    .end local v15    # "replenishMain":I
    .restart local v0    # "replenishMain":I
    :cond_c
    move v15, v0

    .line 643
    .end local v0    # "replenishMain":I
    .restart local v15    # "replenishMain":I
    :cond_d
    :goto_a
    :try_start_a
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    move v11, v0

    .line 646
    .local v11, "d":Z
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object v5, v0

    .line 648
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    move-object v12, v0

    .line 649
    .local v12, "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v0, v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    move v13, v0

    .line 653
    .local v13, "n":I
    if-eqz v11, :cond_12

    if-eqz v5, :cond_e

    :try_start_b
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    if-nez v13, :cond_12

    .line 654
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v9, v0

    .line 655
    .local v9, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v9, :cond_10

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_b

    .line 658
    :cond_f
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V

    goto :goto_c

    .line 656
    :cond_10
    :goto_b
    invoke-interface {v4}, Lrx/Observer;->onCompleted()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 660
    :goto_c
    const/4 v2, 0x1

    .line 798
    if-nez v2, :cond_11

    .line 799
    monitor-enter p0

    .line 800
    :try_start_c
    iput-boolean v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_d

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_11
    :goto_d
    return-void

    .line 664
    .end local v9    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_12
    const/4 v0, 0x0

    .line 665
    .local v0, "innerCompleted":Z
    if-lez v13, :cond_2d

    .line 667
    :try_start_d
    iget-wide v9, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 668
    .local v9, "startId":J
    iget v14, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 672
    .local v14, "index":I
    if-le v13, v14, :cond_14

    aget-object v3, v12, v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_f

    move/from16 v21, v2

    .end local v2    # "skipFinal":Z
    .local v21, "skipFinal":Z
    :try_start_e
    iget-wide v2, v3, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    cmp-long v22, v2, v9

    if-eqz v22, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v22, v0

    move-wide/from16 v23, v6

    move-object v7, v5

    goto :goto_11

    .end local v21    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :cond_14
    move/from16 v21, v2

    .line 673
    .end local v2    # "skipFinal":Z
    .restart local v21    # "skipFinal":Z
    :goto_e
    if-gt v13, v14, :cond_15

    .line 674
    const/4 v14, 0x0

    .line 677
    :cond_15
    move v2, v14

    .line 678
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v13, :cond_18

    .line 679
    move/from16 v22, v0

    .end local v0    # "innerCompleted":Z
    .local v22, "innerCompleted":Z
    aget-object v0, v12, v2

    move-wide/from16 v23, v6

    move-object v7, v5

    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "r":J
    .local v7, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .local v23, "r":J
    iget-wide v5, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    cmp-long v0, v5, v9

    if-nez v0, :cond_16

    .line 680
    goto :goto_10

    .line 683
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 684
    if-ne v2, v13, :cond_17

    .line 685
    const/4 v0, 0x0

    move v2, v0

    .line 678
    :cond_17
    add-int/lit8 v3, v3, 0x1

    move-object v5, v7

    move/from16 v0, v22

    move-wide/from16 v6, v23

    goto :goto_f

    .end local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v22    # "innerCompleted":Z
    .end local v23    # "r":J
    .restart local v0    # "innerCompleted":Z
    .restart local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    :cond_18
    move/from16 v22, v0

    move-wide/from16 v23, v6

    move-object v7, v5

    .line 690
    .end local v0    # "innerCompleted":Z
    .end local v3    # "i":I
    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "r":J
    .restart local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v22    # "innerCompleted":Z
    .restart local v23    # "r":J
    :goto_10
    move v14, v2

    .line 691
    iput v2, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 692
    aget-object v0, v12, v2

    iget-wide v5, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    iput-wide v5, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 695
    .end local v2    # "j":I
    :goto_11
    move v0, v14

    .line 697
    .local v0, "j":I
    const/4 v2, 0x0

    move v3, v0

    .end local v0    # "j":I
    .local v2, "i":I
    .local v3, "j":I
    :goto_12
    if-ge v2, v13, :cond_2c

    .line 699
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-eqz v0, :cond_1a

    .line 700
    const/4 v5, 0x1

    .line 798
    .end local v21    # "skipFinal":Z
    .local v5, "skipFinal":Z
    if-nez v5, :cond_19

    .line 799
    monitor-enter p0

    .line 800
    const/4 v6, 0x0

    :try_start_f
    iput-boolean v6, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_13

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    :cond_19
    :goto_13
    return-void

    .line 704
    .end local v5    # "skipFinal":Z
    .restart local v21    # "skipFinal":Z
    :cond_1a
    :try_start_10
    aget-object v0, v12, v3

    move-object v5, v0

    .line 706
    .local v5, "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 708
    .local v0, "o":Ljava/lang/Object;
    :goto_14
    const/4 v6, 0x0

    move-object/from16 v25, v0

    .line 709
    .end local v0    # "o":Ljava/lang/Object;
    .local v6, "produced":I
    .local v25, "o":Ljava/lang/Object;
    :goto_15
    const-wide/16 v17, 0x0

    cmp-long v0, v23, v17

    if-lez v0, :cond_20

    .line 711
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v0, :cond_1c

    .line 712
    const/16 v17, 0x1

    .line 798
    .end local v21    # "skipFinal":Z
    .local v17, "skipFinal":Z
    if-nez v17, :cond_1b

    .line 799
    monitor-enter p0

    .line 800
    move-object/from16 v26, v7

    const/4 v7, 0x0

    .end local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .local v26, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :try_start_11
    iput-boolean v7, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_16

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    .line 798
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_1b
    move-object/from16 v26, v7

    .line 801
    .end local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_16
    return-void

    .line 715
    .end local v17    # "skipFinal":Z
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v21    # "skipFinal":Z
    :cond_1c
    move-object/from16 v26, v7

    .end local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :try_start_12
    iget-object v0, v5, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    move-object v7, v0

    .line 716
    .local v7, "q":Lrx/internal/util/RxRingBuffer;
    if-nez v7, :cond_1d

    .line 717
    move-object/from16 v29, v4

    const-wide/16 v19, 0x1

    goto :goto_18

    .line 719
    :cond_1d
    invoke-virtual {v7}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    .line 720
    if-nez v25, :cond_1e

    .line 721
    move-object/from16 v29, v4

    const-wide/16 v19, 0x1

    goto :goto_18

    .line 723
    :cond_1e
    invoke-static/range {v25 .. v25}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object/from16 v27, v0

    .line 726
    .local v27, "v":Ljava/lang/Object;, "TT;"
    move-object/from16 v28, v7

    move-object/from16 v7, v27

    .end local v27    # "v":Ljava/lang/Object;, "TT;"
    .local v7, "v":Ljava/lang/Object;, "TT;"
    .local v28, "q":Lrx/internal/util/RxRingBuffer;
    :try_start_13
    invoke-interface {v4, v7}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 736
    nop

    .line 737
    const-wide/16 v19, 0x1

    sub-long v23, v23, v19

    .line 738
    nop

    .end local v7    # "v":Ljava/lang/Object;, "TT;"
    .end local v28    # "q":Lrx/internal/util/RxRingBuffer;
    add-int/lit8 v6, v6, 0x1

    .line 739
    move-object/from16 v7, v26

    goto :goto_15

    .line 727
    .restart local v7    # "v":Ljava/lang/Object;, "TT;"
    .restart local v28    # "q":Lrx/internal/util/RxRingBuffer;
    :catch_1
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v18, v17

    .line 728
    .local v18, "t":Ljava/lang/Throwable;
    const/16 v17, 0x1

    .line 729
    .end local v21    # "skipFinal":Z
    .restart local v17    # "skipFinal":Z
    :try_start_14
    invoke-static/range {v18 .. v18}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 731
    move-object/from16 v27, v7

    move-object/from16 v7, v18

    .end local v18    # "t":Ljava/lang/Throwable;
    .local v7, "t":Ljava/lang/Throwable;
    .restart local v27    # "v":Ljava/lang/Object;, "TT;"
    :try_start_15
    invoke-interface {v4, v7}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 733
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lrx/Subscriber;->unsubscribe()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 734
    nop

    .line 798
    if-nez v17, :cond_1f

    .line 799
    monitor-enter p0

    .line 800
    move-object/from16 v29, v4

    const/4 v4, 0x0

    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v29, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_17
    iput-boolean v4, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_17

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    throw v0

    .line 798
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_1f
    move-object/from16 v29, v4

    .line 801
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_17
    return-void

    .line 733
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catchall_8
    move-exception v0

    move-object/from16 v29, v4

    move-object v4, v0

    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lrx/Subscriber;->unsubscribe()V

    .end local v17    # "skipFinal":Z
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 798
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v6    # "produced":I
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "unbounded":Z
    .end local v9    # "startId":J
    .end local v11    # "d":Z
    .end local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v13    # "n":I
    .end local v14    # "index":I
    .end local v15    # "replenishMain":I
    .end local v22    # "innerCompleted":Z
    .end local v23    # "r":J
    .end local v25    # "o":Ljava/lang/Object;
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "v":Ljava/lang/Object;, "TT;"
    .end local v28    # "q":Lrx/internal/util/RxRingBuffer;
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v17    # "skipFinal":Z
    :catchall_9
    move-exception v0

    move/from16 v21, v17

    goto/16 :goto_24

    .line 709
    .end local v17    # "skipFinal":Z
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v5    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .restart local v6    # "produced":I
    .local v7, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v8    # "unbounded":Z
    .restart local v9    # "startId":J
    .restart local v11    # "d":Z
    .restart local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v13    # "n":I
    .restart local v14    # "index":I
    .restart local v15    # "replenishMain":I
    .restart local v21    # "skipFinal":Z
    .restart local v22    # "innerCompleted":Z
    .restart local v23    # "r":J
    .restart local v25    # "o":Ljava/lang/Object;
    :cond_20
    move-object/from16 v29, v4

    move-object/from16 v26, v7

    const-wide/16 v19, 0x1

    .line 740
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_18
    if-lez v6, :cond_22

    .line 741
    if-nez v8, :cond_21

    .line 742
    :try_start_19
    iget-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0, v6}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v27

    move-wide/from16 v23, v27

    goto :goto_19

    .line 744
    :cond_21
    const-wide v23, 0x7fffffffffffffffL

    .line 746
    :goto_19
    move v4, v8

    .end local v8    # "unbounded":Z
    .local v4, "unbounded":Z
    int-to-long v7, v6

    invoke-virtual {v5, v7, v8}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    goto :goto_1a

    .line 740
    .end local v4    # "unbounded":Z
    .restart local v8    # "unbounded":Z
    :cond_22
    move v4, v8

    .line 749
    .end local v8    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    :goto_1a
    const-wide/16 v7, 0x0

    cmp-long v0, v23, v7

    if-eqz v0, :cond_24

    if-nez v25, :cond_23

    .line 750
    goto :goto_1b

    .line 752
    .end local v6    # "produced":I
    :cond_23
    move v8, v4

    move-object/from16 v0, v25

    move-object/from16 v7, v26

    move-object/from16 v4, v29

    goto/16 :goto_14

    .line 753
    :cond_24
    :goto_1b
    iget-boolean v0, v5, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    move v6, v0

    .line 754
    .local v6, "innerDone":Z
    iget-object v0, v5, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    move-object v7, v0

    .line 755
    .local v7, "innerQueue":Lrx/internal/util/RxRingBuffer;
    if-eqz v6, :cond_29

    if-eqz v7, :cond_26

    invoke-virtual {v7}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_1c

    :cond_25
    move/from16 v27, v4

    goto :goto_1e

    .line 756
    :cond_26
    :goto_1c
    invoke-virtual {v1, v5}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v0, :cond_28

    .line 758
    const/4 v8, 0x1

    .line 798
    .end local v21    # "skipFinal":Z
    .local v8, "skipFinal":Z
    if-nez v8, :cond_27

    .line 799
    monitor-enter p0

    .line 800
    move/from16 v27, v4

    const/4 v4, 0x0

    .end local v4    # "unbounded":Z
    .local v27, "unbounded":Z
    :try_start_1a
    iput-boolean v4, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_1d

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    throw v0

    .line 798
    .end local v27    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    :cond_27
    move/from16 v27, v4

    .line 801
    .end local v4    # "unbounded":Z
    .restart local v27    # "unbounded":Z
    :goto_1d
    return-void

    .line 761
    .end local v8    # "skipFinal":Z
    .end local v27    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    .restart local v21    # "skipFinal":Z
    :cond_28
    move/from16 v27, v4

    .end local v4    # "unbounded":Z
    .restart local v27    # "unbounded":Z
    add-int/lit8 v15, v15, 0x1

    .line 762
    const/4 v0, 0x1

    move/from16 v22, v0

    goto :goto_1e

    .line 755
    .end local v27    # "unbounded":Z
    .restart local v4    # "unbounded":Z
    :cond_29
    move/from16 v27, v4

    .line 765
    .end local v4    # "unbounded":Z
    .restart local v27    # "unbounded":Z
    :goto_1e
    const-wide/16 v17, 0x0

    cmp-long v0, v23, v17

    if-nez v0, :cond_2a

    .line 766
    move/from16 v0, v22

    move-wide/from16 v6, v23

    goto :goto_1f

    .line 770
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    .line 771
    if-ne v3, v13, :cond_2b

    .line 772
    const/4 v0, 0x0

    move v3, v0

    .line 697
    .end local v5    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v6    # "innerDone":Z
    .end local v7    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .end local v25    # "o":Ljava/lang/Object;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v4, v29

    goto/16 :goto_12

    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "unbounded":Z
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v4, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v7, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .local v8, "unbounded":Z
    :cond_2c
    move-object/from16 v29, v4

    move-object/from16 v26, v7

    move/from16 v27, v8

    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v7    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v8    # "unbounded":Z
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "unbounded":Z
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move/from16 v0, v22

    move-wide/from16 v6, v23

    .line 776
    .end local v2    # "i":I
    .end local v22    # "innerCompleted":Z
    .end local v23    # "r":J
    .local v0, "innerCompleted":Z
    .local v6, "r":J
    :goto_1f
    :try_start_1b
    iput v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 777
    aget-object v2, v12, v3

    iget-wide v4, v2, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    iput-wide v4, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    move/from16 v22, v0

    goto :goto_20

    .line 665
    .end local v3    # "j":I
    .end local v9    # "startId":J
    .end local v14    # "index":I
    .end local v21    # "skipFinal":Z
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "unbounded":Z
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v2, "skipFinal":Z
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v5, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v8    # "unbounded":Z
    :cond_2d
    move/from16 v22, v0

    move/from16 v21, v2

    move-object/from16 v29, v4

    move-object/from16 v26, v5

    move-wide/from16 v23, v6

    move/from16 v27, v8

    .line 780
    .end local v0    # "innerCompleted":Z
    .end local v2    # "skipFinal":Z
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v5    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v8    # "unbounded":Z
    .restart local v21    # "skipFinal":Z
    .restart local v22    # "innerCompleted":Z
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "unbounded":Z
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_20
    if-lez v15, :cond_2e

    .line 781
    int-to-long v2, v15

    invoke-virtual {v1, v2, v3}, Lrx/Subscriber;->request(J)V

    goto :goto_21

    .line 798
    .end local v6    # "r":J
    .end local v11    # "d":Z
    .end local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v13    # "n":I
    .end local v15    # "replenishMain":I
    .end local v22    # "innerCompleted":Z
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "unbounded":Z
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catchall_b
    move-exception v0

    goto :goto_24

    .line 784
    .restart local v6    # "r":J
    .restart local v11    # "d":Z
    .restart local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v13    # "n":I
    .restart local v15    # "replenishMain":I
    .restart local v22    # "innerCompleted":Z
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "unbounded":Z
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_2e
    :goto_21
    if-eqz v22, :cond_2f

    .line 785
    move/from16 v2, v21

    move-object/from16 v4, v29

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 788
    :cond_2f
    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 789
    :try_start_1c
    iget-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    if-nez v0, :cond_31

    .line 790
    const/4 v2, 0x1

    .line 791
    .end local v21    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    const/4 v3, 0x0

    :try_start_1d
    iput-boolean v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 792
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 798
    .end local v6    # "r":J
    .end local v11    # "d":Z
    .end local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v13    # "n":I
    .end local v15    # "replenishMain":I
    .end local v22    # "innerCompleted":Z
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "unbounded":Z
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-nez v2, :cond_30

    .line 799
    monitor-enter p0

    .line 800
    const/4 v3, 0x0

    :try_start_1e
    iput-boolean v3, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_22

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    throw v0

    .line 804
    :cond_30
    :goto_22
    return-void

    .line 794
    .end local v2    # "skipFinal":Z
    .restart local v6    # "r":J
    .restart local v11    # "d":Z
    .restart local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v13    # "n":I
    .restart local v15    # "replenishMain":I
    .restart local v21    # "skipFinal":Z
    .restart local v22    # "innerCompleted":Z
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "unbounded":Z
    .restart local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_31
    const/4 v2, 0x0

    :try_start_1f
    iput-boolean v2, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 795
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    .line 796
    .end local v6    # "r":J
    .end local v11    # "d":Z
    .end local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v13    # "n":I
    .end local v15    # "replenishMain":I
    .end local v22    # "innerCompleted":Z
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "unbounded":Z
    move/from16 v2, v21

    move-object/from16 v4, v29

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 795
    .restart local v6    # "r":J
    .restart local v11    # "d":Z
    .restart local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v13    # "n":I
    .restart local v15    # "replenishMain":I
    .restart local v22    # "innerCompleted":Z
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v27    # "unbounded":Z
    :catchall_d
    move-exception v0

    move/from16 v2, v21

    .end local v21    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :goto_23
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .end local v2    # "skipFinal":Z
    :try_start_21
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .restart local v2    # "skipFinal":Z
    :catchall_e
    move-exception v0

    goto :goto_23

    .line 798
    .end local v6    # "r":J
    .end local v11    # "d":Z
    .end local v12    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v13    # "n":I
    .end local v15    # "replenishMain":I
    .end local v22    # "innerCompleted":Z
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "unbounded":Z
    .end local v29    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catchall_f
    move-exception v0

    move/from16 v21, v2

    .end local v2    # "skipFinal":Z
    .restart local v21    # "skipFinal":Z
    :goto_24
    if-nez v21, :cond_32

    .line 799
    monitor-enter p0

    .line 800
    const/4 v2, 0x0

    :try_start_22
    iput-boolean v2, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 801
    monitor-exit p0

    goto :goto_25

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    throw v0

    :cond_32
    :goto_25
    throw v0

    return-void
.end method

.method protected emitScalar(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 508
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 511
    .local v0, "skipFinal":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-interface {v2, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    goto :goto_1

    .line 544
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v3, :cond_1

    .line 514
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 515
    const/4 v0, 0x1

    .line 516
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V

    .line 517
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    if-nez v0, :cond_0

    .line 545
    monitor-enter p0

    .line 546
    :try_start_2
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 547
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 522
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x1

    cmp-long v5, p2, v2

    if-eqz v5, :cond_2

    .line 523
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v2, v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 526
    :cond_2
    iget v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    add-int/2addr v2, v4

    .line 527
    .local v2, "produced":I
    iget v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionLimit:I

    if-ne v2, v3, :cond_3

    .line 528
    iput v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 529
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    goto :goto_2

    .line 531
    :cond_3
    iput v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->scalarEmissionCount:I

    .line 535
    :goto_2
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    const/4 v3, 0x1

    .line 537
    .end local v0    # "skipFinal":Z
    .local v3, "skipFinal":Z
    :try_start_4
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v0, :cond_5

    .line 538
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 539
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 544
    if-nez v3, :cond_4

    .line 545
    monitor-enter p0

    .line 546
    :try_start_5
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 547
    monitor-exit p0

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_4
    :goto_3
    return-void

    .line 541
    :cond_5
    :try_start_6
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 542
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 544
    .end local v2    # "produced":I
    if-nez v3, :cond_6

    .line 545
    monitor-enter p0

    .line 546
    :try_start_7
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 547
    monitor-exit p0

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 557
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    .line 558
    return-void

    .line 542
    .restart local v2    # "produced":I
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v3    # "skipFinal":Z
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    .end local p2    # "r":J
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 544
    .end local v2    # "produced":I
    .restart local v3    # "skipFinal":Z
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    .restart local p2    # "r":J
    :catchall_5
    move-exception v2

    move v0, v3

    .end local v3    # "skipFinal":Z
    .restart local v0    # "skipFinal":Z
    :goto_5
    if-nez v0, :cond_7

    .line 545
    monitor-enter p0

    .line 546
    :try_start_a
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 547
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v1

    :cond_7
    :goto_6
    throw v2
.end method

.method protected emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V
    .locals 6
    .param p3, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;J)V"
        }
    .end annotation

    .line 392
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 395
    .local v0, "skipFinal":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-interface {v2, p2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    goto :goto_1

    .line 420
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 396
    :catch_0
    move-exception v2

    .line 397
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v3, :cond_1

    .line 398
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 399
    const/4 v0, 0x1

    .line 400
    invoke-virtual {p1}, Lrx/Subscriber;->unsubscribe()V

    .line 401
    invoke-virtual {p1, v2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    if-nez v0, :cond_0

    .line 421
    monitor-enter p0

    .line 422
    :try_start_2
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 423
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 406
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p3, v2

    if-eqz v4, :cond_2

    .line 407
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 409
    :cond_2
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 411
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    const/4 v2, 0x1

    .line 413
    .end local v0    # "skipFinal":Z
    .local v2, "skipFinal":Z
    :try_start_4
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v0, :cond_4

    .line 414
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 415
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 420
    if-nez v2, :cond_3

    .line 421
    monitor-enter p0

    .line 422
    :try_start_5
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 423
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_3
    :goto_2
    return-void

    .line 417
    :cond_4
    :try_start_6
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 418
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 420
    if-nez v2, :cond_5

    .line 421
    monitor-enter p0

    .line 422
    :try_start_7
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 423
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 433
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    .line 434
    return-void

    .line 418
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v2    # "skipFinal":Z
    .end local p1    # "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    .end local p3    # "r":J
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 420
    .restart local v2    # "skipFinal":Z
    .restart local p1    # "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    .restart local p3    # "r":J
    :catchall_5
    move-exception v0

    move v5, v2

    move-object v2, v0

    move v0, v5

    .end local v2    # "skipFinal":Z
    .restart local v0    # "skipFinal":Z
    :goto_4
    if-nez v0, :cond_6

    .line 421
    monitor-enter p0

    .line 422
    :try_start_a
    iput-boolean v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 423
    monitor-exit p0

    goto :goto_5

    :catchall_6
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v1

    :cond_6
    :goto_5
    throw v2
.end method

.method getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;
    .locals 3

    .line 217
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 218
    .local v0, "c":Lrx/subscriptions/CompositeSubscription;
    if-nez v0, :cond_1

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "shouldAdd":Z
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    move-object v0, v2

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    move-object v0, v2

    .line 224
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 225
    const/4 v1, 0x1

    .line 227
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 232
    .end local v1    # "shouldAdd":Z
    :cond_1
    :goto_0
    return-object v0
.end method

.method getOrCreateErrorQueue()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 205
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_1

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v0, v1

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object v0, v1

    .line 210
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 212
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 214
    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .line 280
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 282
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 274
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 276
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 277
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 148
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-nez p1, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitEmpty()V

    goto :goto_0

    .line 243
    :cond_1
    instance-of v0, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_2

    .line 244
    move-object v0, p1

    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {v0}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->tryEmit(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iget-wide v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V

    .line 247
    .local v0, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 248
    invoke-virtual {p1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 249
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 251
    .end local v0    # "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    :goto_0
    return-void
.end method

.method protected queueScalar(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 483
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 484
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_3

    .line 485
    iget v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 486
    .local v1, "mc":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 487
    new-instance v2, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    sget v3, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v2, v3}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    move-object v0, v2

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {v1}, Lrx/internal/util/unsafe/Pow2;->isPowerOfTwo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    new-instance v2, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v2, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    move-object v0, v2

    goto :goto_0

    .line 493
    :cond_1
    new-instance v2, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v2, v1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    move-object v0, v2

    goto :goto_0

    .line 496
    :cond_2
    new-instance v2, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    invoke-direct {v2, v1}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    move-object v0, v2

    .line 499
    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 501
    .end local v1    # "mc":I
    :cond_3
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 502
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V

    .line 503
    new-instance v1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 505
    :cond_4
    return-void
.end method

.method protected queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 373
    .local v0, "q":Lrx/internal/util/RxRingBuffer;
    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v0

    .line 375
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 376
    iput-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 379
    :cond_0
    :try_start_0
    invoke-static {p2}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {p1}, Lrx/Subscriber;->unsubscribe()V

    .line 386
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 380
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 381
    .local v1, "ex":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p1}, Lrx/Subscriber;->unsubscribe()V

    .line 382
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 388
    .end local v1    # "ex":Lrx/exceptions/MissingBackpressureException;
    :goto_0
    nop

    .line 389
    :cond_1
    :goto_1
    return-void
.end method

.method removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 296
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v0, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 297
    .local v0, "q":Lrx/internal/util/RxRingBuffer;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 302
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, p1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 303
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 305
    .local v2, "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v3, v2

    .line 306
    .local v3, "n":I
    const/4 v4, -0x1

    .line 308
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 309
    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    move v4, v5

    .line 311
    goto :goto_1

    .line 308
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    .end local v5    # "i":I
    :cond_2
    :goto_1
    if-gez v4, :cond_3

    .line 315
    monitor-exit v1

    return-void

    .line 317
    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 318
    sget-object v5, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 319
    monitor-exit v1

    return-void

    .line 321
    :cond_4
    add-int/lit8 v6, v3, -0x1

    new-array v6, v6, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 322
    .local v6, "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v3, v4

    sub-int/2addr v8, v5

    invoke-static {v2, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iput-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 325
    .end local v2    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v3    # "n":I
    .end local v4    # "j":I
    .end local v6    # "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    return-void
.end method

.method public requestMore(J)V
    .locals 0
    .param p1, "n"    # J

    .line 437
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/Subscriber;->request(J)V

    .line 438
    return-void
.end method

.method tryEmit(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 451
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 452
    .local v0, "success":Z
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 453
    .local v1, "r":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 454
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide v1, v5

    .line 457
    iget-boolean v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v5, :cond_0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 458
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 459
    const/4 v0, 0x1

    .line 461
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 463
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 464
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 465
    .local v3, "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    .line 469
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_2

    .line 466
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Ljava/lang/Object;J)V

    .line 471
    .end local v3    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_2
    goto :goto_3

    .line 472
    :cond_4
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 475
    :goto_3
    return-void
.end method

.method tryEmit(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 340
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 341
    .local v0, "success":Z
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 342
    .local v1, "r":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    move-wide v1, v5

    .line 346
    iget-boolean v5, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v5, :cond_0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 347
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 348
    const/4 v0, 0x1

    .line 350
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 352
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 353
    iget-object v3, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 354
    .local v3, "subscriberQueue":Lrx/internal/util/RxRingBuffer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_2

    .line 355
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, v1, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V

    .line 360
    .end local v3    # "subscriberQueue":Lrx/internal/util/RxRingBuffer;
    :goto_2
    goto :goto_3

    .line 361
    :cond_4
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 364
    :goto_3
    return-void
.end method
