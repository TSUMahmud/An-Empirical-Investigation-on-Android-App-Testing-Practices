.class public final Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "DataModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideMainThreadSchedulerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lrx/Scheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lio/github/hidroh/materialistic/DataModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/DataModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/DataModule;

    .line 473
    const-string v0, "@javax.inject.Named(value=main)/rx.Scheduler"

    const-string v1, "io.github.hidroh.materialistic.DataModule"

    const-string v2, "provideMainThreadScheduler"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 474
    iput-object p1, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    .line 475
    invoke-virtual {p0, v3}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 476
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 469
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->get()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public get()Lrx/Scheduler;
    .locals 1

    .line 484
    iget-object v0, p0, Lio/github/hidroh/materialistic/DataModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->module:Lio/github/hidroh/materialistic/DataModule;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/DataModule;->provideMainThreadScheduler()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method
