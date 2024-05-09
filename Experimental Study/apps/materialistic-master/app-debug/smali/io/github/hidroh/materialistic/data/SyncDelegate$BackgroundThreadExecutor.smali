.class Lio/github/hidroh/materialistic/data/SyncDelegate$BackgroundThreadExecutor;
.super Ljava/lang/Object;
.source "SyncDelegate.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/SyncDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundThreadExecutor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 405
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 406
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 407
    return-void
.end method
