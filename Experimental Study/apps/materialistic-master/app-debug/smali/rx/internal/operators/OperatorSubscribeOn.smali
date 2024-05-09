.class public final Lrx/internal/operators/OperatorSubscribeOn;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;
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
.field final requestOn:Z

.field final scheduler:Lrx/Scheduler;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Scheduler;Z)V
    .locals 0
    .param p2, "scheduler"    # Lrx/Scheduler;
    .param p3, "requestOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/Scheduler;",
            "Z)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn;->source:Lrx/Observable;

    .line 39
    iput-boolean p3, p0, Lrx/internal/operators/OperatorSubscribeOn;->requestOn:Z

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSubscribeOn;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn;, "Lrx/internal/operators/OperatorSubscribeOn<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 46
    .local v0, "inner":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    iget-boolean v2, p0, Lrx/internal/operators/OperatorSubscribeOn;->requestOn:Z

    iget-object v3, p0, Lrx/internal/operators/OperatorSubscribeOn;->source:Lrx/Observable;

    invoke-direct {v1, p1, v2, v0, v3}, Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;-><init>(Lrx/Subscriber;ZLrx/Scheduler$Worker;Lrx/Observable;)V

    .line 47
    .local v1, "parent":Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;, "Lrx/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 50
    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 51
    return-void
.end method
