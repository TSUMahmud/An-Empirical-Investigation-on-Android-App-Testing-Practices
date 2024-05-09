.class Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "SinglePageItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;II)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .line 84
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 92
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 93
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    return v1

    .line 94
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 119
    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 111
    move-object v8, p3

    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    move-object v9, p0

    invoke-virtual {p0, p3}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;->getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v1

    mul-float v10, v0, v1

    .line 112
    .local v10, "swipeWidth":F
    neg-float v0, v10

    move/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 113
    .end local p4    # "dX":F
    .local v0, "dX":F
    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 114
    .end local v0    # "dX":F
    .local v11, "dX":F
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v11

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 115
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 102
    .local v0, "position":I
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v1

    .line 103
    .local v1, "item":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 105
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->toggleKids(Lio/github/hidroh/materialistic/data/Item;)V

    .line 107
    :cond_0
    return-void
.end method
