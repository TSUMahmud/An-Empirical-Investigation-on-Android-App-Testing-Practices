.class final Lrx/android/schedulers/LooperScheduler$ScheduledAction;
.super Ljava/lang/Object;
.source "LooperScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/schedulers/LooperScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;

.field private final handler:Landroid/os/Handler;

.field private volatile unsubscribed:Z


# direct methods
.method constructor <init>(Lrx/functions/Action0;Landroid/os/Handler;)V
    .locals 0
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/android/schedulers/LooperScheduler$ScheduledAction;->action:Lrx/functions/Action0;

    .line 102
    iput-object p2, p0, Lrx/android/schedulers/LooperScheduler$ScheduledAction;->handler:Landroid/os/Handler;

    .line 103
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lrx/android/schedulers/LooperScheduler$ScheduledAction;->unsubscribed:Z

    return v0
.end method

.method public run()V
    .locals 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lrx/android/schedulers/LooperScheduler$ScheduledAction;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .local v1, "ie":Ljava/lang/IllegalStateException;
    :goto_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 118
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    .end local v2    # "thread":Ljava/lang/Thread;
    :goto_1
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/android/schedulers/LooperScheduler$ScheduledAction;->unsubscribed:Z

    .line 124
    iget-object v0, p0, Lrx/android/schedulers/LooperScheduler$ScheduledAction;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method
