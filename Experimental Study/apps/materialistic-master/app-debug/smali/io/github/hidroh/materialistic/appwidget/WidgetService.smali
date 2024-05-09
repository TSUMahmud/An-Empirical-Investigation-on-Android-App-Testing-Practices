.class public Lio/github/hidroh/materialistic/appwidget/WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;
    }
.end annotation


# static fields
.field static final EXTRA_CUSTOM_QUERY:Ljava/lang/String; = "extra:customQuery"

.field static final EXTRA_LIGHT_THEME:Ljava/lang/String; = "extra:lightTheme"

.field static final EXTRA_SECTION:Ljava/lang/String; = "extra:section"


# instance fields
.field mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field mSearchManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "algolia"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroid/widget/RemoteViewsService;->onCreate()V

    .line 56
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    .line 57
    invoke-interface {v0}, Lio/github/hidroh/materialistic/Injectable;->getApplicationGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lio/github/hidroh/materialistic/ActivityModule;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/ActivityModule;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 58
    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 64
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "extra:customQuery"

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService;->mSearchManager:Lio/github/hidroh/materialistic/data/ItemManager;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    :goto_0
    const-string v4, "extra:section"

    .line 66
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "extra:lightTheme"

    .line 67
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/ItemManager;Ljava/lang/String;Z)V

    .line 64
    return-object v0
.end method
