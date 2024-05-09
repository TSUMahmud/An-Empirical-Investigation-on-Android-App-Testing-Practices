.class Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mCommentButton:Landroid/widget/TextView;

.field mContentTextView:Landroid/widget/TextView;

.field mContentView:Landroid/view/View;

.field mIsFooter:Z

.field mMoreButton:Landroid/view/View;

.field mPostedTextView:Landroid/widget/TextView;

.field mReadMoreTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 285
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 286
    const v0, 0x7f0900da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mPostedTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 288
    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentTextView:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0900c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mReadMoreTextView:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f090042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mMoreButton:Landroid/view/View;

    .line 293
    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mContentView:Landroid/view/View;

    .line 294
    return-void
.end method

.method constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "payload"    # Ljava/lang/Object;

    .line 297
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mIsFooter:Z

    .line 299
    return-void
.end method


# virtual methods
.method isFooter()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mIsFooter:Z

    return v0
.end method
