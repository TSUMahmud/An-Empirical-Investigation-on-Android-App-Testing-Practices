.class abstract Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeCreate.java"

# interfaces
.implements Lrx/Emitter;
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Emitter<",
        "TT;>;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
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

.field final serial:Lrx/subscriptions/SerialSubscription;


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

    .line 86
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 87
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    .line 88
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    .line 89
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .line 127
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 93
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 105
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->actual:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    throw v0
.end method

.method onRequested()V
    .locals 0

    .line 140
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method onUnsubscribed()V
    .locals 0

    .line 123
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    return-void
.end method

.method public final request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 132
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    invoke-static {p1, p2}, Lrx/internal/operators/BackpressureUtils;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onRequested()V

    .line 136
    :cond_0
    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .line 117
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 118
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onUnsubscribed()V

    .line 119
    return-void
.end method
