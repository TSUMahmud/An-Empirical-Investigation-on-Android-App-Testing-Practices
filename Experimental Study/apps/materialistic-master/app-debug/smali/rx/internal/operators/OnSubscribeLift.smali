.class public final Lrx/internal/operators/OnSubscribeLift;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lrx/Observable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$Operator<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable$Operator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/Observable$Operator<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lrx/internal/operators/OnSubscribeLift;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "parent":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeLift;->parent:Lrx/Observable$OnSubscribe;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeLift;->operator:Lrx/Observable$Operator;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lrx/internal/operators/OnSubscribeLift;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeLift;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lrx/internal/operators/OnSubscribeLift;, "Lrx/internal/operators/OnSubscribeLift<TT;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeLift;->operator:Lrx/Observable$Operator;

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onObservableLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v0, "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_1
    invoke-virtual {v0}, Lrx/Subscriber;->onStart()V

    .line 48
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeLift;->parent:Lrx/Observable$OnSubscribe;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 54
    invoke-interface {v0, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 61
    .end local v0    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
