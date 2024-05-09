.class Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;
.super Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoteCallback"
.end annotation


# instance fields
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mItem:Lio/github/hidroh/materialistic/data/Item;

.field private final mPosition:I


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "adapter"    # Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 575
    invoke-direct {p0}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;-><init>()V

    .line 576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 577
    iput p2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mPosition:I

    .line 578
    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mItem:Lio/github/hidroh/materialistic/data/Item;

    .line 579
    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 3
    .param p1, "successful"    # Z

    .line 584
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mItem:Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->incrementScore()V

    .line 585
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mItem:Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->clearPendingVoted()V

    .line 586
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mPosition:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->onVoted(ILjava/lang/Boolean;)V

    .line 589
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 593
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$VoteCallback;->mPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->onVoted(ILjava/lang/Boolean;)V

    .line 596
    :cond_0
    return-void
.end method
