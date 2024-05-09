.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapter;
.super Ljava/lang/Object;
.source "RxJavaCallAdapter.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAsync:Z

.field private final isBody:Z

.field private final isCompletable:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lrx/Scheduler;ZZZZZ)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/reflect/Type;
    .param p2, "scheduler"    # Lrx/Scheduler;
    .param p3, "isAsync"    # Z
    .param p4, "isResult"    # Z
    .param p5, "isBody"    # Z
    .param p6, "isSingle"    # Z
    .param p7, "isCompletable"    # Z

    .line 37
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapter<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 39
    iput-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/Scheduler;

    .line 40
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isAsync:Z

    .line 41
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isResult:Z

    .line 42
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isBody:Z

    .line 43
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isSingle:Z

    .line 44
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isCompletable:Z

    .line 45
    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapter<TR;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isAsync:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;-><init>(Lretrofit2/Call;)V

    :goto_0
    nop

    .line 57
    .local v0, "callFunc":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TR;>;>;"
    iget-boolean v1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isResult:Z

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lretrofit2/adapter/rxjava/ResultOnSubscribe;

    invoke-direct {v1, v0}, Lretrofit2/adapter/rxjava/ResultOnSubscribe;-><init>(Lrx/Observable$OnSubscribe;)V

    goto :goto_1

    .line 59
    :cond_1
    iget-boolean v1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isBody:Z

    if-eqz v1, :cond_2

    .line 60
    new-instance v1, Lretrofit2/adapter/rxjava/BodyOnSubscribe;

    invoke-direct {v1, v0}, Lretrofit2/adapter/rxjava/BodyOnSubscribe;-><init>(Lrx/Observable$OnSubscribe;)V

    goto :goto_1

    .line 62
    :cond_2
    move-object v1, v0

    .line 64
    .local v1, "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<*>;"
    :goto_1
    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v2

    .line 66
    .local v2, "observable":Lrx/Observable;, "Lrx/Observable<*>;"
    iget-object v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    .line 70
    :cond_3
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isSingle:Z

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {v2}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v3

    return-object v3

    .line 73
    :cond_4
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isCompletable:Z

    if-eqz v3, :cond_5

    .line 74
    invoke-virtual {v2}, Lrx/Observable;->toCompletable()Lrx/Completable;

    move-result-object v3

    return-object v3

    .line 76
    :cond_5
    return-object v2
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 48
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapter<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
