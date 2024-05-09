.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;->f$0:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;->f$1:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;->f$0:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$ItemViewHolder$jSNfQaR50mqovaq0NaSyZBCsT7E;->f$1:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;->lambda$bindMoreOptions$0(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
