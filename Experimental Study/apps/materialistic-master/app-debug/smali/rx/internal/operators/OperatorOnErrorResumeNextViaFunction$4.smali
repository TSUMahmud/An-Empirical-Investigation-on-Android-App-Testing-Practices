.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field produced:J

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$pa:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;Lrx/subscriptions/SerialSubscription;)V
    .locals 0

    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V

    .line 115
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V

    .line 133
    .local v0, "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 135
    iget-wide v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 136
    .local v1, "p":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 137
    iget-object v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v3, v1, v2}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 140
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iget-object v3, v3, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Observable;

    .line 142
    .local v3, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v3, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    .end local v0    # "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v1    # "p":J
    .end local v3    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 146
    .end local v0    # "e2":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    iget-wide v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .line 159
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method
