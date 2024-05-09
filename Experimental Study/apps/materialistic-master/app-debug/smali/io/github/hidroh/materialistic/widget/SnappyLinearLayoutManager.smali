.class public Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SnappyLinearLayoutManager.java"


# instance fields
.field private final mExtraSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preload"    # Z

    .line 36
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 37
    if-eqz p2, :cond_0

    invoke-static {p1}, Lio/github/hidroh/materialistic/AppUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;->mExtraSpace:I

    .line 38
    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 63
    iget v0, p0, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;->mExtraSpace:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 44
    new-instance v0, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager$1;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager$1;-><init>(Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;Landroid/content/Context;)V

    .line 57
    .local v0, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 58
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 59
    return-void
.end method
