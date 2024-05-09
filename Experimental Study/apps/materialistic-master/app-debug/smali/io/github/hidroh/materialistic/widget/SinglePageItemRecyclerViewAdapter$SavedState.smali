.class public Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;
.super Ljava/lang/Object;
.source "SinglePageItemRecyclerViewAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final expanded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 363
    new-instance v0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState$1;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState$1;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    .line 376
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->map:Landroidx/collection/LongSparseArray;

    .line 377
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    .line 387
    const-class v0, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    .local v0, "savedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/github/hidroh/materialistic/data/Item;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->addAll(ILjava/util/List;)V

    .line 389
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 390
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/github/hidroh/materialistic/data/Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    .line 376
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->map:Landroidx/collection/LongSparseArray;

    .line 377
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->addAll(ILjava/util/List;)V

    .line 382
    return-void
.end method

.method private addAll(ILjava/util/List;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lio/github/hidroh/materialistic/data/Item;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 450
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/Item;

    .line 451
    .local v1, "item":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v1, :cond_0

    .line 452
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->map:Landroidx/collection/LongSparseArray;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 454
    .end local v1    # "item":Lio/github/hidroh/materialistic/data/Item;
    :cond_0
    goto :goto_0

    .line 455
    :cond_1
    return-void
.end method

.method private recursiveRemove(Lio/github/hidroh/materialistic/data/Item;)I
    .locals 6
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 458
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 459
    return v1

    .line 462
    :cond_0
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v0

    .line 463
    .local v0, "count":I
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 464
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidItems()[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 465
    .local v4, "kid":Lio/github/hidroh/materialistic/data/Item;
    invoke-direct {p0, v4}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->recursiveRemove(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v5

    add-int/2addr v0, v5

    .line 466
    invoke-direct {p0, v4}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->remove(Lio/github/hidroh/materialistic/data/Item;)V

    .line 464
    .end local v4    # "kid":Lio/github/hidroh/materialistic/data/Item;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_1
    return v0
.end method

.method private remove(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 472
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 473
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->map:Landroidx/collection/LongSparseArray;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 474
    return-void
.end method


# virtual methods
.method collapse(Lio/github/hidroh/materialistic/data/Item;)[I
    .locals 5
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 443
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 444
    .local v0, "index":I
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->recursiveRemove(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v2

    .line 445
    .local v2, "count":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v2, v3, v1

    return-object v3
.end method

.method public describeContents()I
    .locals 1

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method expand(Lio/github/hidroh/materialistic/data/Item;)I
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 435
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 437
    .local v0, "index":I
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidItems()[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->addAll(ILjava/util/List;)V

    .line 438
    return v0
.end method

.method get(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "position"    # I

    .line 410
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    return-object v0
.end method

.method indexOf(J)I
    .locals 1
    .param p1, "itemId"    # J

    .line 415
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->map:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v0

    return v0
.end method

.method indexOf(Lio/github/hidroh/materialistic/data/Item;)I
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 420
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 425
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isExpanded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .line 405
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 399
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expanded:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 401
    return-void
.end method
