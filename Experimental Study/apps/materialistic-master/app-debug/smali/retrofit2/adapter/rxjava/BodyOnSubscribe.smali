.class final Lretrofit2/adapter/rxjava/BodyOnSubscribe;
.super Ljava/lang/Object;
.source "BodyOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final upstream:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe<",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe<TT;>;"
    .local p1, "upstream":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe;->upstream:Lrx/Observable$OnSubscribe;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/BodyOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe;->upstream:Lrx/Observable$OnSubscribe;

    new-instance v1, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;-><init>(Lrx/Subscriber;)V

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
