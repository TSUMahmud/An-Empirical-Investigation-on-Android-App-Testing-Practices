.class Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;
.super Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;
.source "FavoriteRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .line 128
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ItemTouchHelperCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 132
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mActionModeDelegate:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$ActionModeDelegate;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 140
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->dismiss(Landroid/view/View;I)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object v0

    .line 144
    .local v0, "item":Lio/github/hidroh/materialistic/data/Favorite;
    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    iget-object v2, v1, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;->mSyncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;

    iget-object v1, v1, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/github/hidroh/materialistic/data/SyncScheduler;->scheduleSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :cond_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter$2;->this$0:Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 149
    .end local v0    # "item":Lio/github/hidroh/materialistic/data/Favorite;
    :goto_0
    return-void
.end method
