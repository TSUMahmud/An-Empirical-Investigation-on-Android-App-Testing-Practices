.class abstract Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "PeekabooTouchHelperCallback.java"


# instance fields
.field private final mDefaultTextColor:I

.field private final mPadding:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    .line 41
    nop

    .line 42
    const v0, 0x1010036

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    .line 41
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mDefaultTextColor:I

    .line 43
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPadding:I

    .line 46
    return-void
.end method

.method private drawPeekingText(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "dX"    # F

    .line 62
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 63
    .local v0, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 64
    .local v2, "swipeRight":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->getRightText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->getLeftText()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "text":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v1, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 67
    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    .line 68
    .local v1, "textWidth":F
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 69
    .local v5, "textHeight":F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 70
    .local v6, "width":F
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 71
    .local v7, "paddingY":F
    iget-object v8, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->getRightTextColor()I

    move-result v9

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->getLeftTextColor()I

    move-result v9

    :goto_2
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v8, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    const/high16 v10, 0x437f0000    # 255.0f

    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float v10, v10, v11

    div-float/2addr v10, v6

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPadding:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPadding:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v9, v1

    .line 76
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v7

    iget-object v11, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mPaint:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected abstract getLeftText()Ljava/lang/String;
.end method

.method protected getLeftTextColor()I
    .locals 1

    .line 95
    iget v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mDefaultTextColor:I

    return v0
.end method

.method protected abstract getRightText()Ljava/lang/String;
.end method

.method protected getRightTextColor()I
    .locals 1

    .line 99
    iget v0, p0, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->mDefaultTextColor:I

    return v0
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 1
    .param p1, "defaultValue"    # F

    .line 87
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 82
    const v0, 0x3eaaaaab

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 57
    invoke-direct {p0, p1, p3, p4}, Lio/github/hidroh/materialistic/widget/PeekabooTouchHelperCallback;->drawPeekingText(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    .line 58
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 59
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 51
    const/4 v0, 0x0

    return v0
.end method
