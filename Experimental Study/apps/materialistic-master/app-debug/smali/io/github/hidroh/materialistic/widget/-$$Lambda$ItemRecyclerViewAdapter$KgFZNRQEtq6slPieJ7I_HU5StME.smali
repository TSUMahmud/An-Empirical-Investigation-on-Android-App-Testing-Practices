.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/Item;

.field private final synthetic f$2:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$1:Lio/github/hidroh/materialistic/data/Item;

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$2:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    iput p4, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$1:Lio/github/hidroh/materialistic/data/Item;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$2:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    iget v3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$KgFZNRQEtq6slPieJ7I_HU5StME;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->lambda$toggleCollapsibleContent$1(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method
