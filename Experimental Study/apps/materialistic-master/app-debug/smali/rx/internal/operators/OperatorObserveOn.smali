.class public final Lrx/internal/operators/OperatorObserveOn;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final delayError:Z

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;ZI)V
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I

    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn;->scheduler:Lrx/Scheduler;

    .line 61
    iput-boolean p2, p0, Lrx/internal/operators/OperatorObserveOn;->delayError:Z

    .line 62
    if-lez p3, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    :goto_0
    iput v0, p0, Lrx/internal/operators/OperatorObserveOn;->bufferSize:I

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn;->scheduler:Lrx/Scheduler;

    instance-of v1, v0, Lrx/internal/schedulers/ImmediateScheduler;

    if-eqz v1, :cond_0

    .line 69
    return-object p1

    .line 70
    :cond_0
    instance-of v1, v0, Lrx/internal/schedulers/TrampolineScheduler;

    if-eqz v1, :cond_1

    .line 72
    return-object p1

    .line 74
    :cond_1
    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    iget-boolean v2, p0, Lrx/internal/operators/OperatorObserveOn;->delayError:Z

    iget v3, p0, Lrx/internal/operators/OperatorObserveOn;->bufferSize:I

    invoke-direct {v1, v0, p1, v2, v3}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;-><init>(Lrx/Scheduler;Lrx/Subscriber;ZI)V

    move-object v0, v1

    .line 75
    .local v0, "parent":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->init()V

    .line 76
    return-object v0
.end method
