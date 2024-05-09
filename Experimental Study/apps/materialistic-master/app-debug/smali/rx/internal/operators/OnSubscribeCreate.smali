.class public final Lrx/internal/operators/OnSubscribeCreate;
.super Ljava/lang/Object;
.source "OnSubscribeCreate.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$DropEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;,
        Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
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
.field final Emitter:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/Emitter<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final backpressure:Lrx/Emitter$BackpressureMode;


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate;, "Lrx/internal/operators/OnSubscribeCreate<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCreate;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate;, "Lrx/internal/operators/OnSubscribeCreate<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeCreate$1;->$SwitchMap$rx$Emitter$BackpressureMode:[I

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate;->backpressure:Lrx/Emitter$BackpressureMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 65
    .local v0, "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/OnSubscribeCreate$BufferEmitter;-><init>(Lrx/Subscriber;I)V

    move-object v0, v1

    goto :goto_0

    .line 47
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_0
    move-object v0, v1

    .line 61
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;

    invoke-direct {v1, p1}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;-><init>(Lrx/Subscriber;)V

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 47
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_1
    move-object v0, v1

    .line 57
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeCreate$DropEmitter;

    invoke-direct {v1, p1}, Lrx/internal/operators/OnSubscribeCreate$DropEmitter;-><init>(Lrx/Subscriber;)V

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 47
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_2
    move-object v0, v1

    .line 53
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;

    invoke-direct {v1, p1}, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;-><init>(Lrx/Subscriber;)V

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 49
    .end local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    :pswitch_3
    new-instance v0, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeCreate$NoneEmitter;-><init>(Lrx/Subscriber;)V

    .line 50
    .restart local v0    # "emitter":Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;, "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter<TT;>;"
    nop

    .line 70
    :goto_0
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 71
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 72
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCreate;->Emitter:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 74
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
