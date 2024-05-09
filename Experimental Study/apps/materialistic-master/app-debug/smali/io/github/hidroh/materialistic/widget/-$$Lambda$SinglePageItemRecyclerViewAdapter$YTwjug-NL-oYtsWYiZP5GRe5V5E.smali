.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

.field private final synthetic f$2:Lio/github/hidroh/materialistic/data/Item;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;->f$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;->f$1:Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    iput-object p3, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;->f$2:Lio/github/hidroh/materialistic/data/Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;->f$0:Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;->f$1:Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$SinglePageItemRecyclerViewAdapter$YTwjug-NL-oYtsWYiZP5GRe5V5E;->f$2:Lio/github/hidroh/materialistic/data/Item;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;->lambda$bindToggle$0(Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;Lio/github/hidroh/materialistic/widget/ToggleItemViewHolder;Lio/github/hidroh/materialistic/data/Item;Landroid/view/View;)V

    return-void
.end method
