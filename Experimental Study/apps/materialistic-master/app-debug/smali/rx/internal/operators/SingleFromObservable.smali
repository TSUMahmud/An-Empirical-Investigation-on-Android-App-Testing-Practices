.class public final Lrx/internal/operators/SingleFromObservable;
.super Ljava/lang/Object;
.source "SingleFromObservable.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lrx/internal/operators/SingleFromObservable;, "Lrx/internal/operators/SingleFromObservable<TT;>;"
    .local p1, "source":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/SingleFromObservable;->source:Lrx/Observable$OnSubscribe;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    .local p0, "this":Lrx/internal/operators/SingleFromObservable;, "Lrx/internal/operators/SingleFromObservable<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/SingleSubscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/SingleFromObservable;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lrx/internal/operators/SingleFromObservable;, "Lrx/internal/operators/SingleFromObservable<TT;>;"
    .local p1, "t":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;-><init>(Lrx/SingleSubscriber;)V

    .line 40
    .local v0, "parent":Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;, "Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 41
    iget-object v1, p0, Lrx/internal/operators/SingleFromObservable;->source:Lrx/Observable$OnSubscribe;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
