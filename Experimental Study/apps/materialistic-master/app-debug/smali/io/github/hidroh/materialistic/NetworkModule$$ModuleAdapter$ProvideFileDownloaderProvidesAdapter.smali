.class public final Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "NetworkModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideFileDownloaderProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lio/github/hidroh/materialistic/data/FileDownloader;",
        ">;"
    }
.end annotation


# instance fields
.field private callFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lio/github/hidroh/materialistic/NetworkModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/NetworkModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/NetworkModule;

    .line 170
    const-string v0, "io.github.hidroh.materialistic.data.FileDownloader"

    const-string v1, "io.github.hidroh.materialistic.NetworkModule"

    const-string v2, "provideFileDownloader"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->module:Lio/github/hidroh/materialistic/NetworkModule;

    .line 172
    invoke-virtual {p0, v3}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 173
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 182
    const-string v0, "android.content.Context"

    const-class v1, Lio/github/hidroh/materialistic/NetworkModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->context:Ldagger/internal/Binding;

    .line 183
    const-string v0, "okhttp3.Call$Factory"

    const-class v1, Lio/github/hidroh/materialistic/NetworkModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->callFactory:Ldagger/internal/Binding;

    .line 184
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/data/FileDownloader;
    .locals 3

    .line 203
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->module:Lio/github/hidroh/materialistic/NetworkModule;

    iget-object v1, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->callFactory:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call$Factory;

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/NetworkModule;->provideFileDownloader(Landroid/content/Context;Lokhttp3/Call$Factory;)Lio/github/hidroh/materialistic/data/FileDownloader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->get()Lio/github/hidroh/materialistic/data/FileDownloader;

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

    .line 193
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;->callFactory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method
