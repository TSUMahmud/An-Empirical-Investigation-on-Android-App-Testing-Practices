.class Landroidx/transition/TransitionSet$TransitionSetListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0
    .param p1, "transitionSet"    # Landroidx/transition/TransitionSet;

    .line 423
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 424
    iput-object p1, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    .line 425
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 437
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    iget v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 438
    iget v1, v0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    if-nez v1, :cond_0

    .line 440
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 441
    invoke-virtual {v0}, Landroidx/transition/Transition;->end()V

    .line 443
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 444
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 429
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    iget-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {v0}, Landroidx/transition/Transition;->start()V

    .line 431
    iget-object v0, p0, Landroidx/transition/TransitionSet$TransitionSetListener;->mTransitionSet:Landroidx/transition/TransitionSet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 433
    :cond_0
    return-void
.end method
