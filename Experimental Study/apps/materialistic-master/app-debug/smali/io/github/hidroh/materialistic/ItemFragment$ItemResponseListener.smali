.class Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;
.super Ljava/lang/Object;
.source "ItemFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/github/hidroh/materialistic/data/ResponseListener<",
        "Lio/github/hidroh/materialistic/data/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/ItemFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ItemFragment;)V
    .locals 1
    .param p1, "itemFragment"    # Lio/github/hidroh/materialistic/ItemFragment;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    .line 292
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemFragment;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ItemFragment;->onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onResponse(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/Item;

    .line 296
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemFragment;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->mItemFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemFragment;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/ItemFragment;->onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V

    .line 299
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 286
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/ItemFragment$ItemResponseListener;->onResponse(Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method
