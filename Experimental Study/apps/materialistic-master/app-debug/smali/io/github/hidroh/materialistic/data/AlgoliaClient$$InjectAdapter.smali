.class public final Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "AlgoliaClient$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/AlgoliaClient;",
        ">;"
    }
.end annotation


# instance fields
.field private field_mHackerNewsClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/ItemManager;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    const-string v0, "io.github.hidroh.materialistic.data.AlgoliaClient"

    const-string v1, "members/io.github.hidroh.materialistic.data.AlgoliaClient"

    const-class v2, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 42
    const-string v0, "io.github.hidroh.materialistic.data.RestServiceFactory"

    const-class v1, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->parameter_factory:Ldagger/internal/Binding;

    .line 43
    const-string v0, "@javax.inject.Named(value=hn)/io.github.hidroh.materialistic.data.ItemManager"

    const-class v1, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->field_mHackerNewsClient:Ldagger/internal/Binding;

    .line 44
    const-string v0, "@javax.inject.Named(value=main)/rx.Scheduler"

    const-class v1, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->field_mMainThreadScheduler:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/AlgoliaClient;
    .locals 2

    .line 64
    new-instance v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->parameter_factory:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/RestServiceFactory;

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;-><init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;)V

    .line 65
    .local v0, "result":Lio/github/hidroh/materialistic/data/AlgoliaClient;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/AlgoliaClient;)V

    .line 66
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/AlgoliaClient;

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

    .line 53
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->parameter_factory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->field_mHackerNewsClient:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->field_mMainThreadScheduler:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/data/AlgoliaClient;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/data/AlgoliaClient;

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->field_mHackerNewsClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ItemManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mHackerNewsClient:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->field_mMainThreadScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    iput-object v0, p1, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mMainThreadScheduler:Lrx/Scheduler;

    .line 77
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/data/AlgoliaClient;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/AlgoliaClient;)V

    return-void
.end method
