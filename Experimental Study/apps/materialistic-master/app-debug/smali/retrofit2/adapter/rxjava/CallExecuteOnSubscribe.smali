.class final Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;
.super Ljava/lang/Object;
.source "CallExecuteOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;, "Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe<TT;>;"
    .local p1, "originalCall":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;->originalCall:Lretrofit2/Call;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 24
    .local p0, "this":Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;, "Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;, "Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 34
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    new-instance v1, Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-direct {v1, v0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;-><init>(Lretrofit2/Call;Lrx/Subscriber;)V

    .line 35
    .local v1, "arbiter":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 36
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 40
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    nop

    .line 46
    invoke-virtual {v1, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitResponse(Lretrofit2/Response;)V

    .line 47
    return-void

    .line 41
    .end local v2    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :catch_0
    move-exception v2

    .line 42
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v1, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitError(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
