.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder$ShowMoreOptionsListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/Item;

.field private final synthetic f$2:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;->f$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;->f$1:Lio/github/hidroh/materialistic/data/Item;

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;->f$2:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final showMoreOptions(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;->f$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;->f$1:Lio/github/hidroh/materialistic/data/Item;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$Vjb6CX_bTdioZUD21Uh-c8f-3Ic;->f$2:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->lambda$bindItem$2(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method
