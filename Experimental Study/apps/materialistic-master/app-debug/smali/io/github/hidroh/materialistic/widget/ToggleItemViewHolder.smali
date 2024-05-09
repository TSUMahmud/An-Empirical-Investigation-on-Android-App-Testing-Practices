.class public Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;
.super Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;
.source "ToggleItemViewHolder.java"


# instance fields
.field mLevel:Landroid/view/View;

.field mToggle:Landroid/widget/TextView;

.field mToggleButton:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 30
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggleButton:Landroid/view/View;

    .line 32
    const v0, 0x7f09013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mToggle:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f090098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;->mLevel:Landroid/view/View;

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "payload"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 38
    return-void
.end method
