.class Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;
.super Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
.source "SubmissionViewHolder.java"


# instance fields
.field final mTitleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 28
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    const v0, 0x7f09013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/SubmissionViewHolder;->mTitleTextView:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;->mCommentButton:Landroid/widget/TextView;

    const v1, 0x7f100194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    return-void
.end method
