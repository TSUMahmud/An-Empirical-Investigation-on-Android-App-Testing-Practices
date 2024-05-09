.class public final Lrx/plugins/RxJavaHooks;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# static fields
.field static volatile onCompletableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Completable$Operator;",
            "Lrx/Completable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Lrx/Completable;",
            "Lrx/Completable$OnSubscribe;",
            "Lrx/Completable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onIOScheduler:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Lrx/Observable;",
            "Lrx/Observable$OnSubscribe;",
            "Lrx/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleAction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleCreate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleLift:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Observable$Operator;",
            "Lrx/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleReturn:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Lrx/Subscription;",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleStart:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Lrx/Single;",
            "Lrx/Single$OnSubscribe;",
            "Lrx/Single$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribeError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 87
    invoke-static {}, Lrx/plugins/RxJavaHooks;->init()V

    .line 88
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static init()V
    .locals 1

    .line 101
    new-instance v0, Lrx/plugins/RxJavaHooks$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 108
    new-instance v0, Lrx/plugins/RxJavaHooks$2;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$2;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 115
    new-instance v0, Lrx/plugins/RxJavaHooks$3;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$3;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 122
    new-instance v0, Lrx/plugins/RxJavaHooks$4;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$4;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleStart:Lrx/functions/Func2;

    .line 137
    new-instance v0, Lrx/plugins/RxJavaHooks$5;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$5;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleReturn:Lrx/functions/Func1;

    .line 144
    new-instance v0, Lrx/plugins/RxJavaHooks$6;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$6;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableStart:Lrx/functions/Func2;

    .line 151
    new-instance v0, Lrx/plugins/RxJavaHooks$7;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$7;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 158
    new-instance v0, Lrx/plugins/RxJavaHooks$8;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$8;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 165
    new-instance v0, Lrx/plugins/RxJavaHooks$9;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$9;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 172
    new-instance v0, Lrx/plugins/RxJavaHooks$10;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$10;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleSubscribeError:Lrx/functions/Func1;

    .line 179
    new-instance v0, Lrx/plugins/RxJavaHooks$11;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$11;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleLift:Lrx/functions/Func1;

    .line 186
    new-instance v0, Lrx/plugins/RxJavaHooks$12;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$12;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableSubscribeError:Lrx/functions/Func1;

    .line 193
    new-instance v0, Lrx/plugins/RxJavaHooks$13;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$13;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableLift:Lrx/functions/Func1;

    .line 200
    invoke-static {}, Lrx/plugins/RxJavaHooks;->initCreate()V

    .line 201
    return-void
.end method

.method static initCreate()V
    .locals 1

    .line 205
    new-instance v0, Lrx/plugins/RxJavaHooks$14;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$14;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 212
    new-instance v0, Lrx/plugins/RxJavaHooks$15;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$15;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 219
    new-instance v0, Lrx/plugins/RxJavaHooks$16;

    invoke-direct {v0}, Lrx/plugins/RxJavaHooks$16;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 225
    return-void
.end method

.method public static onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .locals 2
    .param p0, "onSubscribe"    # Lrx/Completable$OnSubscribe;

    .line 363
    sget-object v0, Lrx/plugins/RxJavaHooks;->onCompletableCreate:Lrx/functions/Func1;

    .line 364
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Completable$OnSubscribe;Lrx/Completable$OnSubscribe;>;"
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable$OnSubscribe;

    return-object v1

    .line 367
    :cond_0
    return-object p0
.end method

.method public static onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 335
    .local p0, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableCreate:Lrx/functions/Func1;

    .line 336
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    return-object v1

    .line 339
    :cond_0
    return-object p0
.end method

.method public static onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;)",
            "Lrx/Single$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 350
    .local p0, "onSubscribe":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onSingleCreate:Lrx/functions/Func1;

    .line 351
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Single$OnSubscribe;Lrx/Single$OnSubscribe;>;"
    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Single$OnSubscribe;

    return-object v1

    .line 354
    :cond_0
    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 301
    sget-object v0, Lrx/plugins/RxJavaHooks;->onError:Lrx/functions/Action1;

    .line 302
    .local v0, "f":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    invoke-interface {v0, p0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 312
    .local v1, "pluginException":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 318
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lrx/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 319
    return-void
.end method

.method public static onIOScheduler(Lrx/Scheduler;)Lrx/Scheduler;
    .locals 2
    .param p0, "scheduler"    # Lrx/Scheduler;

    .line 389
    sget-object v0, Lrx/plugins/RxJavaHooks;->onIOScheduler:Lrx/functions/Func1;

    .line 390
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Scheduler;Lrx/Scheduler;>;"
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    return-object v1

    .line 393
    :cond_0
    return-object p0
.end method

.method public static onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .line 458
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableSubscribeError:Lrx/functions/Func1;

    .line 459
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 462
    :cond_0
    return-object p0
.end method

.method public static onObservableLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator<",
            "TR;TT;>;)",
            "Lrx/Observable$Operator<",
            "TR;TT;>;"
        }
    .end annotation

    .line 474
    .local p0, "operator":Lrx/Observable$Operator;, "Lrx/Observable$Operator<TR;TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableLift:Lrx/functions/Func1;

    .line 475
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Observable$Operator;Lrx/Observable$Operator;>;"
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$Operator;

    return-object v1

    .line 478
    :cond_0
    return-object p0
.end method

.method public static onObservableReturn(Lrx/Subscription;)Lrx/Subscription;
    .locals 2
    .param p0, "subscription"    # Lrx/Subscription;

    .line 445
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableReturn:Lrx/functions/Func1;

    .line 446
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/Subscription;Lrx/Subscription;>;"
    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    return-object v1

    .line 449
    :cond_0
    return-object p0
.end method

.method public static onObservableStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 432
    .local p0, "instance":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lrx/plugins/RxJavaHooks;->onObservableStart:Lrx/functions/Func2;

    .line 433
    .local v0, "f":Lrx/functions/Func2;, "Lrx/functions/Func2<Lrx/Observable;Lrx/Observable$OnSubscribe;Lrx/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0, p0, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable$OnSubscribe;

    return-object v1

    .line 436
    :cond_0
    return-object p1
.end method

.method public static onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;
    .locals 2
    .param p0, "action"    # Lrx/functions/Action0;

    .line 416
    sget-object v0, Lrx/plugins/RxJavaHooks;->onScheduleAction:Lrx/functions/Func1;

    .line 417
    .local v0, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/functions/Action0;>;"
    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/functions/Action0;

    return-object v1

    .line 420
    :cond_0
    return-object p0
.end method

.method static signalUncaught(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 323
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 324
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 325
    return-void
.end method
