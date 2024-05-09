.class public final Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "ActivityModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideAccountManagerProvidesAdapter;,
        Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lio/github/hidroh/materialistic/ActivityModule;",
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
    .locals 5

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/io.github.hidroh.materialistic.data.ItemSyncService"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "members/io.github.hidroh.materialistic.appwidget.WidgetService"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "members/io.github.hidroh.materialistic.data.ItemSyncJobService"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 24
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 26
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lio/github/hidroh/materialistic/DataModule;

    aput-object v1, v0, v2

    sput-object v0, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 29
    const-class v1, Lio/github/hidroh/materialistic/ActivityModule;

    sget-object v2, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 30
    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lio/github/hidroh/materialistic/ActivityModule;)V
    .locals 2
    .param p1, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p2, "module"    # Lio/github/hidroh/materialistic/ActivityModule;

    .line 38
    const-string v0, "android.content.Context"

    new-instance v1, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideContextProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/ActivityModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 39
    const-string v0, "android.accounts.AccountManager"

    new-instance v1, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideAccountManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter$ProvideAccountManagerProvidesAdapter;-><init>(Lio/github/hidroh/materialistic/ActivityModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 40
    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lio/github/hidroh/materialistic/ActivityModule;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/ActivityModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lio/github/hidroh/materialistic/ActivityModule;)V

    return-void
.end method
