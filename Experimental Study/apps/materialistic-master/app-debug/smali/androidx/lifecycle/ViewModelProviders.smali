.class public Landroidx/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static checkActivity(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 3
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 55
    return-object v0

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 47
    return-object v0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "factory"    # Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 101
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->checkActivity(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    .line 102
    .local v0, "application":Landroid/app/Application;
    if-nez p1, :cond_0

    .line 103
    invoke-static {v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    .line 105
    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    return-object v1
.end method
