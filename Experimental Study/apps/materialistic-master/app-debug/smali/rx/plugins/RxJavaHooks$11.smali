.class final Lrx/plugins/RxJavaHooks$11;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1<",
        "Lrx/Observable$Operator;",
        "Lrx/Observable$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 179
    move-object v0, p1

    check-cast v0, Lrx/Observable$Operator;

    invoke-virtual {p0, v0}, Lrx/plugins/RxJavaHooks$11;->call(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    return-object v0
.end method

.method public call(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .locals 1
    .param p1, "t"    # Lrx/Observable$Operator;

    .line 182
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaSingleExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    return-object p1
.end method
