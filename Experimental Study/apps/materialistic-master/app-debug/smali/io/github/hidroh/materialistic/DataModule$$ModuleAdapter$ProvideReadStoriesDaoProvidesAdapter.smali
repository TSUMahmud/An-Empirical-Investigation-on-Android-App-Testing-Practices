.class public final Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "DataModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideReadStoriesDaoProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;",
        ">;"
    }
.end annotation


# instance fields
.field private database:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lio/github/hidroh/materialistic/DataModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/DataModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/DataModule;

    .line 683
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$ReadStoriesDao"

    const-string v1, "io.github.hidroh.materialistic.DataModule"

    const-string v2, "provideReadStoriesDao"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 684
    iput-object p1, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    .line 685
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 686
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 695
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase"

    const-class v1, Lio/github/hidroh/materialistic/DataModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;->database:Ldagger/internal/Binding;

    .line 696
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;
    .locals 2

    .line 714
    iget-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    iget-object v1, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;->database:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/DataModule;->provideReadStoriesDao(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;->get()Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

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

    .line 705
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;->database:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 706
    return-void
.end method
