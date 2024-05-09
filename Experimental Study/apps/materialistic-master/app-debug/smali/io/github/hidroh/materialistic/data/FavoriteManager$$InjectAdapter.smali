.class public final Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "FavoriteManager$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/FavoriteManager;",
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

.field private dao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;",
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

    .line 29
    const-string v0, "io.github.hidroh.materialistic.data.FavoriteManager"

    const-string v1, "members/io.github.hidroh.materialistic.data.FavoriteManager"

    const-class v2, Lio/github/hidroh/materialistic/data/FavoriteManager;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 39
    const-string v0, "io.github.hidroh.materialistic.data.LocalCache"

    const-class v1, Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->cache:Ldagger/internal/Binding;

    .line 40
    const-string v0, "@javax.inject.Named(value=io)/rx.Scheduler"

    const-class v1, Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->ioScheduler:Ldagger/internal/Binding;

    .line 41
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$SavedStoriesDao"

    const-class v1, Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->dao:Ldagger/internal/Binding;

    .line 42
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/FavoriteManager;
    .locals 4

    .line 61
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->cache:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/LocalCache;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->ioScheduler:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Scheduler;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-direct {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/FavoriteManager;-><init>(Lio/github/hidroh/materialistic/data/LocalCache;Lrx/Scheduler;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;)V

    .line 62
    .local v0, "result":Lio/github/hidroh/materialistic/data/FavoriteManager;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/FavoriteManager;

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

    .line 50
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->cache:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->ioScheduler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
