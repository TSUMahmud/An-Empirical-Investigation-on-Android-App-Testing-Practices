.class final Lrx/plugins/RxJavaHooks$16;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/plugins/RxJavaHooks;->initCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Completable$OnSubscribe;",
        "Lrx/Completable$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 219
    move-object v0, p1

    check-cast v0, Lrx/Completable$OnSubscribe;

    invoke-virtual {p0, v0}, Lrx/plugins/RxJavaHooks$16;->call(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    return-object v0
.end method

.method public call(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .locals 1
    .param p1, "f"    # Lrx/Completable$OnSubscribe;

    .line 222
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaCompletableExecutionHook;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    return-object p1
.end method
