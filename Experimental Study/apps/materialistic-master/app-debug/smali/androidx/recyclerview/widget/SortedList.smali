.class public Landroidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SortedList$BatchedCallback;,
        Landroidx/recyclerview/widget/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

.field private mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V
    .locals 1
    .param p3, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Landroidx/recyclerview/widget/SortedList$Callback;, "Landroidx/recyclerview/widget/SortedList$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 103
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 106
    return-void
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v0

    .line 258
    .local v0, "newSize":I
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v1, :cond_1

    .line 259
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 260
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 261
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->merge([Ljava/lang/Object;I)V

    .line 265
    :goto_0
    return-void
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 813
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 814
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 6
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .line 743
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "mData":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_5

    .line 744
    add-int v2, p3, p4

    div-int/lit8 v2, v2, 0x2

    .line 745
    .local v2, "middle":I
    aget-object v3, p2, v2

    .line 746
    .local v3, "myItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 747
    .local v4, "cmp":I
    if-gez v4, :cond_0

    .line 748
    add-int/lit8 p3, v2, 0x1

    goto :goto_2

    .line 749
    :cond_0
    if-nez v4, :cond_4

    .line 750
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 751
    return v2

    .line 753
    :cond_1
    invoke-direct {p0, p1, v2, p3, p4}, Landroidx/recyclerview/widget/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v5

    .line 754
    .local v5, "exact":I
    if-ne p5, v1, :cond_3

    .line 755
    if-ne v5, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    return v0

    .line 757
    :cond_3
    return v5

    .line 761
    .end local v5    # "exact":I
    :cond_4
    move p4, v2

    .line 763
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_2
    goto :goto_0

    .line 764
    :cond_5
    if-ne p5, v1, :cond_6

    move v0, p3

    :cond_6
    return v0
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 3
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .line 396
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    move v0, p3

    .local v0, "pos":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 397
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    return v0

    .line 396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "pos":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .locals 4
    .param p2, "middle"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .line 769
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, p2, -0x1

    .local v0, "next":I
    :goto_0
    if-lt v0, p3, :cond_2

    .line 770
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 771
    .local v1, "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 772
    .local v2, "cmp":I
    if-eqz v2, :cond_0

    .line 773
    goto :goto_1

    .line 775
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 776
    return v0

    .line 769
    .end local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v2    # "cmp":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 779
    .end local v0    # "next":I
    :cond_2
    :goto_1
    add-int/lit8 v0, p2, 0x1

    .restart local v0    # "next":I
    :goto_2
    if-ge v0, p4, :cond_5

    .line 780
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 781
    .restart local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 782
    .restart local v2    # "cmp":I
    if-eqz v2, :cond_3

    .line 783
    goto :goto_3

    .line 785
    :cond_3
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 786
    return v0

    .line 779
    .end local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v2    # "cmp":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 789
    .end local v0    # "next":I
    :cond_5
    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 10
    .param p2, "newDataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 408
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    .local v0, "forceBatchedUpdates":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 413
    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 414
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 415
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 417
    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0xa

    .line 418
    .local v3, "mergedCapacity":I
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 419
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "newDataStart":I
    :goto_1
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v4, v5, :cond_2

    if-ge v1, p2, :cond_4

    .line 423
    :cond_2
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-ne v4, v5, :cond_3

    .line 425
    sub-int v2, p2, v1

    .line 426
    .local v2, "itemCount":I
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v4, v2

    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 428
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v4, v2

    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 429
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 430
    goto :goto_2

    .line 433
    .end local v2    # "itemCount":I
    :cond_3
    if-ne v1, p2, :cond_6

    .line 435
    sub-int/2addr v5, v4

    .line 436
    .local v5, "itemCount":I
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-static {v2, v4, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v2, v5

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 438
    nop

    .line 467
    .end local v5    # "itemCount":I
    :cond_4
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 469
    if-eqz v0, :cond_5

    .line 470
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 472
    :cond_5
    return-void

    .line 441
    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    aget-object v4, v5, v4

    .line 442
    .local v4, "oldItem":Ljava/lang/Object;, "TT;"
    aget-object v5, p1, v1

    .line 443
    .local v5, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 444
    .local v6, "compare":I
    if-lez v6, :cond_7

    .line 446
    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v5, v7, v8

    .line 447
    iget v7, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v7, v2

    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 448
    add-int/lit8 v1, v1, 0x1

    .line 449
    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v8, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v8, v2

    invoke-interface {v7, v8, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_3

    .line 450
    :cond_7
    if-nez v6, :cond_8

    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v7, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 452
    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v5, v7, v8

    .line 453
    add-int/lit8 v1, v1, 0x1

    .line 454
    iget v7, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v7, v2

    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 455
    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v7, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 456
    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v8, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v8, v2

    .line 457
    invoke-virtual {v7, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 456
    invoke-virtual {v7, v8, v2, v9}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    .line 462
    :cond_8
    iget-object v7, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v4, v7, v8

    .line 463
    iget v7, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v7, v2

    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 465
    .end local v4    # "oldItem":Ljava/lang/Object;, "TT;"
    .end local v5    # "newItem":Ljava/lang/Object;, "TT;"
    .end local v6    # "compare":I
    :cond_9
    :goto_3
    goto/16 :goto_1
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 353
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "rangeStart":I
    const/4 v1, 0x1

    .line 365
    .local v1, "rangeEnd":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 366
    aget-object v3, p1, v2

    .line 368
    .local v3, "currentItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 370
    .local v4, "compare":I
    if-nez v4, :cond_3

    .line 372
    invoke-direct {p0, v3, p1, v0, v1}, Landroidx/recyclerview/widget/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    .line 373
    .local v5, "sameItemPos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 375
    aput-object v3, p1, v5

    goto :goto_1

    .line 378
    :cond_1
    if-eq v1, v2, :cond_2

    .line 379
    aput-object v3, p1, v1

    .line 381
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 383
    .end local v5    # "sameItemPos":I
    :goto_1
    goto :goto_2

    .line 385
    :cond_3
    if-eq v1, v2, :cond_4

    .line 386
    aput-object v3, p1, v1

    .line 388
    :cond_4
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "rangeEnd":I
    .local v5, "rangeEnd":I
    move v0, v1

    move v1, v5

    .line 365
    .end local v3    # "currentItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "compare":I
    .end local v5    # "rangeEnd":I
    .restart local v1    # "rangeEnd":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_5
    return v1
.end method

.method private throwIfInMutationOperation()V
    .locals 2

    .line 479
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 483
    return-void

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 163
    array-length v0, p1

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 168
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 172
    :goto_0
    return-void
.end method

.method public beginBatchedUpdates()V
    .locals 2

    .line 518
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 519
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 520
    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v1, :cond_1

    .line 523
    new-instance v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 525
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 526
    return-void
.end method

.method public clear()V
    .locals 4

    .line 822
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 823
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v0, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 827
    .local v0, "prevSize":I
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 828
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 829
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v1, v3, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 830
    return-void
.end method

.method public endBatchedUpdates()V
    .locals 2

    .line 532
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 533
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 534
    check-cast v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 536
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1

    .line 537
    iget-object v0, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 539
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 705
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 709
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 712
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt p1, v1, :cond_0

    .line 713
    sub-int v1, p1, v1

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 716
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 706
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 728
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 729
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 730
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 731
    return v0

    .line 733
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 734
    if-eq v0, v1, :cond_1

    .line 735
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int v1, v0, v1

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v1, v2

    return v1

    .line 737
    :cond_1
    return v1

    .line 739
    .end local v0    # "index":I
    :cond_2
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 114
    .local p0, "this":Landroidx/recyclerview/widget/SortedList;, "Landroidx/recyclerview/widget/SortedList<TT;>;"
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    return v0
.end method
