.class public Lio/github/hidroh/materialistic/widget/CommentItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CommentItemDecoration.java"


# instance fields
.field private mColorCodeEnabled:Z

.field private final mColors:Landroid/content/res/TypedArray;

.field private final mHorizontalMargin:I

.field private final mLevelIndicatorWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mThreadIndicatorEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mHorizontalMargin:I

    .line 45
    const v0, 0x7f07009f

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getDimensionInDp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mLevelIndicatorWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mColors:Landroid/content/res/TypedArray;

    .line 47
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->colorCodeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mColorCodeEnabled:Z

    .line 48
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->threadIndicatorEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mThreadIndicatorEnabled:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 53
    iget v0, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mHorizontalMargin:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 58
    move-object v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mThreadIndicatorEnabled:Z

    if-nez v2, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 63
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    .line 64
    .local v4, "level":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 65
    iget v6, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mHorizontalMargin:I

    iget v7, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mLevelIndicatorWidth:I

    mul-int v8, v5, v7

    add-int/2addr v6, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 66
    .local v6, "left":I
    iget-boolean v7, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mColorCodeEnabled:Z

    const/16 v8, 0x1f

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 67
    iget-object v7, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mColors:Landroid/content/res/TypedArray;

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    rem-int v11, v5, v11

    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v7, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 70
    :cond_1
    iget-object v7, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    const v10, -0x777778

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v7, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    mul-int/lit8 v10, v5, 0x4

    sub-int/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    :goto_2
    int-to-float v10, v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v11, v7

    int-to-float v12, v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v13, v7

    iget-object v14, v0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    .end local v6    # "left":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 61
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "level":I
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public setColorCodeEnabled(Z)V
    .locals 0
    .param p1, "colorCodeEnabled"    # Z

    .line 79
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mColorCodeEnabled:Z

    .line 80
    return-void
.end method

.method public setThreadIndicatorEnabled(Z)V
    .locals 0
    .param p1, "threadIndicatorEnabled"    # Z

    .line 83
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;->mThreadIndicatorEnabled:Z

    .line 84
    return-void
.end method
