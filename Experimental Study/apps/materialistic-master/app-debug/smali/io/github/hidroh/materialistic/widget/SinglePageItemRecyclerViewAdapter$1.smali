.class Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SinglePageItemRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    .line 52
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter$1;->this$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->unlockBinding()V

    .line 58
    :cond_0
    return-void
.end method
