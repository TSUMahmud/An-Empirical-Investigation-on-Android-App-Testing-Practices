.class Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;
.super Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
.source "FavoriteRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;
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
            "Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    .line 314
    invoke-direct {p0}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 316
    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .line 320
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->onVoted(Ljava/lang/Boolean;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 327
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$VoteCallback;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->onVoted(Ljava/lang/Boolean;)V

    .line 330
    :cond_0
    return-void
.end method
