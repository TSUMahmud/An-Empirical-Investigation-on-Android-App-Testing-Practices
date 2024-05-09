.class public final Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ActivityModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideContextProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lio/github/hidroh/materialistic/ActivityModule;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/ActivityModule;)V
    .locals 4
    .param p1, "module"    # Lio/github/hidroh/materialistic/ActivityModule;

    .line 53
    const-string v0, "android.content.Context"

    const-string v1, "io.github.hidroh.materialistic.ActivityModule"

    const-string v2, "provideContext"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;->module:Lio/github/hidroh/materialistic/ActivityModule;

    .line 55
    invoke-virtual {p0, v3}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;->module:Lio/github/hidroh/materialistic/ActivityModule;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/ActivityModule;->provideContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
