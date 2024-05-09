.class public final Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "WidgetService$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lio/github/hidroh/materialistic/appwidget/WidgetService;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/ItemManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lio/github/hidroh/materialistic/data/ItemManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 30
    const-string v0, "io.github.hidroh.materialistic.appwidget.WidgetService"

    const-string v1, "members/io.github.hidroh.materialistic.appwidget.WidgetService"

    const-class v2, Lio/github/hidroh/materialistic/appwidget/WidgetService;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 40
    const-string v0, "@javax.inject.Named(value=hn)/io.github.hidroh.materialistic.data.ItemManager"

    const-class v1, Lio/github/hidroh/materialistic/appwidget/WidgetService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    .line 41
    const-string v0, "@javax.inject.Named(value=algolia)/io.github.hidroh.materialistic.data.ItemManager"

    const-class v1, Lio/github/hidroh/materialistic/appwidget/WidgetService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->mSearchManager:Ldagger/internal/Binding;

    .line 42
    return-void
.end method

.method public get()Lio/github/hidroh/materialistic/appwidget/WidgetService;
    .locals 1

    .line 60
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/WidgetService;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/appwidget/WidgetService;-><init>()V

    .line 61
    .local v0, "result":Lio/github/hidroh/materialistic/appwidget/WidgetService;
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/appwidget/WidgetService;)V

    .line 62
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->get()Lio/github/hidroh/materialistic/appwidget/WidgetService;

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

    .line 50
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->mSearchManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public injectMembers(Lio/github/hidroh/materialistic/appwidget/WidgetService;)V
    .locals 1
    .param p1, "object"    # Lio/github/hidroh/materialistic/appwidget/WidgetService;

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->mItemManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ItemManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/appwidget/WidgetService;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 72
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->mSearchManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ItemManager;

    iput-object v0, p1, Lio/github/hidroh/materialistic/appwidget/WidgetService;->mSearchManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 73
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lio/github/hidroh/materialistic/appwidget/WidgetService;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetService$$InjectAdapter;->injectMembers(Lio/github/hidroh/materialistic/appwidget/WidgetService;)V

    return-void
.end method
