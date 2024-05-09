.class abstract Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    .local p0, "this":Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter<TVH;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .local p0, "this":Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter<TVH;>;"
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    return-void
.end method

.method public detach(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .local p0, "this":Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;, "Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter<TVH;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/RecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    return-void
.end method
