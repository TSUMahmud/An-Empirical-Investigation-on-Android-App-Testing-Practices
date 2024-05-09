.class public Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.source "SinglePageItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<",
        "Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOOTER:I = -0x1


# instance fields
.field private final TOGGLE:Ljava/lang/Object;

.field private final mAutoExpand:Z

.field private mColorCoded:Z

.field private mColorOpacity:I

.field private mColors:Landroid/content/res/TypedArray;

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mLevelIndicatorWidth:I

.field private mLock:[I

.field mResourcesProvider:Lio/github/hidroh/materialistic/ResourcesProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/ItemManager;Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;Z)V
    .locals 1
    .param p1, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;
    .param p2, "state"    # Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;
    .param p3, "autoExpand"    # Z

    .line 73
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->TOGGLE:Ljava/lang/Object;

    .line 52
    new-instance v0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$1;-><init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLevelIndicatorWidth:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorCoded:Z

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorOpacity:I

    .line 74
    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    .line 75
    iput-boolean p3, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mAutoExpand:Z

    .line 76
    return-void
.end method

.method private bindKids(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 295
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggleButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mAutoExpand:Z

    if-eqz v0, :cond_1

    .line 300
    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->expand(Lio/github/hidroh/materialistic/data/Item;)V

    .line 302
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->bindToggle(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Z)V

    .line 303
    return-void
.end method

.method private bindToggle(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Z)V
    .locals 2
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "expanded"    # Z

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->changeToggleState(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Z)V

    .line 318
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggleButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggleButton:Landroid/view/View;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;

    invoke-direct {v1, p0, p1, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;-><init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-void
.end method

.method private changeToggleState(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Z)V
    .locals 6
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "expanded"    # Z

    .line 326
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggle:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 327
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggle:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const v1, 0x7f080078

    goto :goto_0

    :cond_0
    const v1, 0x7f080079

    :goto_0
    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 330
    return-void
.end method

.method private collapse(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 352
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->collapse(Lio/github/hidroh/materialistic/data/Item;)[I

    move-result-object v0

    .line 353
    .local v0, "collapsedState":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 354
    return-void
.end method

.method private expand(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->expand(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    .line 334
    return-void
.end method

.method private expand(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "callback"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;

    .line 337
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$ZUPfNk5IUV3u5oChxY9G01YXpTo;

    invoke-direct {v1, p0, p1, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$ZUPfNk5IUV3u5oChxY9G01YXpTo;-><init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method private getThreadColor(I)I
    .locals 3
    .param p1, "itemViewType"    # I

    .line 291
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorCoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColors:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int v2, p1, v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$bindToggle$0(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "v"    # Landroid/view/View;

    .line 320
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->changeToggleState(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Z)V

    .line 321
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->toggleKids(Lio/github/hidroh/materialistic/data/Item;)V

    .line 322
    return-void
.end method

.method public static synthetic lambda$expand$2(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "callback"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;

    .line 341
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->expand(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v0

    .line 345
    .local v0, "index":I
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 346
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->TOGGLE:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 347
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$_3Tp4Ay5W6oDoDkera_310EUvYw;

    invoke-direct {v2, p0, v0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$_3Tp4Ay5W6oDoDkera_310EUvYw;-><init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 348
    return-void
.end method

.method public static synthetic lambda$null$1(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "callback"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;

    .line 347
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    return-void
.end method

.method private setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "callback"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;

    .line 357
    if-eqz p2, :cond_0

    .line 358
    invoke-interface {p2, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;->onPosition(I)V

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 81
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f07009f

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->getDimensionInDp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLevelIndicatorWidth:I

    .line 82
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mResourcesProvider:Lio/github/hidroh/materialistic/ResourcesProvider;

    const/high16 v1, 0x7f030000

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/ResourcesProvider;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColors:Landroid/content/res/TypedArray;

    .line 83
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, p0, v2, v3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;-><init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;II)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 122
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 123
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 124
    return-void
.end method

.method protected bridge synthetic bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    .line 48
    check-cast p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method

.method protected bind(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 267
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 268
    if-nez p2, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    .line 273
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItemViewType(I)I

    move-result v3

    invoke-direct {p0, v3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getThreadColor(I)I

    move-result v3

    .line 272
    invoke-interface {p2, v1, v2, v3}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 274
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->bindKids(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 275
    return-void
.end method

.method protected bridge synthetic clear(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;)V
    .locals 0

    .line 48
    check-cast p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->clear(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;)V

    return-void
.end method

.method protected clear(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    .line 261
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->clear(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;)V

    .line 262
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggleButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 129
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 130
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColors:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 132
    return-void
.end method

.method protected getItem(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "position"    # I

    .line 244
    if-ltz p1, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->get(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    return-object v0

    .line 245
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 190
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 181
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 182
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, -0x1

    return v1

    .line 185
    :cond_0
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getNextPosition(IILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "direction"    # I
    .param p3, "callback"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;

    .line 202
    if-gez p1, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 206
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-nez v0, :cond_1

    .line 207
    return-void

    .line 209
    :cond_1
    invoke-interface {v0, p2}, Lio/github/hidroh/materialistic/data/Item;->getNeighbour(I)J

    move-result-wide v1

    .line 210
    .local v1, "id":J
    const-wide/16 v3, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 232
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v3, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v3, v1, v2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(J)I

    move-result v3

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-direct {p0, v0, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->expand(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    goto :goto_0

    .line 226
    :pswitch_1
    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    .line 227
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v3, v1, v2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(J)I

    move-result v3

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    goto :goto_0

    .line 219
    :pswitch_2
    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 220
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v3, v1, v2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(J)I

    move-result v3

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    .line 224
    goto :goto_0

    .line 212
    :pswitch_3
    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    .line 213
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    goto :goto_0

    .line 215
    :cond_5
    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v3, v1, v2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(J)I

    move-result v3

    invoke-direct {p0, v3, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->setSelectedPosition(ILio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$PositionCallback;)V

    .line 217
    nop

    .line 240
    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initDisplayOptions(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->colorCodeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorCoded:Z

    .line 196
    invoke-static {p1}, Lio/github/hidroh/materialistic/Preferences;->colorCodeOpacity(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorOpacity:I

    .line 197
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->initDisplayOptions(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public lockBinding([I)V
    .locals 0
    .param p1, "lock"    # [I

    .line 279
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLock:[I

    .line 280
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 48
    check-cast p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 48
    check-cast p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 0

    .line 48
    check-cast p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "position"    # I

    .line 162
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->isFooter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLock:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    aget v2, v0, v1

    if-gt v2, p2, :cond_1

    const/4 v2, 0x1

    aget v0, v0, v2

    if-gt p2, v0, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->clear(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;)V

    .line 167
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorCoded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColors:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 170
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mLevel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mLevel:Landroid/view/View;

    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItemViewType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getThreadColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mLevel:Landroid/view/View;

    iget v1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mColorOpacity:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mLevel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_0
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V

    .line 177
    return-void
.end method

.method public onBindViewHolder(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->TOGGLE:Ljava/lang/Object;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 152
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v1, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->bindToggle(Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Z)V

    .line 155
    .end local v0    # "item":Lio/github/hidroh/materialistic/data/Item;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 158
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 136
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 137
    new-instance v1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    return-object v1

    .line 139
    :cond_0
    new-instance v1, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0056

    .line 140
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 141
    .local v0, "holder":Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 143
    .local v1, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLevelIndicatorWidth:I

    mul-int v2, v2, p2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-object v0
.end method

.method protected onItemLoaded(ILio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 253
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p2}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->indexOf(Lio/github/hidroh/materialistic/data/Item;)I

    move-result v0

    .line 254
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 257
    :cond_0
    return-void
.end method

.method toggleKids(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 307
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mState:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$SavedState;->isExpanded(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v0

    .line 308
    .local v0, "expanded":Z
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->isCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Lio/github/hidroh/materialistic/data/Item;->setCollapsed(Z)V

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->collapse(Lio/github/hidroh/materialistic/data/Item;)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->expand(Lio/github/hidroh/materialistic/data/Item;)V

    .line 314
    :goto_0
    return-void
.end method

.method unlockBinding()V
    .locals 5

    .line 284
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLock:[I

    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v0, v0, v1

    sub-int/2addr v4, v0

    add-int/2addr v4, v3

    invoke-virtual {p0, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->mLock:[I

    .line 288
    :cond_0
    return-void
.end method
