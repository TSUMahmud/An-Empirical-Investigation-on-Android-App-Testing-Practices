.class public final Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "HackerNewsClient$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/HackerNewsClient;",
        ">;"
    }
.end annotation


# instance fields
.field private field_mIoScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private field_mMainThreadScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private parameter_factory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/RestServiceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private parameter_favoriteManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/FavoriteManager;",
            ">;"
        }
    .end annotation
.end field

.field private parameter_sessionManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/SessionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    const-string v0, "io.github.hidroh.materialistic.data.HackerNewsClient"

    const-string v1, "members/io.github.hidroh.materialistic.data.HackerNewsClient"

    const-class v2, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 46
    const-string v0, "io.github.hidroh.materialistic.data.RestServiceFactory"

    const-class v1, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_factory:Ldagger/internal/Binding;

    .line 47
    const-string v0, "io.github.hidroh.materialistic.data.SessionManager"

    const-class v1, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_sessionManager:Ldagger/internal/Binding;

    .line 48
    const-string v0, "io.github.hidroh.materialistic.data.FavoriteManager"

    const-class v1, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_favoriteManager:Ldagger/internal/Binding;

    .line 49
    const-string v0, "@javax.inject.Named(value=io)/rx.Scheduler"

    const-class v1, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->field_mIoScheduler:Ldagger/internal/Binding;

    .line 50
    const-string v0, "@javax.inject.Named(value=main)/rx.Scheduler"

    const-class v1, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->field_mMainThreadScheduler:Ldagger/internal/Binding;

    .line 51
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/HackerNewsClient;
    .locals 4

    .line 72
    new-instance v0, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_factory:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/RestServiceFactory;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_sessionManager:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/hidroh/materialistic/data/SessionManager;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_favoriteManager:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-direct {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/HackerNewsClient;-><init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/SessionManager;Lio/github/hidroh/materialistic/data/FavoriteManager;)V

    .line 73
    .local v0, "result":Lio/github/hidroh/materialistic/data/HackerNewsClient;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/HackerNewsClient;)V

    .line 74
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/HackerNewsClient;

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

    .line 59
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_factory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_sessionManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->parameter_favoriteManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->field_mIoScheduler:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->field_mMainThreadScheduler:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/data/HackerNewsClient;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/data/HackerNewsClient;

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->field_mIoScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    iput-object v0, p1, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mIoScheduler:Lrx/Scheduler;

    .line 84
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->field_mMainThreadScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    iput-object v0, p1, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mMainThreadScheduler:Lrx/Scheduler;

    .line 85
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/data/HackerNewsClient;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/HackerNewsClient;)V

    return-void
.end method
