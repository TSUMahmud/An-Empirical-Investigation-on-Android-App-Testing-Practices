.class public Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;
.super Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.source "MultiPageItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter<",
        "Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOOTER:I = -0x1


# instance fields
.field private final mItems:[Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/ItemManager;[Lio/github/hidroh/materialistic/data/Item;)V
    .locals 3
    .param p1, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;
    .param p2, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 36
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;)V

    .line 37
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/hidroh/materialistic/data/Item;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    .line 38
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    array-length v1, p2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 39
    return-void
.end method

.method public static synthetic lambda$bind$0(Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "v"    # Landroid/view/View;

    .line 81
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->openItem(Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method

.method private openItem(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 91
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_ITEM:Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_OPEN_COMMENTS:Ljava/lang/String;

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 7
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 71
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->bind(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V

    .line 72
    if-nez p2, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 77
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 78
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x7f0f0000

    .line 79
    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$MultiPageItemRecyclerViewAdapter$n3jp4jAG1w8kthOdhrBVVf-jrqs;

    invoke-direct {v1, p0, p2}, Lio/github/hidroh/materialistic/widget/-$$Lambda$MultiPageItemRecyclerViewAdapter$n3jp4jAG1w8kthOdhrBVVf-jrqs;-><init>(Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_1
    return-void
.end method

.method protected getItem(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "position"    # I

    .line 66
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 58
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, -0x1

    return v0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .line 51
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->isFooter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->onBindViewHolder(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V

    .line 54
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 43
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 44
    new-instance v1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    return-object v1

    .line 46
    :cond_0
    new-instance v1, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0056

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
