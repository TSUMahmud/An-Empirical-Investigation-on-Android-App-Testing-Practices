.class public final Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "DataModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideFeedbackClientProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lio/github/hidroh/materialistic/data/FeedbackClient;",
        ">;"
    }
.end annotation


# instance fields
.field private client:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lio/github/hidroh/materialistic/DataModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/DataModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/DataModule;

    .line 295
    const-string v0, "io.github.hidroh.materialistic.data.FeedbackClient"

    const-string v1, "io.github.hidroh.materialistic.DataModule"

    const-string v2, "provideFeedbackClient"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    .line 297
    invoke-virtual {p0, v3}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 298
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 307
    const-string v0, "io.github.hidroh.materialistic.data.FeedbackClient$Impl"

    const-class v1, Lio/github/hidroh/materialistic/DataModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;->client:Ldagger/internal/Binding;

    .line 308
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/FeedbackClient;
    .locals 2

    .line 326
    iget-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    iget-object v1, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;->client:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/DataModule;->provideFeedbackClient(Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;)Lio/github/hidroh/materialistic/data/FeedbackClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;->get()Lio/github/hidroh/materialistic/data/FeedbackClient;

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

    .line 317
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideFeedbackClientProvidesAdapter;->client:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method
