.class public final Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseListActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/BaseListActivity;",
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

.field private mCustomTabsDelegate:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/CustomTabsDelegate;",
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

.field private mPopupMenu:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/widget/PopupMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/DrawerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    const-string v0, "members/io.github.hidroh.materialistic.BaseListActivity"

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 46
    const-string v0, "io.github.hidroh.materialistic.ActionViewResolver"

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mActionViewResolver:Ldagger/internal/Binding;

    .line 47
    const-string v0, "io.github.hidroh.materialistic.widget.PopupMenu"

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    .line 48
    const-string v0, "io.github.hidroh.materialistic.data.SessionManager"

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mSessionManager:Ldagger/internal/Binding;

    .line 49
    const-string v0, "io.github.hidroh.materialistic.CustomTabsDelegate"

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    .line 50
    const-string v0, "io.github.hidroh.materialistic.KeyDelegate"

    const-class v1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    .line 51
    const-string v2, "members/io.github.hidroh.materialistic.DrawerActivity"

    const-class v3, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 52
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

    .line 60
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mActionViewResolver:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mSessionManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/BaseListActivity;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/BaseListActivity;

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mActionViewResolver:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ActionViewResolver;

    iput-object v0, p1, Lio/github/hidroh/materialistic/BaseListActivity;->mActionViewResolver:Lio/github/hidroh/materialistic/ActionViewResolver;

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/PopupMenu;

    iput-object v0, p1, Lio/github/hidroh/materialistic/BaseListActivity;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mSessionManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/SessionManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/BaseListActivity;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/CustomTabsDelegate;

    iput-object v0, p1, Lio/github/hidroh/materialistic/BaseListActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 78
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/KeyDelegate;

    iput-object v0, p1, Lio/github/hidroh/materialistic/BaseListActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/BaseListActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/BaseListActivity;)V

    return-void
.end method
