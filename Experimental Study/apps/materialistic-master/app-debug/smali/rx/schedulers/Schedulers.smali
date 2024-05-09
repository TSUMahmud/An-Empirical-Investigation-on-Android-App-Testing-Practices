.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/schedulers/Schedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final computationScheduler:Lrx/Scheduler;

.field private final ioScheduler:Lrx/Scheduler;

.field private final newThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    .line 78
    .local v0, "hook":Lrx/plugins/RxJavaSchedulersHook;
    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lrx/Scheduler;

    move-result-object v1

    .line 79
    .local v1, "c":Lrx/Scheduler;
    if-eqz v1, :cond_0

    .line 80
    iput-object v1, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createComputationScheduler()Lrx/Scheduler;

    move-result-object v2

    iput-object v2, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    .line 85
    :goto_0
    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->getIOScheduler()Lrx/Scheduler;

    move-result-object v2

    .line 86
    .local v2, "io":Lrx/Scheduler;
    if-eqz v2, :cond_1

    .line 87
    iput-object v2, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    goto :goto_1

    .line 89
    :cond_1
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createIoScheduler()Lrx/Scheduler;

    move-result-object v3

    iput-object v3, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    .line 92
    :goto_1
    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lrx/Scheduler;

    move-result-object v3

    .line 93
    .local v3, "nt":Lrx/Scheduler;
    if-eqz v3, :cond_2

    .line 94
    iput-object v3, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    goto :goto_2

    .line 96
    :cond_2
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createNewThreadScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    .line 98
    :goto_2
    return-void
.end method

.method private static getInstance()Lrx/schedulers/Schedulers;
    .locals 3

    .line 61
    :goto_0
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/Schedulers;

    .line 62
    .local v0, "current":Lrx/schedulers/Schedulers;
    if-eqz v0, :cond_0

    .line 63
    return-object v0

    .line 65
    :cond_0
    new-instance v1, Lrx/schedulers/Schedulers;

    invoke-direct {v1}, Lrx/schedulers/Schedulers;-><init>()V

    move-object v0, v1

    .line 66
    sget-object v1, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->shutdownInstance()V

    .line 71
    .end local v0    # "current":Lrx/schedulers/Schedulers;
    goto :goto_0
.end method

.method public static immediate()Lrx/Scheduler;
    .locals 1

    .line 106
    sget-object v0, Lrx/internal/schedulers/ImmediateScheduler;->INSTANCE:Lrx/internal/schedulers/ImmediateScheduler;

    return-object v0
.end method

.method public static io()Lrx/Scheduler;
    .locals 1

    .line 159
    invoke-static {}, Lrx/schedulers/Schedulers;->getInstance()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onIOScheduler(Lrx/Scheduler;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized shutdownInstance()V
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 244
    .end local p0    # "this":Lrx/schedulers/Schedulers;
    :cond_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 247
    :cond_1
    iget-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_2
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
