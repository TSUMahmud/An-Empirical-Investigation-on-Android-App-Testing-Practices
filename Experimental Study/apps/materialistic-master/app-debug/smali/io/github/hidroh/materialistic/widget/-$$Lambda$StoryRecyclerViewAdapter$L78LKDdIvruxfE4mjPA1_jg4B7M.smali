.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/Preferences$Observer;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

.field private final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;->f$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final onPreferenceChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;->f$0:Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$StoryRecyclerViewAdapter$L78LKDdIvruxfE4mjPA1_jg4B7M;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p1, p2}, Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;->lambda$onAttachedToRecyclerView$1(Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;Landroidx/recyclerview/widget/RecyclerView;IZ)V

    return-void
.end method
