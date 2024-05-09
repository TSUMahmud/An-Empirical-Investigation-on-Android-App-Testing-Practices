.class Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;
.super Ljava/lang/Object;
.source "ItemRecyclerViewAdapter.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartialItem:Lio/github/hidroh/materialistic/data/Item;

.field private final mPosition:I


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;ILio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "adapter"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "partialItem"    # Lio/github/hidroh/materialistic/data/Item;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 315
    iput p2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mPosition:I

    .line 316
    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mPartialItem:Lio/github/hidroh/materialistic/data/Item;

    .line 317
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 330
    return-void
.end method

.method public onResponse(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/Item;

    .line 321
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mPartialItem:Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/Item;->populate(Lio/github/hidroh/materialistic/data/Item;)V

    .line 323
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iget v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mPosition:I

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->mPartialItem:Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->onItemLoaded(ILio/github/hidroh/materialistic/data/Item;)V

    .line 325
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemResponseListener;->onResponse(Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method
