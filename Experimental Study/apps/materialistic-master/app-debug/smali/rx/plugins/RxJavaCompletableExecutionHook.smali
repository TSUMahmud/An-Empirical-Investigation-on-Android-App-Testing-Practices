.class public abstract Lrx/plugins/RxJavaCompletableExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaCompletableExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .locals 0
    .param p1, "f"    # Lrx/Completable$OnSubscribe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    return-object p1
.end method

.method public onLift(Lrx/Completable$Operator;)Lrx/Completable$Operator;
    .locals 0
    .param p1, "lift"    # Lrx/Completable$Operator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    return-object p1
.end method

.method public onSubscribeStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .locals 0
    .param p1, "completableInstance"    # Lrx/Completable;
    .param p2, "onSubscribe"    # Lrx/Completable$OnSubscribe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    return-object p2
.end method
