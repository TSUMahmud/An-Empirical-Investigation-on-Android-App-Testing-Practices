.class public Landroidx/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static sDefaultTransition:Landroidx/transition/Transition;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    .line 86
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    .line 226
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 402
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    if-nez p1, :cond_0

    .line 409
    sget-object p1, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    .line 412
    .local v0, "transitionClone":Landroidx/transition/Transition;
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 413
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/View;Landroidx/transition/Scene;)V

    .line 414
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 416
    .end local v0    # "transitionClone":Landroidx/transition/Transition;
    :cond_1
    return-void
.end method

.method static getRunningTransitions()Landroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 195
    sget-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 196
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 197
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;>;"
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/ArrayMap;

    .line 199
    .local v1, "transitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    if-eqz v1, :cond_0

    .line 200
    return-object v1

    .line 203
    .end local v1    # "transitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    :cond_0
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 204
    .restart local v1    # "transitions":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroidx/transition/Transition;>;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 205
    sget-object v2, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 206
    return-object v1
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 211
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Landroidx/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Landroidx/transition/TransitionManager$MultiListener;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    .line 213
    .local v0, "listener":Landroidx/transition/TransitionManager$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 216
    .end local v0    # "listener":Landroidx/transition/TransitionManager$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 3
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 303
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 305
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 307
    .local v2, "runningTransition":Landroidx/transition/Transition;
    invoke-virtual {v2, p0}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    .line 308
    .end local v2    # "runningTransition":Landroidx/transition/Transition;
    goto :goto_0

    .line 311
    :cond_0
    if-eqz p1, :cond_1

    .line 312
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 316
    :cond_1
    invoke-static {p0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;

    move-result-object v1

    .line 317
    .local v1, "previousScene":Landroidx/transition/Scene;
    if-eqz v1, :cond_2

    .line 318
    invoke-virtual {v1}, Landroidx/transition/Scene;->exit()V

    .line 320
    :cond_2
    return-void
.end method
