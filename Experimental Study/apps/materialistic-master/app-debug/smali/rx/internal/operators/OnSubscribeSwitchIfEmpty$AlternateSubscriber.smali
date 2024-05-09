.class final Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeSwitchIfEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlternateSubscriber"
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
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V
    .locals 0
    .param p2, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 132
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    .line 133
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 134
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 143
    .local p0, "this":Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 144
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 148
    .local p0, "this":Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 155
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .line 138
    .local p0, "this":Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSwitchIfEmpty$AlternateSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 139
    return-void
.end method
