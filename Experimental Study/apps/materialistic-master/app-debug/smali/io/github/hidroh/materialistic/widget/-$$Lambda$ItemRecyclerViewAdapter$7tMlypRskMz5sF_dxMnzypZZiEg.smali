.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;->f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;->f$1:Lio/github/hidroh/materialistic/data/Item;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;->f$0:Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ItemRecyclerViewAdapter$7tMlypRskMz5sF_dxMnzypZZiEg;->f$1:Lio/github/hidroh/materialistic/data/Item;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;->lambda$null$2(Lio/github/hidroh/materialistic/widget/ItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/Item;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
