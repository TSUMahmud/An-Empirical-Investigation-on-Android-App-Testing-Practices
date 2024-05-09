.class Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->setUpdated([Lio/github/hidroh/materialistic/data/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

.field final synthetic val$items:[Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;[Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    .line 370
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->val$items:[Lio/github/hidroh/materialistic/data/Item;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 389
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->areItemsTheSame(II)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 5
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 383
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v0

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->val$items:[Lio/github/hidroh/materialistic/data/Item;

    aget-object v2, v2, p2

    .line 384
    invoke-interface {v2}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0
.end method

.method public getNewListSize()I
    .locals 1

    .line 378
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->val$items:[Lio/github/hidroh/materialistic/data/Item;

    array-length v0, v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 373
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$5;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result v0

    return v0
.end method
