.class final Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;
.super Lrx/Subscriber;
.source "SingleFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/SingleFromObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrapSingleIntoSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/SingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/SingleSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field state:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/SingleSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;, "Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber<TT;>;"
    .local p1, "actual":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->actual:Lrx/SingleSubscriber;

    .line 57
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 83
    .local p0, "this":Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;, "Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber<TT;>;"
    iget v0, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->state:I

    .line 84
    .local v0, "s":I
    if-nez v0, :cond_0

    .line 85
    iget-object v1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->actual:Lrx/SingleSubscriber;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v1, v2}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 87
    const/4 v1, 0x2

    iput v1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->state:I

    .line 88
    iget-object v1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->value:Ljava/lang/Object;

    .line 89
    .local v1, "v":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->value:Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v2, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 92
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;, "Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber<TT;>;"
    iget v0, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->value:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->actual:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;, "Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->state:I

    .line 62
    .local v0, "s":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    iput v1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->state:I

    .line 64
    iput-object p1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->value:Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    if-ne v0, v1, :cond_1

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->state:I

    .line 67
    iget-object v1, p0, Lrx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber;->actual:Lrx/SingleSubscriber;

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "The upstream produced more than one value"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
    :cond_1
    :goto_0
    return-void
.end method
