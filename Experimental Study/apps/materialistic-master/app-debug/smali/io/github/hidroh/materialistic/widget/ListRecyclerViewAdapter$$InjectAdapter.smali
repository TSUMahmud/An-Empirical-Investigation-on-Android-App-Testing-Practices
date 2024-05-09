.class public final Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ListRecyclerViewAdapter$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;",
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

.field private mFavoriteManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/FavoriteManager;",
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
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    const-string v0, "members/io.github.hidroh.materialistic.widget.ListRecyclerViewAdapter"

    const-class v1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

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
    const-string v0, "io.github.hidroh.materialistic.widget.PopupMenu"

    const-class v1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    .line 47
    const-string v0, "io.github.hidroh.materialistic.AlertDialogBuilder"

    const-class v1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    .line 48
    const-string v0, "io.github.hidroh.materialistic.accounts.UserServices"

    const-class v1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    .line 49
    const-string v0, "io.github.hidroh.materialistic.data.FavoriteManager"

    const-class v1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    .line 50
    const-string v2, "members/androidx.recyclerview.widget.RecyclerView$Adapter"

    const-class v3, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 51
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

    .line 59
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    .line 72
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/PopupMenu;

    iput-object v0, p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    .line 73
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mAlertDialogBuilder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/AlertDialogBuilder;

    iput-object v0, p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mUserServices:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/accounts/UserServices;

    iput-object v0, p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->mFavoriteManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/FavoriteManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;)V

    return-void
.end method
