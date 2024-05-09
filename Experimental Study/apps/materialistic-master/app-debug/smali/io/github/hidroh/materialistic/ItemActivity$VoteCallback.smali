.class Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;
.super Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
.source "ItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/ItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoteCallback"
.end annotation


# instance fields
.field private final mItemActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/ItemActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ItemActivity;)V
    .locals 1
    .param p1, "itemActivity"    # Lio/github/hidroh/materialistic/ItemActivity;

    .line 491
    invoke-direct {p0}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;-><init>()V

    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    .line 493
    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .line 497
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ItemActivity;->onVoted(Ljava/lang/Boolean;)V

    .line 500
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 504
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$VoteCallback;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ItemActivity;->onVoted(Ljava/lang/Boolean;)V

    .line 507
    :cond_0
    return-void
.end method
