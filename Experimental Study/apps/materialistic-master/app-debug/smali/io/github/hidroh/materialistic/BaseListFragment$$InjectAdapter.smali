.class public final Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseListFragment$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/BaseListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mCustomTabsDelegate:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/CustomTabsDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    const-string v0, "members/io.github.hidroh.materialistic.BaseListFragment"

    const-class v1, Lio/github/hidroh/materialistic/BaseListFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 36
    const-string v0, "io.github.hidroh.materialistic.CustomTabsDelegate"

    const-class v1, Lio/github/hidroh/materialistic/BaseListFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    .line 37
    const-string v2, "members/io.github.hidroh.materialistic.BaseFragment"

    const-class v3, Lio/github/hidroh/materialistic/BaseListFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 38
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

    .line 46
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/BaseListFragment;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/BaseListFragment;

    .line 56
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/CustomTabsDelegate;

    iput-object v0, p1, Lio/github/hidroh/materialistic/BaseListFragment;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 57
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lio/github/hidroh/materialistic/BaseListFragment;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/BaseListFragment$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/BaseListFragment;)V

    return-void
.end method
