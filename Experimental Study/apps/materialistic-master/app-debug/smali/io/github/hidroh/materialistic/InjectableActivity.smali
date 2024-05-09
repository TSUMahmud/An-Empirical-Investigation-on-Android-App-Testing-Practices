.class public abstract Lio/github/hidroh/materialistic/InjectableActivity;
.super Lio/github/hidroh/materialistic/ThemedActivity;
.source "InjectableActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Injectable;


# instance fields
.field private mActivityGraph:Ldagger/ObjectGraph;

.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ThemedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationGraph()Ldagger/ObjectGraph;
    .locals 4

    .line 57
    iget-object v0, p0, Lio/github/hidroh/materialistic/InjectableActivity;->mActivityGraph:Ldagger/ObjectGraph;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/Injectable;->getApplicationGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lio/github/hidroh/materialistic/ActivityModule;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/ActivityModule;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lio/github/hidroh/materialistic/UiModule;

    invoke-direct {v3}, Lio/github/hidroh/materialistic/UiModule;-><init>()V

    aput-object v3, v1, v2

    .line 59
    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/InjectableActivity;->mActivityGraph:Ldagger/ObjectGraph;

    .line 61
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/InjectableActivity;->mActivityGraph:Ldagger/ObjectGraph;

    return-object v0
.end method

.method public inject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->getApplicationGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public isActivityDestroyed()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/InjectableActivity;->mDestroyed:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 44
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, p0}, Lio/github/hidroh/materialistic/InjectableActivity;->inject(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 35
    invoke-super {p0}, Lio/github/hidroh/materialistic/ThemedActivity;->onDestroy()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/InjectableActivity;->mDestroyed:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/InjectableActivity;->mActivityGraph:Ldagger/ObjectGraph;

    .line 38
    return-void
.end method
