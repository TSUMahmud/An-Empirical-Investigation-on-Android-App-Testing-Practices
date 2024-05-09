.class public final Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "FavoriteRecyclerViewAdapter$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mSyncScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/SyncScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    const-string v0, "members/io.github.hidroh.materialistic.widget.FavoriteRecyclerViewAdapter"

    const-class v1, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 40
    const-string v0, "io.github.hidroh.materialistic.data.SyncScheduler"

    const-class v1, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->mSyncScheduler:Ldagger/internal/Binding;

    .line 41
    const-string v2, "members/io.github.hidroh.materialistic.widget.ListRecyclerViewAdapter"

    const-class v3, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 42
    return-void
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
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->mSyncScheduler:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->mSyncScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/SyncScheduler;

    iput-object v0, p1, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSyncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;)V

    return-void
.end method
