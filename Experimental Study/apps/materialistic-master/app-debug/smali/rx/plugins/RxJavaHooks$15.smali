.class final Lrx/plugins/RxJavaHooks$15;
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
        "Lrx/Single$OnSubscribe;",
        "Lrx/Single$OnSubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 212
    move-object v0, p1

    check-cast v0, Lrx/Single$OnSubscribe;

    invoke-virtual {p0, v0}, Lrx/plugins/RxJavaHooks$15;->call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    return-object v0
.end method

.method public call(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;
    .locals 1
    .param p1, "f"    # Lrx/Single$OnSubscribe;

    .line 215
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onCreate(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    return-object p1
.end method
