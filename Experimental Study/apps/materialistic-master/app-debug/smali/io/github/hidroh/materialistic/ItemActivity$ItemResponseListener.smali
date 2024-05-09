.class Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;
.super Ljava/lang/Object;
.source "ItemActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/ItemActivity;
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

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;->mItemActivity:Ljava/lang/ref/WeakReference;

    .line 472
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 484
    return-void
.end method

.method public onResponse(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/Item;

    .line 476
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;->mItemActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/ItemActivity;->onItemLoaded(Lio/github/hidroh/materialistic/data/Item;)V

    .line 479
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 466
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/ItemActivity$ItemResponseListener;->onResponse(Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method
