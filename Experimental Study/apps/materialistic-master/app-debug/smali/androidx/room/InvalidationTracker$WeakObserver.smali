.class Landroidx/room/InvalidationTracker$WeakObserver;
.super Landroidx/room/InvalidationTracker$Observer;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakObserver"
.end annotation


# instance fields
.field final mDelegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/room/InvalidationTracker$Observer;",
            ">;"
        }
    .end annotation
.end field

.field final mTracker:Landroidx/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "tracker"    # Landroidx/room/InvalidationTracker;
    .param p2, "delegate"    # Landroidx/room/InvalidationTracker$Observer;

    .line 681
    iget-object v0, p2, Landroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    .line 682
    iput-object p1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->mTracker:Landroidx/room/InvalidationTracker;

    .line 683
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    .line 684
    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/InvalidationTracker$Observer;

    .line 689
    .local v0, "observer":Landroidx/room/InvalidationTracker$Observer;
    if-nez v0, :cond_0

    .line 690
    iget-object v1, p0, Landroidx/room/InvalidationTracker$WeakObserver;->mTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v1, p0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 694
    :goto_0
    return-void
.end method
