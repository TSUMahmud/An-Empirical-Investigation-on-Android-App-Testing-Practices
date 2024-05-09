.class final Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IterableProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 75
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 76
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 77
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 5

    .line 156
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 157
    .local v0, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 160
    :goto_0
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    return-void

    .line 167
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .local v3, "value":Ljava/lang/Object;, "TT;"
    nop

    .line 173
    invoke-interface {v0, v3}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    return-void

    .line 182
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    .local v2, "b":Z
    nop

    .line 188
    if-nez v2, :cond_3

    .line 189
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 192
    :cond_2
    return-void

    .line 194
    .end local v2    # "b":Z
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 183
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 184
    .restart local v2    # "b":Z
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 185
    return-void

    .line 168
    .end local v2    # "b":Z
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 169
    .local v2, "ex":Ljava/lang/Throwable;
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {v2, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 170
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .line 81
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->fastPath()V

    goto :goto_0

    .line 88
    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 89
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->slowPath(J)V

    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method slowPath(J)V
    .locals 11
    .param p1, "n"    # J

    .line 96
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 97
    .local v0, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 99
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    move-wide v2, p1

    .line 100
    .local v2, "r":J
    const-wide/16 v4, 0x0

    .local v4, "e":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 103
    :goto_0
    cmp-long v8, v4, v2

    if-eqz v8, :cond_4

    .line 104
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 105
    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .local v6, "value":Ljava/lang/Object;, "TT;"
    nop

    .line 117
    invoke-interface {v0, v6}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    return-void

    .line 126
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .local v7, "b":Z
    nop

    .line 132
    if-nez v7, :cond_3

    .line 133
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 134
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 136
    :cond_2
    return-void

    .line 139
    :cond_3
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 140
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "b":Z
    goto :goto_0

    .line 127
    .restart local v6    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v8

    .line 128
    .restart local v7    # "b":Z
    .local v8, "ex":Ljava/lang/Throwable;
    invoke-static {v8, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 129
    return-void

    .line 112
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "b":Z
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 113
    .restart local v6    # "value":Ljava/lang/Object;, "TT;"
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 114
    return-void

    .line 142
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 143
    cmp-long v8, v4, v2

    if-nez v8, :cond_6

    .line 144
    invoke-static {p0, v4, v5}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    .line 145
    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-nez v10, :cond_5

    .line 146
    nop

    .line 152
    return-void

    .line 148
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 143
    :cond_6
    goto :goto_0
.end method
