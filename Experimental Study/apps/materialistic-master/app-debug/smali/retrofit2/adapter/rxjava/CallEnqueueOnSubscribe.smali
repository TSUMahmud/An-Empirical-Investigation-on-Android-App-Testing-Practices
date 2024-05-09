.class final Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;
.super Ljava/lang/Object;
.source "CallEnqueueOnSubscribe.java"

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

    .line 28
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe<TT;>;"
    .local p1, "originalCall":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->originalCall:Lretrofit2/Call;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 25
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->call(Lrx/Subscriber;)V

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

    .line 34
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 35
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    new-instance v1, Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-direct {v1, v0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;-><init>(Lretrofit2/Call;Lrx/Subscriber;)V

    .line 36
    .local v1, "arbiter":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 37
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 39
    new-instance v2, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;

    invoke-direct {v2, p0, v1}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;-><init>(Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;Lretrofit2/adapter/rxjava/CallArbiter;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 49
    return-void
.end method
