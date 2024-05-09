.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
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
.field private final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 66
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    .line 67
    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 151
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    iget-object v3, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    nop

    .line 191
    :try_start_1
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    nop

    .line 196
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 194
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 179
    .local v3, "e2":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 181
    :try_start_2
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    nop

    .line 187
    new-instance v4, Lrx/exceptions/OnErrorFailedException;

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v0, "Error occurred when trying to propagate error to Observer.onError"

    invoke-direct {v4, v0, v5}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 182
    :catch_2
    move-exception v4

    .line 183
    .local v4, "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v4}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 184
    new-instance v5, Lrx/exceptions/OnErrorFailedException;

    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object p1, v7, v1

    aput-object v3, v7, v0

    aput-object v4, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v0, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    invoke-direct {v5, v0, v6}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 154
    .end local v3    # "e2":Ljava/lang/Throwable;
    .end local v4    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .line 167
    .local v3, "e2":Lrx/exceptions/OnErrorNotImplementedException;
    :try_start_3
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 171
    nop

    .line 172
    throw v3

    .line 168
    :catch_4
    move-exception v4

    .line 169
    .restart local v4    # "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v4}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 170
    new-instance v5, Lrx/exceptions/OnErrorNotImplementedException;

    new-instance v6, Lrx/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v4, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v0, "Observer.onError not implemented and error while unsubscribing."

    invoke-direct {v5, v0, v6}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onCompleted()V
    .locals 3

    .line 76
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 79
    :try_start_0
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lrx/Subscriber;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    nop

    .line 93
    throw v0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 112
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 115
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
