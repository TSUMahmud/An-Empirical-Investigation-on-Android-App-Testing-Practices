.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mExitAction:Ljava/lang/Runnable;

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method static getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 207
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Scene;

    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroidx/transition/Scene;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroidx/transition/Scene;

    .line 196
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    :cond_0
    return-void
.end method
