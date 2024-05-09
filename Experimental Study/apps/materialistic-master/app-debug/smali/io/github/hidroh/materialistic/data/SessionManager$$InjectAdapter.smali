.class public final Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SessionManager$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/SessionManager;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/LocalCache;",
            ">;"
        }
    .end annotation
.end field

.field private ioScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    const-string v0, "io.github.hidroh.materialistic.data.SessionManager"

    const-string v1, "members/io.github.hidroh.materialistic.data.SessionManager"

    const-class v2, Lio/github/hidroh/materialistic/data/SessionManager;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 37
    const-string v0, "@javax.inject.Named(value=io)/rx.Scheduler"

    const-class v1, Lio/github/hidroh/materialistic/data/SessionManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->ioScheduler:Ldagger/internal/Binding;

    .line 38
    const-string v0, "io.github.hidroh.materialistic.data.LocalCache"

    const-class v1, Lio/github/hidroh/materialistic/data/SessionManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->cache:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/SessionManager;
    .locals 3

    .line 57
    new-instance v0, Lio/github/hidroh/materialistic/data/SessionManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->ioScheduler:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Scheduler;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->cache:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/hidroh/materialistic/data/LocalCache;

    invoke-direct {v0, v1, v2}, Lio/github/hidroh/materialistic/data/SessionManager;-><init>(Lrx/Scheduler;Lio/github/hidroh/materialistic/data/LocalCache;)V

    .line 58
    .local v0, "result":Lio/github/hidroh/materialistic/data/SessionManager;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/SessionManager;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 47
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->ioScheduler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager$$InjectAdapter;->cache:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
