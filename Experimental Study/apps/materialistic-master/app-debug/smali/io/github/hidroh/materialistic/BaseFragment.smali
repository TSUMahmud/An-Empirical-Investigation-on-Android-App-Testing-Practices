.class public abstract Lio/github/hidroh/materialistic/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field private mAttached:Z

.field protected final mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/MenuTintDelegate;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/BaseFragment;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    return-void
.end method


# virtual methods
.method protected createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 80
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/BaseFragment;->mAttached:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lio/github/hidroh/materialistic/Injectable;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Injectable;

    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/Injectable;->inject(Ljava/lang/Object;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseFragment;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/MenuTintDelegate;->onActivityCreated(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseFragment;->mAttached:Z

    .line 36
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 49
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseFragment;->createOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseFragment;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/MenuTintDelegate;->onOptionsMenuCreated(Landroid/view/Menu;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lio/github/hidroh/materialistic/Application;->getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/BaseFragment;->mAttached:Z

    .line 66
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 57
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/BaseFragment;->prepareOptionsMenu(Landroid/view/Menu;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 84
    return-void
.end method
