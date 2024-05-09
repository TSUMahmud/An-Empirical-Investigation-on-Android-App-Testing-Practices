.class Landroidx/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mObserver:Landroidx/room/InvalidationTracker$Observer;

.field private final mSingleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTableIds:[I

.field private final mTableNames:[Ljava/lang/String;

.field private final mVersions:[J


# direct methods
.method constructor <init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V
    .locals 3
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;
    .param p2, "tableIds"    # [I
    .param p3, "tableNames"    # [Ljava/lang/String;
    .param p4, "versions"    # [J

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    .line 484
    iput-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    .line 485
    iput-object p3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    .line 486
    iput-object p4, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    .line 487
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 488
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 489
    .local v0, "set":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 491
    .end local v0    # "set":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 494
    :goto_0
    return-void
.end method


# virtual methods
.method checkForInvalidation([J)V
    .locals 10
    .param p1, "versions"    # [J

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "invalidatedTables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    array-length v1, v1

    .line 499
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 500
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    aget v3, v3, v2

    .line 501
    .local v3, "tableId":I
    aget-wide v4, p1, v3

    .line 502
    .local v4, "newVersion":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aget-wide v7, v6, v2

    .line 503
    .local v7, "currentVersion":J
    cmp-long v9, v7, v4

    if-gez v9, :cond_2

    .line 504
    aput-wide v4, v6, v2

    .line 505
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 507
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_1

    .line 509
    :cond_0
    if-nez v0, :cond_1

    .line 510
    new-instance v6, Landroidx/collection/ArraySet;

    invoke-direct {v6, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    move-object v0, v6

    .line 512
    :cond_1
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v3    # "tableId":I
    .end local v4    # "newVersion":J
    .end local v7    # "currentVersion":J
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v2    # "index":I
    :cond_3
    if-eqz v0, :cond_4

    .line 517
    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v0}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 519
    :cond_4
    return-void
.end method
