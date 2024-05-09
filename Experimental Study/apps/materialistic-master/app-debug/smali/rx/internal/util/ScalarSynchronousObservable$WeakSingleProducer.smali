.class final Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakSingleProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field once:Z

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lrx/Subscriber;

    .line 255
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .line 260
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;, "Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    if-eqz v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 266
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 267
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->once:Z

    .line 270
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->actual:Lrx/Subscriber;

    .line 271
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    return-void

    .line 274
    :cond_2
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;->value:Ljava/lang/Object;

    .line 276
    .local v1, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 282
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    return-void

    .line 285
    :cond_3
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 286
    return-void

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 279
    return-void

    .line 264
    .end local v0    # "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
