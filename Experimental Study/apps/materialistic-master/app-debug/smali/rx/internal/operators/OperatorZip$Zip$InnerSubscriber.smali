.class final Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip$Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerSubscriber"
.end annotation


# instance fields
.field final items:Lrx/internal/util/RxRingBuffer;

.field final synthetic this$0:Lrx/internal/operators/OperatorZip$Zip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .locals 0

    .line 291
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 293
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 306
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 307
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;

    .line 319
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v0, p1}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 323
    .end local v0    # "e":Lrx/exceptions/MissingBackpressureException;
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 324
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 297
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/Subscriber;->request(J)V

    .line 298
    return-void
.end method

.method public requestMore(J)V
    .locals 0
    .param p1, "n"    # J

    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/Subscriber;->request(J)V

    .line 302
    return-void
.end method
