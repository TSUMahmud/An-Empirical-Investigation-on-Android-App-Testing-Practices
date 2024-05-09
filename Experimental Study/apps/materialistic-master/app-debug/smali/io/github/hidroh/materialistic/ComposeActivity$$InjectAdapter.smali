.class public final Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ComposeActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/ComposeActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlertDialogBuilder:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/AlertDialogBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mUserServices:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/accounts/UserServices;",
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

    .line 32
    const-string v0, "io.github.hidroh.materialistic.ComposeActivity"

    const-string v1, "members/io.github.hidroh.materialistic.ComposeActivity"

    const-class v2, Lio/github/hidroh/materialistic/ComposeActivity;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 42
    const-string v0, "io.github.hidroh.materialistic.accounts.UserServices"

    const-class v1, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    .line 43
    const-string v0, "io.github.hidroh.materialistic.AlertDialogBuilder"

    const-class v1, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    .line 44
    const-string v2, "members/io.github.hidroh.materialistic.InjectableActivity"

    const-class v3, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/ComposeActivity;
    .locals 1

    .line 64
    new-instance v0, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/ComposeActivity;-><init>()V

    .line 65
    .local v0, "result":Lio/github/hidroh/materialistic/ComposeActivity;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/ComposeActivity;)V

    .line 66
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->get()Lio/github/hidroh/materialistic/ComposeActivity;

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
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/ComposeActivity;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/ComposeActivity;

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/accounts/UserServices;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ComposeActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/AlertDialogBuilder;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ComposeActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/ComposeActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/ComposeActivity;)V

    return-void
.end method
