.class final Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoOnEachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final doOnEachObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "doOnEachObserver":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    .line 54
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    .line 55
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 71
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 66
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 75
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    .line 81
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    new-instance v3, Lrx/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 99
    return-void
.end method
