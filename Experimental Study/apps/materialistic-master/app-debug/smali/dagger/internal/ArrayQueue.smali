.class public Ldagger/internal/ArrayQueue;
.super Ljava/util/AbstractCollection;
.source "ArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/ArrayQueue$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 142
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 143
    return-void
.end method

.method static synthetic access$100(Ldagger/internal/ArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;

    .line 58
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    return v0
.end method

.method static synthetic access$200(Ldagger/internal/ArrayQueue;)I
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;

    .line 58
    iget v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    return v0
.end method

.method static synthetic access$300(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;

    .line 58
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Ldagger/internal/ArrayQueue;I)Z
    .locals 1
    .param p0, "x0"    # Ldagger/internal/ArrayQueue;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Ldagger/internal/ArrayQueue;->delete(I)Z

    move-result v0

    return v0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .line 280
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 281
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 282
    .local v1, "mask":I
    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 283
    .local v3, "h":I
    iget v4, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 284
    .local v4, "t":I
    sub-int v5, p1, v3

    and-int/2addr v5, v1

    .line 285
    .local v5, "front":I
    sub-int v6, v4, p1

    and-int/2addr v6, v1

    .line 288
    .local v6, "back":I
    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    .line 292
    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    .line 293
    if-gt v3, p1, :cond_0

    .line 294
    add-int/lit8 v2, v3, 0x1

    invoke-static {v0, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    aget-object v2, v0, v1

    aput-object v2, v0, v7

    .line 298
    add-int/lit8 v2, v3, 0x1

    sub-int v8, v1, v3

    invoke-static {v0, v3, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :goto_0
    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 301
    add-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v1

    iput v2, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 302
    return v7

    .line 304
    :cond_1
    if-ge p1, v4, :cond_2

    .line 305
    add-int/lit8 v7, p1, 0x1

    invoke-static {v0, v7, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Ldagger/internal/ArrayQueue;->tail:I

    goto :goto_1

    .line 308
    :cond_2
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v1, p1

    invoke-static {v0, v8, v0, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    aget-object v8, v0, v7

    aput-object v8, v0, v1

    .line 310
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    add-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v1

    iput v7, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 313
    :goto_1
    return v2

    .line 289
    :cond_3
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method private doubleCapacity()V
    .locals 7

    .line 123
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 124
    .local v0, "p":I
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v2, v1

    .line 125
    .local v2, "n":I
    sub-int v3, v2, v0

    .line 126
    .local v3, "r":I
    shl-int/lit8 v4, v2, 0x1

    .line 127
    .local v4, "newCapacity":I
    if-ltz v4, :cond_0

    .line 129
    new-array v5, v4, [Ljava/lang/Object;

    .line 130
    .local v5, "a":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v1, v0, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-static {v1, v6, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iput-object v5, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 133
    iput v6, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 134
    iput v2, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 135
    return-void

    .line 128
    .end local v5    # "a":[Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Sorry, queue too big"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 181
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    aput-object p1, v0, v1

    .line 184
    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v0, v0

    sub-int/2addr v0, v2

    and-int/2addr v0, v1

    iput v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    if-ne v0, v1, :cond_0

    .line 185
    invoke-direct {p0}, Ldagger/internal/ArrayQueue;->doubleCapacity()V

    .line 186
    :cond_0
    return v2

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 6

    .line 459
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 460
    .local v0, "h":I
    iget v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    .line 461
    .local v1, "t":I
    if-eq v0, v1, :cond_1

    .line 462
    const/4 v2, 0x0

    iput v2, p0, Ldagger/internal/ArrayQueue;->tail:I

    iput v2, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 463
    move v2, v0

    .line 464
    .local v2, "i":I
    iget-object v3, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 466
    .local v3, "mask":I
    :cond_0
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 467
    add-int/lit8 v4, v2, 0x1

    and-int v2, v4, v3

    .line 468
    if-ne v2, v1, :cond_0

    .line 470
    .end local v2    # "i":I
    .end local v3    # "mask":I
    :cond_1
    return-void
.end method

.method public clone()Ldagger/internal/ArrayQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/ArrayQueue<",
            "TE;>;"
        }
    .end annotation

    .line 554
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/ArrayQueue;

    .line 555
    .local v0, "result":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 557
    .local v1, "newElements":[Ljava/lang/Object;, "[TE;"
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iput-object v1, v0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    return-object v0

    .line 560
    .end local v0    # "result":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .end local v1    # "newElements":[Ljava/lang/Object;, "[TE;"
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->clone()Ldagger/internal/ArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 412
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 413
    return v0

    .line 414
    :cond_0
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 415
    .local v1, "mask":I
    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 417
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    move-object v5, v4

    .local v5, "x":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 418
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    return v2

    .line 420
    :cond_1
    add-int/lit8 v4, v3, 0x1

    and-int v3, v4, v1

    goto :goto_0

    .line 422
    :cond_2
    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 248
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    aget-object v0, v0, v1

    .line 249
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 251
    return-object v0

    .line 250
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 336
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    iget v1, p0, Ldagger/internal/ArrayQueue;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    new-instance v0, Ldagger/internal/ArrayQueue$QueueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/ArrayQueue$QueueIterator;-><init>(Ldagger/internal/ArrayQueue;Ldagger/internal/ArrayQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 198
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ldagger/internal/ArrayQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 263
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget-object v0, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    aget-object v0, v0, v1

    .line 265
    .local v0, "result":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 228
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 229
    .local v0, "h":I
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 231
    .local v2, "result":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 232
    return-object v3

    .line 233
    :cond_0
    aput-object v3, v1, v0

    .line 234
    add-int/lit8 v3, v0, 0x1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 235
    return-object v2
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 212
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 215
    return-object v0

    .line 214
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 438
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 439
    return v0

    .line 440
    :cond_0
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 441
    .local v1, "mask":I
    iget v3, p0, Ldagger/internal/ArrayQueue;->head:I

    .line 443
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    move-object v5, v4

    .local v5, "x":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 444
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    invoke-direct {p0, v3}, Ldagger/internal/ArrayQueue;->delete(I)Z

    .line 446
    return v2

    .line 448
    :cond_1
    add-int/lit8 v4, v3, 0x1

    and-int v3, v4, v1

    goto :goto_0

    .line 450
    :cond_2
    return v0
.end method

.method public size()I
    .locals 2

    .line 326
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    iget v0, p0, Ldagger/internal/ArrayQueue;->tail:I

    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 487
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ldagger/internal/ArrayQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 528
    .local p0, "this":Ldagger/internal/ArrayQueue;, "Ldagger/internal/ArrayQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v0

    .line 529
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 532
    :cond_0
    iget v1, p0, Ldagger/internal/ArrayQueue;->head:I

    iget v2, p0, Ldagger/internal/ArrayQueue;->tail:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 533
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Ldagger/internal/ArrayQueue;->size()I

    move-result v4

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 534
    :cond_1
    if-le v1, v2, :cond_2

    .line 535
    iget-object v2, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v4, v2

    sub-int/2addr v4, v1

    .line 536
    .local v4, "headPortionLen":I
    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    iget-object v1, p0, Ldagger/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Ldagger/internal/ArrayQueue;->tail:I

    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    .end local v4    # "headPortionLen":I
    :cond_2
    :goto_0
    array-length v1, p1

    if-le v1, v0, :cond_3

    .line 540
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 541
    :cond_3
    return-object p1
.end method
