.class public Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.source "SubmissionRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<",
        "Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:[Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/ItemManager;[Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0
    .param p1, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;
    .param p2, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 36
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;)V

    .line 37
    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    .line 38
    return-void
.end method

.method public static synthetic lambda$bind$0(Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;ZLio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V
    .locals 0
    .param p1, "isComment"    # Z
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p3, "v"    # Landroid/view/View;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->openPreview(Lio/github/hidroh/materialistic/data/Item;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->openItem(Lio/github/hidroh/materialistic/data/Item;)V

    .line 97
    :goto_0
    return-void
.end method

.method private openItem(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 101
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method private openPreview(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 106
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/ThreadPreviewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    .line 32
    check-cast p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method

.method protected bind(Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 8
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 69
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 70
    if-nez p2, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 74
    .local v0, "isComment":Z
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, v2}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3, v3}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 76
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    const v2, 0x7f100195

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0002

    .line 82
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    const v2, 0x7f100194

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :goto_0
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    const/16 v4, 0x8

    if-lez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;

    invoke-direct {v2, p0, v0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;-><init>(Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;ZLio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method protected getItem(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "position"    # I

    .line 64
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    array-length v0, v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 44
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 54
    new-instance v0, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 50
    return-void
.end method
