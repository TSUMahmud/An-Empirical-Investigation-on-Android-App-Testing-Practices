.class public final Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ItemSyncJobService$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/ItemSyncJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private mFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/RestServiceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mReadabilityClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/ReadabilityClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    const-string v0, "io.github.hidroh.materialistic.data.ItemSyncJobService"

    const-string v1, "members/io.github.hidroh.materialistic.data.ItemSyncJobService"

    const-class v2, Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 39
    const-string v0, "io.github.hidroh.materialistic.data.RestServiceFactory"

    const-class v1, Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->mFactory:Ldagger/internal/Binding;

    .line 40
    const-string v0, "io.github.hidroh.materialistic.data.ReadabilityClient"

    const-class v1, Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->mReadabilityClient:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/ItemSyncJobService;
    .locals 1

    .line 59
    new-instance v0, Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/ItemSyncJobService;-><init>()V

    .line 60
    .local v0, "result":Lio/github/hidroh/materialistic/data/ItemSyncJobService;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/ItemSyncJobService;)V

    .line 61
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/ItemSyncJobService;

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
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->mFactory:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->mReadabilityClient:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/data/ItemSyncJobService;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    .line 70
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->mFactory:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/RestServiceFactory;

    iput-object v0, p1, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mFactory:Lio/github/hidroh/materialistic/data/RestServiceFactory;

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->mReadabilityClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ReadabilityClient;

    iput-object v0, p1, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    .line 72
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/ItemSyncJobService$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/data/ItemSyncJobService;)V

    return-void
.end method
