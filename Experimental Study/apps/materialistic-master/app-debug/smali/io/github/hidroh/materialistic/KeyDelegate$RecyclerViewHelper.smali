.class Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;
.super Ljava/lang/Object;
.source "KeyDelegate.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Scrollable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/KeyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecyclerViewHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper$ScrollMode;
    }
.end annotation


# static fields
.field static final SCROLL_ITEM:I = 0x0

.field static final SCROLL_PAGE:I = 0x1


# instance fields
.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollMode:I

.field private mSmoothScroll:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "scrollMode"    # I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mSmoothScroll:Z

    .line 242
    iput-object p1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 246
    iput p2, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mScrollMode:I

    .line 247
    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only LinearLayoutManager supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 326
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method


# virtual methods
.method getCurrentPosition()I
    .locals 1

    .line 300
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public scrollToNext()Z
    .locals 3

    .line 256
    iget v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mScrollMode:I

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    :goto_0
    nop

    .line 259
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 261
    .local v2, "next":I
    :goto_1
    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 263
    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 264
    const/4 v1, 0x1

    return v1

    .line 266
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method scrollToPosition(I)[I
    .locals 5
    .param p1, "position"    # I

    .line 304
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 305
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mSmoothScroll:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 306
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 307
    return-object v0

    .line 309
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 310
    .local v0, "first":I
    const/4 v1, 0x0

    .line 311
    .local v1, "lock":[I
    sub-int v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 312
    const/4 v3, 0x2

    if-ge p1, v0, :cond_1

    .line 313
    new-array v3, v3, [I

    aput p1, v3, v2

    add-int/lit8 v2, v0, -0x1

    aput v2, v3, v4

    move-object v1, v3

    goto :goto_0

    .line 314
    :cond_1
    if-le p1, v0, :cond_2

    .line 315
    new-array v3, v3, [I

    aput v0, v3, v2

    add-int/lit8 v2, p1, -0x1

    aput v2, v3, v4

    move-object v1, v3

    .line 318
    :cond_2
    :goto_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 319
    return-object v1

    .line 321
    .end local v0    # "first":I
    .end local v1    # "lock":[I
    :cond_3
    return-object v0
.end method

.method public scrollToPrevious()Z
    .locals 4

    .line 272
    iget v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mScrollMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 275
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 276
    .local v0, "pos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 278
    .local v3, "previous":I
    :cond_0
    if-ltz v3, :cond_1

    .line 279
    iget-object v1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 280
    return v2

    .line 282
    :cond_1
    return v1

    .line 285
    .end local v0    # "pos":I
    .end local v3    # "previous":I
    :cond_2
    invoke-direct {p0}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-gtz v0, :cond_3

    .line 286
    return v1

    .line 288
    :cond_3
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 289
    return v2
.end method

.method public scrollToTop()V
    .locals 2

    .line 251
    iget-object v0, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 252
    return-void
.end method

.method smoothScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 295
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;->mSmoothScroll:Z

    .line 296
    return-void
.end method
