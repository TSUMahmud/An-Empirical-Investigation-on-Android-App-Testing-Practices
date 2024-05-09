.class public final Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "DataModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideSyncSchedulerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lio/github/hidroh/materialistic/data/SyncScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lio/github/hidroh/materialistic/DataModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/DataModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/DataModule;

    .line 499
    const-string v0, "io.github.hidroh.materialistic.data.SyncScheduler"

    const-string v1, "io.github.hidroh.materialistic.DataModule"

    const-string v2, "provideSyncScheduler"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 500
    iput-object p1, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    .line 501
    invoke-virtual {p0, v3}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 502
    return-void
.end method


# virtual methods
.method public get()Lio/github/hidroh/materialistic/data/SyncScheduler;
    .locals 1

    .line 510
    iget-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/DataModule;->provideSyncScheduler()Lio/github/hidroh/materialistic/data/SyncScheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideSyncSchedulerProvidesAdapter;->get()Lio/github/hidroh/materialistic/data/SyncScheduler;

    move-result-object v0

    return-object v0
.end method
