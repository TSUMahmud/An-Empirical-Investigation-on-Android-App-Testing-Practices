.class Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;,
        Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 75
    new-array v0, v1, [I

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "verticalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "verticalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "horizontalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p5, "horizontalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "defaultWidth"    # I
    .param p7, "scrollbarMinimumRange"    # I
    .param p8, "margin"    # I

    .line 141
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 105
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 112
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 113
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 114
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 115
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 117
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 118
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 119
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 120
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 123
    new-instance v0, Landroidx/recyclerview/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Landroidx/recyclerview/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 142
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 148
    nop

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 150
    nop

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 152
    iput p7, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 153
    iput p8, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    .line 154
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 161
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .locals 2

    .line 267
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    .line 183
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 186
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 187
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 325
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 327
    .local v0, "viewHeight":I
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int v2, v0, v1

    .line 328
    .local v2, "top":I
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 329
    .local v3, "left":I
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 330
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 331
    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    int-to-float v1, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    neg-int v1, v3

    int-to-float v1, v1

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 300
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 302
    .local v0, "viewWidth":I
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int v2, v0, v1

    .line 303
    .local v2, "left":I
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 304
    .local v3, "top":I
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 305
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 306
    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v1, v1

    int-to-float v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 312
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 316
    :cond_0
    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    int-to-float v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    neg-int v1, v2

    int-to-float v1, v1

    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    :goto_0
    return-void
.end method

.method private getHorizontalRange()[I
    .locals 3

    .line 551
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 552
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 553
    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 3

    .line 542
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 543
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 544
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 9
    .param p1, "x"    # F

    .line 470
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v7

    .line 471
    .local v7, "scrollbarRange":[I
    const/4 v8, 0x0

    aget v0, v7, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 472
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 477
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 478
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 476
    move-object v0, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    .line 479
    .local v0, "scrollingBy":I
    if-eqz v0, :cond_1

    .line 480
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 483
    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 484
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 216
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resetHideDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 271
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 272
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 6
    .param p1, "oldDragPos"    # F
    .param p2, "newDragPos"    # F
    .param p3, "scrollbarRange"    # [I
    .param p4, "scrollRange"    # I
    .param p5, "scrollOffset"    # I
    .param p6, "viewLength"    # I

    .line 488
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget v2, p3, v1

    sub-int/2addr v0, v2

    .line 489
    .local v0, "scrollbarLength":I
    if-nez v0, :cond_0

    .line 490
    return v1

    .line 492
    :cond_0
    sub-float v2, p2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 493
    .local v2, "percentage":F
    sub-int v3, p4, p6

    .line 494
    .local v3, "totalPossibleOffset":I
    int-to-float v4, v3

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 495
    .local v4, "scrollingBy":I
    add-int v5, p5, v4

    .line 496
    .local v5, "absoluteOffset":I
    if-ge v5, v3, :cond_1

    if-ltz v5, :cond_1

    .line 497
    return v4

    .line 499
    :cond_1
    return v1
.end method

.method private setupCallbacks()V
    .locals 2

    .line 177
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 178
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 180
    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 9
    .param p1, "y"    # F

    .line 455
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->getVerticalRange()[I

    move-result-object v7

    .line 456
    .local v7, "scrollbarRange":[I
    const/4 v8, 0x0

    aget v0, v7, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 457
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 461
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 462
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 460
    move-object v0, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    .line 463
    .local v0, "scrollingBy":I
    if-eqz v0, :cond_1

    .line 464
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 466
    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 467
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->destroyCallbacks()V

    .line 170
    :cond_1
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->setupCallbacks()V

    .line 174
    :cond_2
    return-void
.end method

.method hide(I)V
    .locals 4
    .param p1, "duration"    # I

    .line 253
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 259
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 513
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 505
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 277
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 278
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_2

    .line 290
    iget-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 293
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_2

    .line 294
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    .line 297
    :cond_2
    return-void

    .line 279
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 280
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 286
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 390
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 392
    .local v0, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 393
    .local v3, "insideHorizontalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    if-eqz v3, :cond_3

    .line 395
    :cond_0
    if-eqz v3, :cond_1

    .line 396
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    .line 398
    :cond_1
    if-eqz v0, :cond_2

    .line 399
    iput v2, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 403
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 404
    const/4 v1, 0x1

    goto :goto_1

    .line 406
    :cond_3
    const/4 v1, 0x0

    .line 408
    .end local v0    # "insideVerticalThumb":Z
    .end local v3    # "insideHorizontalThumb":Z
    .local v1, "handled":Z
    :goto_1
    goto :goto_2

    .end local v1    # "handled":Z
    :cond_4
    if-ne v0, v2, :cond_5

    .line 409
    const/4 v1, 0x1

    goto :goto_2

    .line 411
    :cond_5
    const/4 v1, 0x0

    .line 413
    .restart local v1    # "handled":Z
    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 452
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .line 418
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_5

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 424
    .local v0, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 425
    .local v3, "insideHorizontalThumb":Z
    if-nez v0, :cond_1

    if-eqz v3, :cond_4

    .line 426
    :cond_1
    if-eqz v3, :cond_2

    .line 427
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    .line 429
    :cond_2
    if-eqz v0, :cond_3

    .line 430
    iput v2, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 433
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 435
    .end local v0    # "insideVerticalThumb":Z
    .end local v3    # "insideHorizontalThumb":Z
    :cond_4
    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_6

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 437
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 438
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    goto :goto_1

    .line 440
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_8

    .line 441
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 442
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    if-ne v0, v1, :cond_7

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->horizontalScrollTo(F)V

    .line 445
    :cond_7
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_8

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->verticalScrollTo(F)V

    .line 449
    :cond_8
    :goto_1
    return-void
.end method

.method requestRedraw()V
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 192
    return-void
.end method

.method setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 195
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    .line 196
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 197
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 200
    :cond_0
    if-nez p1, :cond_1

    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 206
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 207
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 208
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_1

    .line 209
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 210
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    .line 212
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 213
    return-void
.end method

.method public show()V
    .locals 5

    .line 233
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 238
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 239
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 245
    :goto_0
    return-void
.end method

.method updateScrollPosition(II)V
    .locals 9
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 348
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 349
    .local v0, "verticalContentLength":I
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 350
    .local v1, "verticalVisibleLength":I
    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 353
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 354
    .local v2, "horizontalContentLength":I
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 355
    .local v5, "horizontalVisibleLength":I
    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 358
    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v6, :cond_3

    .line 359
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz v4, :cond_2

    .line 360
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 362
    :cond_2
    return-void

    .line 365
    :cond_3
    iget-boolean v3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    .line 366
    int-to-float v3, p2

    int-to-float v7, v1

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 367
    .local v3, "middleScreenPos":F
    int-to-float v7, v1

    mul-float v7, v7, v3

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 369
    mul-int v7, v1, v1

    div-int/2addr v7, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 373
    .end local v3    # "middleScreenPos":F
    :cond_4
    iget-boolean v3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v3, :cond_5

    .line 374
    int-to-float v3, p1

    int-to-float v7, v5

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 375
    .restart local v3    # "middleScreenPos":F
    int-to-float v6, v5

    mul-float v6, v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 377
    mul-int v6, v5, v5

    div-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 381
    .end local v3    # "middleScreenPos":F
    :cond_5
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz v3, :cond_6

    if-ne v3, v4, :cond_7

    .line 382
    :cond_6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 384
    :cond_7
    return-void
.end method
