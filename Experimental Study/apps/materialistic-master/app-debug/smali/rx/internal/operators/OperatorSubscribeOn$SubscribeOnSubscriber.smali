.class final Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;
.super Lrx/Subscriber;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscribeOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/functions/Action0;"
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

.field final requestOn:Z

.field source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Thread;

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Subscriber;ZLrx/Scheduler$Worker;Lrx/Observable;)V
    .locals 0
    .param p2, "requestOn"    # Z
    .param p3, "worker"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;Z",
            "Lrx/Scheduler$Worker;",
            "Lrx/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p4, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lrx/Subscriber;

    .line 67
    iput-boolean p2, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->requestOn:Z

    .line 68
    iput-object p3, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lrx/Scheduler$Worker;

    .line 69
    iput-object p4, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->source:Lrx/Observable;

    .line 70
    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->source:Lrx/Observable;

    .line 98
    .local v0, "src":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->source:Lrx/Observable;

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->t:Ljava/lang/Thread;

    .line 100
    invoke-virtual {v0, p0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 101
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lrx/Scheduler$Worker;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lrx/Scheduler$Worker;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lrx/Scheduler$Worker;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lrx/Scheduler$Worker;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "p"    # Lrx/Producer;

    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->actual:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;-><init>(Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 120
    return-void
.end method
