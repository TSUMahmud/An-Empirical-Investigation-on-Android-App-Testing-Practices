.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;ZLio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;->f$0:Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;

    iput-boolean p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;->f$1:Z

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;->f$2:Lio/github/hidroh/materialistic/data/Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;->f$0:Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;->f$1:Z

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SubmissionRecyclerViewAdapter$5QA88j7MeK64PM-MYyao0iC6qJc;->f$2:Lio/github/hidroh/materialistic/data/Item;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;->lambda$bind$0(Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;ZLio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V

    return-void
.end method
