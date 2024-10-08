.class public Lrx/internal/util/RxRingBuffer;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field public static final SIZE:I


# instance fields
.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field public volatile terminalState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 243
    const/16 v0, 0x80

    .line 246
    .local v0, "defaultSize":I
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/16 v0, 0x10

    .line 251
    :cond_0
    const-string v1, "rx.ring-buffer.size"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    sput v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    .line 261
    .end local v0    # "defaultSize":I
    .end local v1    # "sizeFromProperty":Ljava/lang/String;
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 300
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {p0, v0, v1}, Lrx/internal/util/RxRingBuffer;-><init>(Ljava/util/Queue;I)V

    .line 301
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 280
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 282
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    .line 283
    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 1
    .param p1, "spmc"    # Z
    .param p2, "size"    # I

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-eqz p1, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/SpmcArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpmcArrayQueue;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 287
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    .line 288
    return-void
.end method

.method public static getSpmcInstance()Lrx/internal/util/RxRingBuffer;
    .locals 3

    .line 273
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    const/4 v1, 0x1

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(ZI)V

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    return-object v0
.end method

.method public static getSpscInstance()Lrx/internal/util/RxRingBuffer;
    .locals 3

    .line 265
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    const/4 v1, 0x0

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(ZI)V

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 410
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 402
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 360
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 361
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 331
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 334
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "iae":Z
    const/4 v1, 0x0

    .line 312
    .local v1, "mbe":Z
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 314
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 315
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_0

    .line 317
    :cond_0
    const/4 v0, 0x1

    .line 319
    .end local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-nez v0, :cond_2

    .line 324
    if-nez v1, :cond_1

    .line 327
    return-void

    .line 325
    :cond_1
    new-instance v2, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v2}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v2

    .line 322
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 4

    .line 386
    monitor-enter p0

    .line 387
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 388
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 390
    monitor-exit p0

    return-object v0

    .line 392
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 394
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 395
    move-object v0, v2

    .line 397
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :cond_1
    monitor-exit p0

    .line 398
    return-object v0

    .line 397
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .restart local v0    # "o":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5

    .line 366
    monitor-enter p0

    .line 367
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 368
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 370
    monitor-exit p0

    return-object v0

    .line 372
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    .local v2, "o":Ljava/lang/Object;
    :try_start_1
    iget-object v3, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 375
    .local v3, "ts":Ljava/lang/Object;
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 376
    move-object v2, v3

    .line 378
    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 380
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v3    # "ts":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .end local v2    # "o":Ljava/lang/Object;
    .local v0, "o":Ljava/lang/Object;
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 381
    return-object v0

    .line 380
    .end local v0    # "o":Ljava/lang/Object;
    .restart local v2    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    move-object v0, v2

    goto :goto_1

    .end local v2    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    .restart local v0    # "o":Ljava/lang/Object;
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 0

    monitor-enter p0

    .line 292
    monitor-exit p0

    return-void
.end method

.method public unsubscribe()V
    .locals 0

    .line 296
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 297
    return-void
.end method
