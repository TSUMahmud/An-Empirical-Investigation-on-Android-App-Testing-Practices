.class Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;
.super Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;
.source "StoryRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "swipePreferences"    # [Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 148
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-direct {p0, p2, p3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;-><init>(Landroid/content/Context;[Lio/github/hidroh/materialistic/Preferences$SwipeAction;)V

    return-void
.end method

.method private checkSwipeDir(IILio/github/hidroh/materialistic/Preferences$SwipeAction;Lio/github/hidroh/materialistic/data/Item;)I
    .locals 2
    .param p1, "swipeDirs"    # I
    .param p2, "swipeDir"    # I
    .param p3, "action"    # Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .param p4, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 187
    sget-object v0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$6;->$SwitchMap$io$github$hidroh$materialistic$Preferences$SwipeAction:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 196
    or-int/2addr p1, p2

    goto :goto_0

    .line 189
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {p4}, Lio/github/hidroh/materialistic/data/Item;->isVoted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p4}, Lio/github/hidroh/materialistic/data/Item;->isPendingVoted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    or-int/2addr p1, p2

    .line 199
    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method public getSwipeDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 151
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 152
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 155
    :cond_0
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v2

    iput-boolean v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->mSaved:Z

    .line 156
    const/4 v2, 0x4

    iget-object v3, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v3, v3, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    invoke-virtual {v3}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getLeftSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->checkSwipeDir(IILio/github/hidroh/materialistic/Preferences$SwipeAction;Lio/github/hidroh/materialistic/data/Item;)I

    move-result v2

    const/16 v3, 0x8

    iget-object v4, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v4, v4, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->mCallback:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;

    .line 157
    invoke-virtual {v4}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getRightSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4, v0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->checkSwipeDir(IILio/github/hidroh/materialistic/Preferences$SwipeAction;Lio/github/hidroh/materialistic/data/Item;)I

    move-result v1

    or-int/2addr v1, v2

    .line 156
    return v1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 162
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getLeftSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$ItemTouchHelperCallback;->getRightSwipeAction()Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    move-result-object v0

    .line 164
    .local v0, "action":Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v1

    .line 165
    .local v1, "item":Lio/github/hidroh/materialistic/data/Item;
    if-nez v1, :cond_1

    .line 166
    return-void

    .line 168
    :cond_1
    sget-object v2, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$6;->$SwitchMap$io$github$hidroh$materialistic$Preferences$SwipeAction:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 180
    :pswitch_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 181
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v2, v2, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/github/hidroh/materialistic/AppUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :pswitch_1
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 177
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {v2, v1, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->vote(Lio/github/hidroh/materialistic/data/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 178
    goto :goto_1

    .line 173
    :pswitch_2
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {v2, v1, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->refresh(Lio/github/hidroh/materialistic/data/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 174
    goto :goto_1

    .line 170
    :pswitch_3
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter$3;->this$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->toggleSave(Lio/github/hidroh/materialistic/data/Item;)V

    .line 171
    nop

    .line 184
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
