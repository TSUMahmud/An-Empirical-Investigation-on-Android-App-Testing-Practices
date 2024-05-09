.class public final Lio/github/hidroh/materialistic/data/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionManager.kt\nio/github/hidroh/materialistic/data/SessionManager\n*L\n1#1,56:1\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final cache:Lio/github/hidroh/materialistic/data/LocalCache;

.field private final ioScheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;Lio/github/hidroh/materialistic/data/LocalCache;)V
    .locals 1
    .param p1, "ioScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "io"
        .end annotation
    .end param
    .param p2, "cache"    # Lio/github/hidroh/materialistic/data/LocalCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SessionManager;->ioScheduler:Lrx/Scheduler;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/SessionManager;->cache:Lio/github/hidroh/materialistic/data/LocalCache;

    return-void
.end method

.method public static final synthetic access$getCache$p(Lio/github/hidroh/materialistic/data/SessionManager;)Lio/github/hidroh/materialistic/data/LocalCache;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/SessionManager;

    .line 31
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager;->cache:Lio/github/hidroh/materialistic/data/LocalCache;

    return-object v0
.end method


# virtual methods
.method public final isViewed(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 37
    nop

    .line 38
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 39
    goto :goto_2

    .line 41
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager;->cache:Lio/github/hidroh/materialistic/data/LocalCache;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/LocalCache;->isViewed(Ljava/lang/String;)Z

    move-result v1

    .line 38
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.just(\n      i\u2026isViewed(itemId)\n      })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method public final view(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 50
    :cond_2
    nop

    .line 53
    nop

    .line 50
    nop

    .line 52
    nop

    .line 50
    nop

    .line 51
    nop

    .line 50
    new-instance v0, Lio/github/hidroh/materialistic/data/SessionManager$view$1;

    invoke-direct {v0, p1}, Lio/github/hidroh/materialistic/data/SessionManager$view$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lrx/functions/Func0;

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SessionManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SessionManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 53
    new-instance v1, Lio/github/hidroh/materialistic/data/SessionManager$view$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/SessionManager$view$2;-><init>(Lio/github/hidroh/materialistic/data/SessionManager;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 54
    return-void
.end method
