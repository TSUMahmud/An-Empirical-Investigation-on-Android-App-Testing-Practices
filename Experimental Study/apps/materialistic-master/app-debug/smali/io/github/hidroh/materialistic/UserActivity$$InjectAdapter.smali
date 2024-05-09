.class public final Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UserActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/UserActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemManger:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/ItemManager;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyDelegate:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/KeyDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/InjectableActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    const-string v0, "io.github.hidroh.materialistic.UserActivity"

    const-string v1, "members/io.github.hidroh.materialistic.UserActivity"

    const-class v2, Lio/github/hidroh/materialistic/UserActivity;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 45
    const-string v0, "io.github.hidroh.materialistic.data.UserManager"

    const-class v1, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mUserManager:Ldagger/internal/Binding;

    .line 46
    const-string v0, "@javax.inject.Named(value=hn)/io.github.hidroh.materialistic.data.ItemManager"

    const-class v1, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mItemManger:Ldagger/internal/Binding;

    .line 47
    const-string v0, "io.github.hidroh.materialistic.KeyDelegate"

    const-class v1, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    .line 48
    const-string v2, "members/io.github.hidroh.materialistic.InjectableActivity"

    const-class v3, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/UserActivity;
    .locals 1

    .line 69
    new-instance v0, Lio/github/hidroh/materialistic/UserActivity;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/UserActivity;-><init>()V

    .line 70
    .local v0, "result":Lio/github/hidroh/materialistic/UserActivity;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/UserActivity;)V

    .line 71
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->get()Lio/github/hidroh/materialistic/UserActivity;

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

    .line 57
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mUserManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mItemManger:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/UserActivity;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/UserActivity;

    .line 80
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mUserManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/UserManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/UserActivity;->mUserManager:Lio/github/hidroh/materialistic/data/UserManager;

    .line 81
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mItemManger:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ItemManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/UserActivity;->mItemManger:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 82
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/KeyDelegate;

    iput-object v0, p1, Lio/github/hidroh/materialistic/UserActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/UserActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/UserActivity;)V

    return-void
.end method
