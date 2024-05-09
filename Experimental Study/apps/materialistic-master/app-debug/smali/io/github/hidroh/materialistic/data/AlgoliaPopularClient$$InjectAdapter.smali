.class public final Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "AlgoliaPopularClient$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;",
        ">;"
    }
.end annotation


# instance fields
.field private factory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/RestServiceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/AlgoliaClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    const-string v0, "io.github.hidroh.materialistic.data.AlgoliaPopularClient"

    const-string v1, "members/io.github.hidroh.materialistic.data.AlgoliaPopularClient"

    const-class v2, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 39
    const-string v0, "io.github.hidroh.materialistic.data.RestServiceFactory"

    const-class v1, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->factory:Ldagger/internal/Binding;

    .line 40
    const-string v2, "members/io.github.hidroh.materialistic.data.AlgoliaClient"

    const-class v3, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;
    .locals 2

    .line 59
    new-instance v0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->factory:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/RestServiceFactory;

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;-><init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;)V

    .line 60
    .local v0, "result":Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;)V

    .line 61
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

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

    .line 49
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->factory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    .line 70
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;)V

    return-void
.end method
