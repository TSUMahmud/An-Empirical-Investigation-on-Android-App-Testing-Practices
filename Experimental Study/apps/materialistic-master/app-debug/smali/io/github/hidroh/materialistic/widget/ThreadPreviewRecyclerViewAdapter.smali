.class public Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.source "ThreadPreviewRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<",
        "Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExpanded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLevelIndicatorWidth:I

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/ItemManager;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 1
    .param p1, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 42
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mItems:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mExpanded:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static synthetic lambda$bind$0(Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "v"    # Landroid/view/View;

    .line 96
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->openItem(Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method

.method public static synthetic lambda$bind$1(Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 105
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getParentItem()Lio/github/hidroh/materialistic/data/Item;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 107
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 108
    return-void
.end method

.method private openItem(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 118
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    .line 35
    check-cast p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method

.method protected bind(Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 84
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 85
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 87
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getBy()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mUsername:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 86
    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mMoreButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "comment"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$ThreadPreviewRecyclerViewAdapter$kKuZkUmG3P1X7NCDZhJKp-ZMjgI;

    invoke-direct {v2, p0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ThreadPreviewRecyclerViewAdapter$kKuZkUmG3P1X7NCDZhJKp-ZMjgI;-><init>(Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :goto_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mExpanded:Ljava/util/List;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getParentItem()Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mExpanded:Ljava/util/List;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$ThreadPreviewRecyclerViewAdapter$G_7TTnxulUU3ZM_j2quKh_IapKo;

    invoke-direct {v1, p0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ThreadPreviewRecyclerViewAdapter$G_7TTnxulUU3ZM_j2quKh_IapKo;-><init>(Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_3
    return-void
.end method

.method protected getItem(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "position"    # I

    .line 114
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .line 79
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f07009f

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->getDimensionInDp(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mLevelIndicatorWidth:I

    .line 52
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 62
    new-instance v0, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 63
    const v2, 0x7f0c005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .local v0, "holder":Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 66
    .local v1, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v2, p0, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;->mLevelIndicatorWidth:I

    mul-int v2, v2, p2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v2, v0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 58
    return-void
.end method
