.class public final Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "WebFragment$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/WebFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mFileDownloader:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/FileDownloader;",
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

.field private mPopupMenu:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/widget/PopupMenu;",
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

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/LazyLoadFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 39
    const-string v0, "io.github.hidroh.materialistic.WebFragment"

    const-string v1, "members/io.github.hidroh.materialistic.WebFragment"

    const-class v2, Lio/github/hidroh/materialistic/WebFragment;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 49
    const-string v0, "@javax.inject.Named(value=hn)/io.github.hidroh.materialistic.data.ItemManager"

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    .line 50
    const-string v0, "io.github.hidroh.materialistic.widget.PopupMenu"

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    .line 51
    const-string v0, "io.github.hidroh.materialistic.data.ReadabilityClient"

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mReadabilityClient:Ldagger/internal/Binding;

    .line 52
    const-string v0, "io.github.hidroh.materialistic.data.FileDownloader"

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mFileDownloader:Ldagger/internal/Binding;

    .line 53
    const-string v2, "members/io.github.hidroh.materialistic.LazyLoadFragment"

    const-class v3, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 54
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/WebFragment;
    .locals 1

    .line 75
    new-instance v0, Lio/github/hidroh/materialistic/WebFragment;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/WebFragment;-><init>()V

    .line 76
    .local v0, "result":Lio/github/hidroh/materialistic/WebFragment;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/WebFragment;)V

    .line 77
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->get()Lio/github/hidroh/materialistic/WebFragment;

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

    .line 62
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mReadabilityClient:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mFileDownloader:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 86
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ItemManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/WebFragment;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mPopupMenu:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/PopupMenu;

    iput-object v0, p1, Lio/github/hidroh/materialistic/WebFragment;->mPopupMenu:Lio/github/hidroh/materialistic/widget/PopupMenu;

    .line 88
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mReadabilityClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ReadabilityClient;

    iput-object v0, p1, Lio/github/hidroh/materialistic/WebFragment;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    .line 89
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->mFileDownloader:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/FileDownloader;

    iput-object v0, p1, Lio/github/hidroh/materialistic/WebFragment;->mFileDownloader:Lio/github/hidroh/materialistic/data/FileDownloader;

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/WebFragment$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/WebFragment;)V

    return-void
.end method
