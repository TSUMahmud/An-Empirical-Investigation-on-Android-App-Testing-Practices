.class public abstract Lio/github/hidroh/materialistic/LazyLoadFragment;
.super Lio/github/hidroh/materialistic/BaseFragment;
.source "LazyLoadFragment.java"


# static fields
.field public static final EXTRA_EAGER_LOAD:Ljava/lang/String;

.field public static final EXTRA_RETAIN_INSTANCE:Ljava/lang/String;

.field private static final STATE_EAGER_LOAD:Ljava/lang/String; = "state:eagerLoad"

.field private static final STATE_LOADED:Ljava/lang/String; = "state:loaded"


# instance fields
.field private mActivityCreated:Z

.field private mEagerLoad:Z

.field private mLoaded:Z

.field private mNewInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/LazyLoadFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_EAGER_LOAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_EAGER_LOAD:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_RETAIN_INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_RETAIN_INSTANCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method final eagerLoad()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mEagerLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mLoaded:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mLoaded:Z

    .line 94
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->load()V

    .line 96
    :cond_0
    return-void
.end method

.method protected isNewInstance()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mNewInstance:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract load()V
.end method

.method public loadNow()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mEagerLoad:Z

    .line 78
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->eagerLoad()V

    .line 80
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mActivityCreated:Z

    .line 57
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->isNewInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/LazyLoadFragment;->eagerLoad()V

    .line 60
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mNewInstance:Z

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_RETAIN_INSTANCE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mNewInstance:Z

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "state:eagerLoad"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mEagerLoad:Z

    .line 46
    const-string v0, "state:loaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mLoaded:Z

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v3, Lio/github/hidroh/materialistic/LazyLoadFragment;->EXTRA_EAGER_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/Preferences;->shouldLazyLoad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mEagerLoad:Z

    .line 51
    :goto_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 71
    invoke-super {p0}, Lio/github/hidroh/materialistic/BaseFragment;->onDetach()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mActivityCreated:Z

    .line 73
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "state:eagerLoad"

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/LazyLoadFragment;->mEagerLoad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string v0, "state:loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method
