.class final Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;
.super Lrx/SingleSubscriber;
.source "SingleLiftObservableOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/SingleSubscriber<",
        "TT;>;"
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


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;, "Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;->actual:Lrx/Subscriber;

    .line 72
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 81
    .local p0, "this":Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;, "Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;->actual:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;, "Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/SingleLiftObservableOperator$WrapSubscriberIntoSingle;->actual:Lrx/Subscriber;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    invoke-direct {v1, v0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 77
    return-void
.end method
