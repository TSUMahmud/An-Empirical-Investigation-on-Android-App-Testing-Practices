.class public final Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideAlertDialogBuilderProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "UiModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideAlertDialogBuilderProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lio/github/hidroh/materialistic/AlertDialogBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lio/github/hidroh/materialistic/UiModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/UiModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/UiModule;

    .line 166
    const-string v0, "io.github.hidroh.materialistic.AlertDialogBuilder"

    const-string v1, "io.github.hidroh.materialistic.UiModule"

    const-string v2, "provideAlertDialogBuilder"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideAlertDialogBuilderProvidesAdapter;->module:Lio/github/hidroh/materialistic/UiModule;

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 169
    return-void
.end method


# virtual methods
.method public get()Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideAlertDialogBuilderProvidesAdapter;->module:Lio/github/hidroh/materialistic/UiModule;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/UiModule;->provideAlertDialogBuilder()Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideAlertDialogBuilderProvidesAdapter;->get()Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    return-object v0
.end method
