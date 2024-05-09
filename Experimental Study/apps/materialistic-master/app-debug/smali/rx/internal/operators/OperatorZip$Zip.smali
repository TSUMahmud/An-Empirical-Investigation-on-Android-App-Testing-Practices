.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final THRESHOLD:I


# instance fields
.field final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field emitted:I

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile subscribers:[Ljava/lang/Object;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 184
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 186
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 187
    return-void
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 4
    .param p1, "os"    # [Lrx/Observable;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .line 191
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    .local v0, "subscribers":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 193
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v2, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 194
    .local v2, "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    aput-object v2, v0, v1

    .line 195
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 192
    .end local v2    # "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 201
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 202
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    check-cast v3, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v2, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method tick()V
    .locals 15

    .line 215
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 216
    .local v0, "subscribers":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_a

    .line 221
    array-length v1, v0

    .line 222
    .local v1, "length":I
    iget-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 223
    .local v2, "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .local v5, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1
    :goto_0
    new-array v6, v1, [Ljava/lang/Object;

    .line 228
    .local v6, "vs":[Ljava/lang/Object;
    const/4 v7, 0x1

    .line 229
    .local v7, "allHaveValues":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_4

    .line 230
    aget-object v9, v0, v8

    check-cast v9, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v9, v9, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 231
    .local v9, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v9}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v10

    .line 233
    .local v10, "n":Ljava/lang/Object;
    if-nez v10, :cond_2

    .line 234
    const/4 v7, 0x0

    .line 235
    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {v9, v10}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 239
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 242
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 243
    return-void

    .line 245
    :cond_3
    invoke-virtual {v9, v10}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v8

    .line 229
    .end local v9    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v10    # "n":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 249
    .end local v8    # "i":I
    :cond_4
    if-eqz v7, :cond_9

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_9

    .line 252
    :try_start_0
    iget-object v8, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    invoke-interface {v8, v6}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    iget v8, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 261
    move-object v8, v0

    .local v8, "arr$":[Ljava/lang/Object;
    array-length v9, v8

    .local v9, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 262
    .local v11, "obj":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget-object v12, v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 263
    .local v12, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v12}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 265
    invoke-virtual {v12}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 267
    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    .line 269
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 270
    return-void

    .line 261
    .end local v11    # "obj":Ljava/lang/Object;
    .end local v12    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 273
    .end local v8    # "arr$":[Ljava/lang/Object;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_6
    iget v8, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    sget v9, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    if-le v8, v9, :cond_8

    .line 274
    move-object v8, v0

    .restart local v8    # "arr$":[Ljava/lang/Object;
    array-length v9, v8

    .restart local v9    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_4
    if-ge v10, v9, :cond_7

    aget-object v11, v8, v10

    .line 275
    .restart local v11    # "obj":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    iget v13, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    .line 274
    .end local v11    # "obj":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 277
    .end local v8    # "arr$":[Ljava/lang/Object;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_7
    const/4 v8, 0x0

    iput v8, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 282
    .end local v6    # "vs":[Ljava/lang/Object;
    .end local v7    # "allHaveValues":Z
    :cond_8
    goto/16 :goto_0

    .line 256
    .restart local v6    # "vs":[Ljava/lang/Object;
    .restart local v7    # "allHaveValues":Z
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3, v2, v6}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 258
    return-void

    .line 283
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "vs":[Ljava/lang/Object;
    .end local v7    # "allHaveValues":Z
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gtz v8, :cond_1

    .line 286
    .end local v1    # "length":I
    .end local v2    # "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    .end local v5    # "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_a
    return-void
.end method
