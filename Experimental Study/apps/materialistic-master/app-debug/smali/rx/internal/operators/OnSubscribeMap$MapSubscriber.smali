.class final Lrx/internal/operators/OnSubscribeMap$MapSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    .line 62
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 94
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 98
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 82
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, "result":Ljava/lang/Object;, "TR;"
    nop

    .line 77
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 70
    .end local v0    # "result":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v1

    .line 71
    .restart local v0    # "result":Ljava/lang/Object;, "TR;"
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V

    .line 73
    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "p"    # Lrx/Producer;

    .line 102
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 103
    return-void
.end method
