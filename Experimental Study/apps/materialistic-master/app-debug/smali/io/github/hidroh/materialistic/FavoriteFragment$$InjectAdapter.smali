.class public final Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "FavoriteFragment$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/FavoriteFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionViewResolver:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/ActionViewResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialogBuilder:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/AlertDialogBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/FavoriteManager;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/BaseListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    const-string v0, "io.github.hidroh.materialistic.FavoriteFragment"

    const-string v1, "members/io.github.hidroh.materialistic.FavoriteFragment"

    const-class v2, Lio/github/hidroh/materialistic/FavoriteFragment;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 44
    const-string v0, "io.github.hidroh.materialistic.data.FavoriteManager"

    const-class v1, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    .line 45
    const-string v0, "io.github.hidroh.materialistic.ActionViewResolver"

    const-class v1, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mActionViewResolver:Ldagger/internal/Binding;

    .line 46
    const-string v0, "io.github.hidroh.materialistic.AlertDialogBuilder"

    const-class v1, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    .line 47
    const-string v2, "members/io.github.hidroh.materialistic.BaseListFragment"

    const-class v3, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 48
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/FavoriteFragment;
    .locals 1

    .line 68
    new-instance v0, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/FavoriteFragment;-><init>()V

    .line 69
    .local v0, "result":Lio/github/hidroh/materialistic/FavoriteFragment;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/FavoriteFragment;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->get()Lio/github/hidroh/materialistic/FavoriteFragment;

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

    .line 56
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mActionViewResolver:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/FavoriteFragment;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/FavoriteFragment;

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/FavoriteManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/FavoriteFragment;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 80
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mActionViewResolver:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ActionViewResolver;

    iput-object v0, p1, Lio/github/hidroh/materialistic/FavoriteFragment;->mActionViewResolver:Lio/github/hidroh/materialistic/ActionViewResolver;

    .line 81
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/AlertDialogBuilder;

    iput-object v0, p1, Lio/github/hidroh/materialistic/FavoriteFragment;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 82
    iget-object v0, p0, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/FavoriteFragment;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/FavoriteFragment$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/FavoriteFragment;)V

    return-void
.end method
