.class final Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z


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

    .line 235
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;, "Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;-><init>(Lrx/Subscriber;)V

    .line 236
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 250
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;, "Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    .line 254
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 255
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 260
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;, "Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 262
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    .line 265
    invoke-super {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    .line 266
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;, "Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;->done:Z

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    invoke-super {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->onNext(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method onOverflow()V
    .locals 2

    .line 271
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;, "Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter<TT;>;"
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string v1, "create: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCreate$ErrorEmitter;->onError(Ljava/lang/Throwable;)V

    .line 272
    return-void
.end method
