.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

.field private final synthetic f$2:Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;->f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;->f$1:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;->f$2:Lio/github/hidroh/materialistic/data/Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;->f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;->f$1:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$mr-_DZ6GHPStmI3-PL6pPJ6CLlY;->f$2:Lio/github/hidroh/materialistic/data/Item;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->lambda$bindActions$3(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter$ItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V

    return-void
.end method
