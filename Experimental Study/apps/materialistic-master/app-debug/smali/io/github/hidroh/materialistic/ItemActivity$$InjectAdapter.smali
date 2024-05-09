.class public final Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ItemActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/ItemActivity;",
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

.field private mCustomTabsDelegate:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/CustomTabsDelegate;",
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

.field private mItemManager:Ldagger/internal/Binding;
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

    .line 48
    const-string v0, "io.github.hidroh.materialistic.ItemActivity"

    const-string v1, "members/io.github.hidroh.materialistic.ItemActivity"

    const-class v2, Lio/github/hidroh/materialistic/ItemActivity;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 58
    const-string v0, "@javax.inject.Named(value=hn)/io.github.hidroh.materialistic.data.ItemManager"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    .line 59
    const-string v0, "io.github.hidroh.materialistic.data.FavoriteManager"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    .line 60
    const-string v0, "io.github.hidroh.materialistic.AlertDialogBuilder"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    .line 61
    const-string v0, "io.github.hidroh.materialistic.widget.PopupMenu"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    .line 62
    const-string v0, "io.github.hidroh.materialistic.accounts.UserServices"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    .line 63
    const-string v0, "io.github.hidroh.materialistic.data.SessionManager"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mSessionManager:Ldagger/internal/Binding;

    .line 64
    const-string v0, "io.github.hidroh.materialistic.CustomTabsDelegate"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    .line 65
    const-string v0, "io.github.hidroh.materialistic.KeyDelegate"

    const-class v1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    .line 66
    const-string v2, "members/io.github.hidroh.materialistic.InjectableActivity"

    const-class v3, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 67
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/ItemActivity;
    .locals 1

    .line 92
    new-instance v0, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/ItemActivity;-><init>()V

    .line 93
    .local v0, "result":Lio/github/hidroh/materialistic/ItemActivity;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/ItemActivity;)V

    .line 94
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->get()Lio/github/hidroh/materialistic/ItemActivity;

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

    .line 75
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mSessionManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/ItemActivity;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/ItemActivity;

    .line 103
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ItemManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 104
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/FavoriteManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 105
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/AlertDialogBuilder;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 106
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/PopupMenu;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    .line 107
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/accounts/UserServices;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    .line 108
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mSessionManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/SessionManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    .line 109
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mCustomTabsDelegate:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/CustomTabsDelegate;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mCustomTabsDelegate:Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 110
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->mKeyDelegate:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/KeyDelegate;

    iput-object v0, p1, Lio/github/hidroh/materialistic/ItemActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    .line 111
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/ItemActivity$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/ItemActivity;)V

    return-void
.end method
