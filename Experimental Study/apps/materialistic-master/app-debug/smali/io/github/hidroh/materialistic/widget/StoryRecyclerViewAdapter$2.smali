.class Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;
.super Landroidx/recyclerview/widget/SortedListAdapterCallback;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/SortedListAdapterCallback<",
        "Lio/github/hidroh/materialistic/data/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
    .param p2, "x0"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 80
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SortedListAdapterCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)Z
    .locals 2
    .param p1, "item1"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "item2"    # Lio/github/hidroh/materialistic/data/Item;

    .line 88
    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;->areItemsTheSame(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v0

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    check-cast p2, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;->areContentsTheSame(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)Z
    .locals 5
    .param p1, "item1"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "item2"    # Lio/github/hidroh/materialistic/data/Item;

    .line 93
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v0

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    check-cast p2, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;->areItemsTheSame(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)Z

    move-result p1

    return p1
.end method

.method public compare(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)I
    .locals 2
    .param p1, "o1"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "o2"    # Lio/github/hidroh/materialistic/data/Item;

    .line 83
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getRank()I

    move-result v0

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/Item;->getRank()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 80
    check-cast p1, Lio/github/hidroh/materialistic/data/Item;

    check-cast p2, Lio/github/hidroh/materialistic/data/Item;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$2;->compare(Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/data/Item;)I

    move-result p1

    return p1
.end method
