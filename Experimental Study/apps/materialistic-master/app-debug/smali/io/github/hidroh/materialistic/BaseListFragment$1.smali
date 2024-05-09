.class Lio/github/hidroh/materialistic/BaseListFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/BaseListFragment;

.field final synthetic val$divider:I

.field final synthetic val$horizontalMargin:I

.field final synthetic val$verticalMargin:I


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/BaseListFragment;III)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/BaseListFragment;

    .line 67
    iput-object p1, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->this$0:Lio/github/hidroh/materialistic/BaseListFragment;

    iput p2, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->val$horizontalMargin:I

    iput p3, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->val$verticalMargin:I

    iput p4, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->val$divider:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->this$0:Lio/github/hidroh/materialistic/BaseListFragment;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseListFragment;->getAdapter()Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->isCardViewEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->val$horizontalMargin:I

    iget v2, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->val$verticalMargin:I

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 74
    :cond_0
    iget v0, p0, Lio/github/hidroh/materialistic/BaseListFragment$1;->val$divider:I

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    :goto_0
    return-void
.end method
