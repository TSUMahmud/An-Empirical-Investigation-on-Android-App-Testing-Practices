.class public final Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "LoginActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/LoginActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/accounts/AccountManager;",
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
            "Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 33
    const-string v0, "io.github.hidroh.materialistic.LoginActivity"

    const-string v1, "members/io.github.hidroh.materialistic.LoginActivity"

    const-class v2, Lio/github/hidroh/materialistic/LoginActivity;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 43
    const-string v0, "io.github.hidroh.materialistic.accounts.UserServices"

    const-class v1, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    .line 44
    const-string v0, "android.accounts.AccountManager"

    const-class v1, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->mAccountManager:Ldagger/internal/Binding;

    .line 45
    const-string v2, "members/io.github.hidroh.materialistic.AccountAuthenticatorActivity"

    const-class v3, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 46
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/LoginActivity;
    .locals 1

    .line 65
    new-instance v0, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/LoginActivity;-><init>()V

    .line 66
    .local v0, "result":Lio/github/hidroh/materialistic/LoginActivity;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/LoginActivity;)V

    .line 67
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->get()Lio/github/hidroh/materialistic/LoginActivity;

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

    .line 54
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->mAccountManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/LoginActivity;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/LoginActivity;

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/accounts/UserServices;

    iput-object v0, p1, Lio/github/hidroh/materialistic/LoginActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->mAccountManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/LoginActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 78
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/LoginActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/LoginActivity;)V

    return-void
.end method
