.class public final Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "DataModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideOpenHelperProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadableDaoProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSavedStoriesDaoProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideDatabaseProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideLocalCacheProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideIoSchedulerProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideUserServicesProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadabilityClientProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideUserManagerProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideAlgoliaPopularClientProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideAlgoliaClientProvidesAdapter;,
        Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideHackerNewsClientProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lio/github/hidroh/materialistic/DataModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 38
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lio/github/hidroh/materialistic/NetworkModule;

    aput-object v2, v1, v0

    sput-object v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 43
    const-class v1, Lio/github/hidroh/materialistic/DataModule;

    sget-object v2, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 44
    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lio/github/hidroh/materialistic/DataModule;)V
    .locals 2
    .param p1, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p2, "module"    # Lio/github/hidroh/materialistic/DataModule;

    .line 57
    const-string v0, "@javax.inject.Named(value=hn)/io.github.hidroh.materialistic.data.ItemManager"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideHackerNewsClientProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideHackerNewsClientProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 58
    const-string v0, "@javax.inject.Named(value=algolia)/io.github.hidroh.materialistic.data.ItemManager"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideAlgoliaClientProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideAlgoliaClientProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 59
    const-string v0, "@javax.inject.Named(value=popular)/io.github.hidroh.materialistic.data.ItemManager"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideAlgoliaPopularClientProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideAlgoliaPopularClientProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 60
    const-string v0, "io.github.hidroh.materialistic.data.UserManager"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideUserManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideUserManagerProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 61
    const-string v0, "io.github.hidroh.materialistic.data.FeedbackClient"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 62
    const-string v0, "io.github.hidroh.materialistic.data.ReadabilityClient"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadabilityClientProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadabilityClientProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 63
    const-string v0, "io.github.hidroh.materialistic.accounts.UserServices"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideUserServicesProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideUserServicesProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 64
    const-string v0, "@javax.inject.Named(value=io)/rx.Scheduler"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideIoSchedulerProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideIoSchedulerProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 65
    const-string v0, "@javax.inject.Named(value=main)/rx.Scheduler"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 66
    const-string v0, "io.github.hidroh.materialistic.data.SyncScheduler"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 67
    const-string v0, "io.github.hidroh.materialistic.data.LocalCache"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideLocalCacheProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideLocalCacheProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 68
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideDatabaseProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideDatabaseProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 69
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$SavedStoriesDao"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSavedStoriesDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSavedStoriesDaoProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 70
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$ReadStoriesDao"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadStoriesDaoProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 71
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$ReadableDao"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadableDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideReadableDaoProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 72
    const-string v0, "androidx.sqlite.db.SupportSQLiteOpenHelper"

    new-instance v1, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideOpenHelperProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideOpenHelperProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/DataModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 73
    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lio/github/hidroh/materialistic/DataModule;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lio/github/hidroh/materialistic/DataModule;)V

    return-void
.end method

.method public newModule()Lio/github/hidroh/materialistic/DataModule;
    .locals 1

    .line 48
    new-instance v0, Lio/github/hidroh/materialistic/DataModule;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/DataModule;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newModule()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;->newModule()Lio/github/hidroh/materialistic/DataModule;

    move-result-object v0

    return-object v0
.end method
