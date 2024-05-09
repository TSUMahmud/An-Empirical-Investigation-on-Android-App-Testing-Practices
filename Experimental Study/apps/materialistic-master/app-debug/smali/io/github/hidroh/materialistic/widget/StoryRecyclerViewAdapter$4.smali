.class Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;
.super Ljava/lang/Object;
.source "StoryRecyclerViewAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


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

    .line 391
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;->val$items:[Lio/github/hidroh/materialistic/data/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public onInserted(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 394
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mAdded:Landroidx/collection/ArraySet;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;->val$items:[Lio/github/hidroh/materialistic/data/Item;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->notifyUpdated()V

    .line 396
    return-void
.end method

.method public onMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 405
    if-ge p2, p1, :cond_0

    .line 406
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$4;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mPromoted:Landroidx/collection/ArrayMap;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mItems:Landroidx/recyclerview/widget/SortedList;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_0
    return-void
.end method

.method public onRemoved(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 401
    return-void
.end method
