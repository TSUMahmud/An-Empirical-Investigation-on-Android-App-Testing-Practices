.class public final Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "NetworkModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;,
        Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideCallFactoryProvidesAdapter;,
        Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideRestServiceFactoryProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lio/github/hidroh/materialistic/NetworkModule;",
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
    .locals 2

    .line 24
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 26
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 28
    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 31
    const-class v1, Lio/github/hidroh/materialistic/NetworkModule;

    sget-object v2, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 32
    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lio/github/hidroh/materialistic/NetworkModule;)V
    .locals 2
    .param p1, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p2, "module"    # Lio/github/hidroh/materialistic/NetworkModule;

    .line 45
    const-string v0, "io.github.hidroh.materialistic.data.RestServiceFactory"

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideRestServiceFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideRestServiceFactoryProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/NetworkModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 46
    const-string v0, "okhttp3.Call$Factory"

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideCallFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideCallFactoryProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/NetworkModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 47
    const-string v0, "io.github.hidroh.materialistic.data.FileDownloader"

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter$ProvideFileDownloaderProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/NetworkModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 48
    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lio/github/hidroh/materialistic/NetworkModule;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lio/github/hidroh/materialistic/NetworkModule;)V

    return-void
.end method

.method public newModule()Lio/github/hidroh/materialistic/NetworkModule;
    .locals 1

    .line 36
    new-instance v0, Lio/github/hidroh/materialistic/NetworkModule;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/NetworkModule;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newModule()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/NetworkModule$$ModuleAdapter;->newModule()Lio/github/hidroh/materialistic/NetworkModule;

    move-result-object v0

    return-object v0
.end method
