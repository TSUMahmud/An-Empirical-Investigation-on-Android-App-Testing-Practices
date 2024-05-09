.class public Lrx/internal/schedulers/NewThreadWorker;
.super Lrx/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field private static final EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final PURGE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_FREQUENCY:I

.field private static final SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

.field private static final SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

.field private static volatile cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile isUnsubscribed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    const-string v0, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    .line 66
    const-string v0, "rx.scheduler.jdk6.purge-force"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    .local v0, "purgeForce":Z
    invoke-static {}, Lrx/internal/util/PlatformDependent;->getAndroidApiVersion()I

    move-result v1

    .line 72
    .local v1, "androidApiVersion":I
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lrx/internal/schedulers/NewThreadWorker;->SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

    .line 74
    .end local v0    # "purgeForce":Z
    .end local v1    # "androidApiVersion":I
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 208
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 209
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 211
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v1

    .line 212
    .local v1, "cancelSupported":Z
    if-nez v1, :cond_0

    instance-of v2, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v2}, Lrx/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 215
    :cond_0
    iput-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 216
    return-void
.end method

.method public static deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 109
    sget-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method static findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 195
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setRemoveOnCancelPolicy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 198
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 199
    return-object v3

    .line 194
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static purgeExecutors()V
    .locals 3

    .line 116
    :try_start_0
    sget-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 119
    .local v1, "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_1
    goto :goto_0

    .line 128
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :cond_1
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 127
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 11
    .param p0, "service"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 82
    :goto_0
    sget-object v0, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :cond_0

    .line 84
    goto :goto_1

    .line 86
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/util/RxThreadFactory;

    const-string v3, "RxSchedulerPurge-"

    invoke-direct {v2, v3}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 87
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v5, Lrx/internal/schedulers/NewThreadWorker$1;

    invoke-direct {v5}, Lrx/internal/schedulers/NewThreadWorker$1;-><init>()V

    sget v1, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    int-to-long v6, v1

    int-to-long v8, v1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v0

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 95
    nop

    .line 101
    .end local v0    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    :goto_1
    sget-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 97
    .restart local v0    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 99
    .end local v0    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    goto :goto_0
.end method

.method public static tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 6
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 140
    sget-boolean v0, Lrx/internal/schedulers/NewThreadWorker;->SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 141
    instance-of v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 145
    .local v0, "isInstanceOfScheduledThreadPoolExecutor":Z
    if-eqz v0, :cond_3

    .line 146
    sget-object v2, Lrx/internal/schedulers/NewThreadWorker;->cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;

    .line 148
    .local v2, "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    sget-object v3, Lrx/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 149
    return v1

    .line 152
    :cond_0
    if-nez v2, :cond_2

    .line 153
    invoke-static {p0}, Lrx/internal/schedulers/NewThreadWorker;->findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 155
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lrx/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    :goto_0
    sput-object v4, Lrx/internal/schedulers/NewThreadWorker;->cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;

    .line 159
    nop

    .line 160
    .local v3, "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 161
    .end local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_2
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Method;

    .line 163
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .restart local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :goto_1
    goto :goto_2

    .line 164
    .end local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_3
    invoke-static {p0}, Lrx/internal/schedulers/NewThreadWorker;->findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 167
    .restart local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :goto_2
    if-eqz v3, :cond_4

    .line 169
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return v2

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 173
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3

    .line 171
    :catch_2
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_4
    :goto_3
    return v1
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3
    .param p1, "action"    # Lrx/functions/Action0;

    .line 220
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/NewThreadWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 1
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 225
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/NewThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    return-object v0
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 5
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 240
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 241
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 243
    .local v1, "run":Lrx/internal/schedulers/ScheduledAction;
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_0

    .line 244
    iget-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_0

    .line 246
    :cond_0
    iget-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 248
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v1, v2}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 250
    return-object v1
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/SubscriptionList;)Lrx/internal/schedulers/ScheduledAction;
    .locals 5
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/internal/util/SubscriptionList;

    .line 269
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 270
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v1, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/internal/util/SubscriptionList;)V

    .line 271
    .local v1, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 274
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_0

    .line 275
    iget-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 279
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v1, v2}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 281
    return-object v1
.end method

.method public unsubscribe()V
    .locals 1

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    .line 287
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 288
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 289
    return-void
.end method
