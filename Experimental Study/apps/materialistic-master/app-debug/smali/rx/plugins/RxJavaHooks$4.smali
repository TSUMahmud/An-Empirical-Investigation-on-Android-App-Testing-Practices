.class final Lrx/plugins/RxJavaHooks$4;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "Lrx/Single;",
        "Lrx/Single$OnSubscribe;",
        "Lrx/Single$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 122
    move-object v0, p1

    check-cast v0, Lrx/Single;

    move-object v1, p2

    check-cast v1, Lrx/Single$OnSubscribe;

    invoke-virtual {p0, v0, v1}, Lrx/plugins/RxJavaHooks$4;->call(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .locals 3
    .param p1, "t1"    # Lrx/Single;
    .param p2, "t2"    # Lrx/Single$OnSubscribe;

    .line 126
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    .line 128
    .local v0, "hook":Lrx/plugins/RxJavaSingleExecutionHook;
    invoke-static {}, Lrx/plugins/RxJavaSingleExecutionHookDefault;->getInstance()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 129
    return-object p2

    .line 132
    :cond_0
    new-instance v1, Lrx/internal/operators/SingleFromObservable;

    new-instance v2, Lrx/internal/operators/SingleToObservable;

    invoke-direct {v2, p2}, Lrx/internal/operators/SingleToObservable;-><init>(Lrx/Single$OnSubscribe;)V

    invoke-virtual {v0, p1, v2}, Lrx/plugins/RxJavaSingleExecutionHook;->onSubscribeStart(Lrx/Single;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    invoke-direct {v1, v2}, Lrx/internal/operators/SingleFromObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v1
.end method
