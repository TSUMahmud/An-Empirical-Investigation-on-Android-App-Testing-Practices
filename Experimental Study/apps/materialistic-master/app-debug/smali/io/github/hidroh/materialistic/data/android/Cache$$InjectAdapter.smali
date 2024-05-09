.class public final Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "Cache$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/data/android/Cache;",
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

.field private mainScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private readStoriesDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;",
            ">;"
        }
    .end annotation
.end field

.field private readableDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;",
            ">;"
        }
    .end annotation
.end field

.field private savedStoriesDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    const-string v0, "io.github.hidroh.materialistic.data.android.Cache"

    const-string v1, "members/io.github.hidroh.materialistic.data.android.Cache"

    const-class v2, Lio/github/hidroh/materialistic/data/android/Cache;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 44
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase"

    const-class v1, Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->database:Ldagger/internal/Binding;

    .line 45
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$SavedStoriesDao"

    const-class v1, Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->savedStoriesDao:Ldagger/internal/Binding;

    .line 46
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$ReadStoriesDao"

    const-class v1, Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->readStoriesDao:Ldagger/internal/Binding;

    .line 47
    const-string v0, "io.github.hidroh.materialistic.data.MaterialisticDatabase$ReadableDao"

    const-class v1, Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->readableDao:Ldagger/internal/Binding;

    .line 48
    const-string v0, "@javax.inject.Named(value=main)/rx.Scheduler"

    const-class v1, Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->mainScheduler:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/android/Cache;
    .locals 7

    .line 70
    new-instance v6, Lio/github/hidroh/materialistic/data/android/Cache;

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->database:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->savedStoriesDao:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->readStoriesDao:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->readableDao:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->mainScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lrx/Scheduler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/github/hidroh/materialistic/data/android/Cache;-><init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;Lrx/Scheduler;)V

    .line 71
    .local v0, "result":Lio/github/hidroh/materialistic/data/android/Cache;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->get()Lio/github/hidroh/materialistic/data/android/Cache;

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
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->database:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->savedStoriesDao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->readStoriesDao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->readableDao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$$InjectAdapter;->mainScheduler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
