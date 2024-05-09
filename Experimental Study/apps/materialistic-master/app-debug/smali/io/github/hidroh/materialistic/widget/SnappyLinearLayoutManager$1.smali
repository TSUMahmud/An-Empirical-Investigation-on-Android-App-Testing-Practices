.class Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SnappyLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager$1;->this$0:Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager$1;->this$0:Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;

    .line 49
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .line 54
    const/4 v0, -0x1

    return v0
.end method
