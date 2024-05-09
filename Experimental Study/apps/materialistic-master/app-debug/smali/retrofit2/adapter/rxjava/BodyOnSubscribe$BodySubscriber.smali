.class Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;
.super Lrx/Subscriber;
.source "BodyOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/BodyOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lretrofit2/Response<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private subscriberTerminated:Z


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 46
    iput-object p1, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    .line 47
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 83
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriberTerminated:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 86
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 70
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriberTerminated:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a Retrofit bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 77
    .local v0, "broken":Ljava/lang/Throwable;
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "broken":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 39
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 53
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriberTerminated:Z

    .line 54
    new-instance v1, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    .line 56
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "inner":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    new-instance v3, Lrx/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 64
    .local v0, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 57
    .end local v0    # "composite":Lrx/exceptions/CompositeException;
    .end local v2    # "inner":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 67
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
