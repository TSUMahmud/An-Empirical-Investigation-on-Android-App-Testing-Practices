.class public Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;
    }
.end annotation


# instance fields
.field private final mCardElevation:I

.field private final mCardView:Lio/github/hidroh/materialistic/widget/FlatCardView;

.field private final mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 243
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/widget/FlatCardView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardView:Lio/github/hidroh/materialistic/widget/FlatCardView;

    .line 245
    const v0, 0x7f090111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/widget/StoryView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 247
    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardElevation:I

    .line 248
    return-void
.end method

.method public static synthetic lambda$bindMoreOptions$0(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;Landroid/view/View;)Z
    .locals 1
    .param p1, "listener"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;
    .param p2, "v"    # Landroid/view/View;

    .line 302
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/StoryView;->getMoreOptions()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;->showMoreOptions(Landroid/view/View;)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$bindMoreOptions$1(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;Landroid/view/View;)V
    .locals 0
    .param p0, "listener"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;
    .param p1, "v"    # Landroid/view/View;

    .line 306
    invoke-interface {p0, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;->showMoreOptions(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public animateVote(I)V
    .locals 1
    .param p1, "score"    # I

    .line 276
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/StoryView;->animateVote(I)V

    .line 277
    return-void
.end method

.method public bind(Lio/github/hidroh/materialistic/data/WebItem;IZZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/WebItem;
    .param p2, "hotThreshold"    # I
    .param p3, "selected"    # Z
    .param p4, "cardViewEnabled"    # Z
    .param p5, "itemClickListener"    # Landroid/view/View$OnClickListener;
    .param p6, "commentClickListener"    # Landroid/view/View$OnClickListener;

    .line 256
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardView:Lio/github/hidroh/materialistic/widget/FlatCardView;

    if-eqz p3, :cond_0

    iget v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardElevation:I

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    iget v1, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardElevation:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 258
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryView;->setStory(Lio/github/hidroh/materialistic/data/WebItem;I)V

    .line 259
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p3}, Lio/github/hidroh/materialistic/widget/StoryView;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p6}, Lio/github/hidroh/materialistic/widget/StoryView;->setOnCommentClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method public bindMoreOptions(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;Z)V
    .locals 2
    .param p1, "listener"    # Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;
    .param p2, "allowLongClick"    # Z

    .line 300
    if-eqz p2, :cond_0

    .line 301
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;

    invoke-direct {v1, p0, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;-><init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/StoryView;->getMoreOptions()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$5H1X-AaEZJPIPZyOVjyh7FRMaYE;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$5H1X-AaEZJPIPZyOVjyh7FRMaYE;-><init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    return-void
.end method

.method public clear()V
    .locals 2

    .line 265
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardView:Lio/github/hidroh/materialistic/widget/FlatCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 266
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/StoryView;->reset()V

    .line 267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 269
    return-void
.end method

.method public flatten()V
    .locals 1

    .line 272
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mCardView:Lio/github/hidroh/materialistic/widget/FlatCardView;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/FlatCardView;->flatten()V

    .line 273
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 292
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/StoryView;->setChecked(Z)V

    .line 293
    return-void
.end method

.method public setFavorite(Z)V
    .locals 1
    .param p1, "favorite"    # Z

    .line 284
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/StoryView;->setFavorite(Z)V

    .line 285
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 296
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 297
    return-void
.end method

.method public setUpdated(Lio/github/hidroh/materialistic/data/Item;ZI)V
    .locals 1
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/Item;
    .param p2, "updated"    # Z
    .param p3, "change"    # I

    .line 288
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p1, p2, p3}, Lio/github/hidroh/materialistic/widget/StoryView;->setUpdated(Lio/github/hidroh/materialistic/data/Item;ZI)V

    .line 289
    return-void
.end method

.method public setViewed(Z)V
    .locals 1
    .param p1, "viewed"    # Z

    .line 280
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->mStoryView:Lio/github/hidroh/materialistic/widget/StoryView;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/StoryView;->setViewed(Z)V

    .line 281
    return-void
.end method
