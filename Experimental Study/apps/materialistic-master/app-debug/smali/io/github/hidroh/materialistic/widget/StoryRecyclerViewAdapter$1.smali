.class Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    .line 70
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 73
    if-lez p3, :cond_0

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 75
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 74
    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->markAsViewed(I)V

    .line 77
    :cond_0
    return-void
.end method
