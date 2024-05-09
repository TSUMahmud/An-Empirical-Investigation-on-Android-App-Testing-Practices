.class public final Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideCustomTabsDelegateProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "UiModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideCustomTabsDelegateProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lio/github/hidroh/materialistic/CustomTabsDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lio/github/hidroh/materialistic/UiModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/UiModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/UiModule;

    .line 88
    const-string v0, "io.github.hidroh.materialistic.CustomTabsDelegate"

    const-string v1, "io.github.hidroh.materialistic.UiModule"

    const-string v2, "provideCustomTabsDelegate"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideCustomTabsDelegateProvidesAdapter;->module:Lio/github/hidroh/materialistic/UiModule;

    .line 90
    invoke-virtual {p0, v3}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public get()Lio/github/hidroh/materialistic/CustomTabsDelegate;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideCustomTabsDelegateProvidesAdapter;->module:Lio/github/hidroh/materialistic/UiModule;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/UiModule;->provideCustomTabsDelegate()Lio/github/hidroh/materialistic/CustomTabsDelegate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/UiModule$$ModuleAdapter$ProvideCustomTabsDelegateProvidesAdapter;->get()Lio/github/hidroh/materialistic/CustomTabsDelegate;

    move-result-object v0

    return-object v0
.end method
