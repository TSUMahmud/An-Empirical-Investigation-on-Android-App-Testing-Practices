.class Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;
.super Lrx/Subscriber;
.source "ResultOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/ResultOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultSubscriber"
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
            "-",
            "Lretrofit2/adapter/rxjava/Result<",
            "TR;>;>;"
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
            "-",
            "Lretrofit2/adapter/rxjava/Result<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/adapter/rxjava/Result<TR;>;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 44
    iput-object p1, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    .line 45
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 72
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 53
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    :try_start_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-static {p1}, Lretrofit2/adapter/rxjava/Result;->error(Ljava/lang/Throwable;)Lretrofit2/adapter/rxjava/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 69
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-interface {v1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .local v1, "inner":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 64
    .local v2, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 57
    .end local v1    # "inner":Ljava/lang/Throwable;
    .end local v2    # "composite":Lrx/exceptions/CompositeException;
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 65
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    nop

    .line 66
    :goto_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 39
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-static {p1}, Lretrofit2/adapter/rxjava/Result;->response(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
