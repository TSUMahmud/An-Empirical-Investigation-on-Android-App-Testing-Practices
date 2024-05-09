.class abstract Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;
.super Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;
.source "FavoriteRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemTouchHelperCallback"
.end annotation


# instance fields
.field private final mDeleteColor:I

.field private final mDeleteText:Ljava/lang/String;

.field private final mRefreshColor:I

.field private final mRefreshText:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 341
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;-><init>(Landroid/content/Context;)V

    .line 342
    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mDeleteText:Ljava/lang/String;

    .line 343
    const v0, 0x7f100142

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mRefreshText:Ljava/lang/String;

    .line 344
    const v0, 0x7f06008d

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mDeleteColor:I

    .line 345
    const v0, 0x7f060054

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mRefreshColor:I

    .line 346
    return-void
.end method


# virtual methods
.method protected getLeftText()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mDeleteText:Ljava/lang/String;

    return-object v0
.end method

.method protected getLeftTextColor()I
    .locals 1

    .line 367
    iget v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mDeleteColor:I

    return v0
.end method

.method protected getRightText()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mRefreshText:Ljava/lang/String;

    return-object v0
.end method

.method protected getRightTextColor()I
    .locals 1

    .line 372
    iget v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;->mRefreshColor:I

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 350
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 351
    .local v1, "alpha":F
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 352
    invoke-super/range {p0 .. p7}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 353
    return-void
.end method
