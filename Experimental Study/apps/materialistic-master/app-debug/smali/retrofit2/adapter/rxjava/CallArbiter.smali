.class final Lretrofit2/adapter/rxjava/CallArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CallArbiter.java"

# interfaces
.implements Lrx/Subscription;
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Subscription;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final STATE_HAS_RESPONSE:I = 0x2

.field private static final STATE_REQUESTED:I = 0x1

.field private static final STATE_TERMINATED:I = 0x3

.field private static final STATE_WAITING:I


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lrx/Subscriber<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    .line 46
    iput-object p2, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    .line 47
    return-void
.end method

.method private deliverResponse(Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 139
    :cond_0
    nop

    .line 141
    :try_start_1
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_1
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 150
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 144
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    nop

    .line 152
    :goto_2
    return-void

    .line 125
    :catch_4
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 128
    :try_start_2
    iget-object v1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-interface {v1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 133
    :catch_5
    move-exception v1

    .line 134
    .local v1, "inner":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 136
    .local v2, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 129
    .end local v1    # "inner":Ljava/lang/Throwable;
    .end local v2    # "composite":Lrx/exceptions/CompositeException;
    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 137
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_4
    nop

    .line 138
    :goto_5
    return-void

    .line 120
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_6
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method


# virtual methods
.method emitError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 155
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 157
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :try_start_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "inner":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 166
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 167
    .local v1, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 160
    .end local v0    # "inner":Ljava/lang/Throwable;
    .end local v1    # "composite":Lrx/exceptions/CompositeException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 170
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-void
.end method

.method emitResponse(Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 90
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :pswitch_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 99
    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;->deliverResponse(Lretrofit2/Response;)V

    .line 101
    return-void

    .line 92
    :pswitch_2
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->response:Lretrofit2/Response;

    .line 93
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    return-void

    .line 112
    .end local v0    # "state":I
    :cond_0
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 54
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 4
    .param p1, "amount"    # J

    .line 58
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 63
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :pswitch_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->response:Lretrofit2/Response;

    invoke-direct {p0, v1}, Lretrofit2/adapter/rxjava/CallArbiter;->deliverResponse(Lretrofit2/Response;)V

    .line 73
    return-void

    .line 79
    :pswitch_1
    return-void

    .line 65
    :pswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    return-void

    .line 84
    .end local v0    # "state":I
    :cond_1
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unsubscribe()V
    .locals 1

    .line 50
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 51
    return-void
.end method
