.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/WebItem;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;->f$0:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;->f$0:Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$ListRecyclerViewAdapter$FYMKx79IBGrlSn0PfJL31q6MfIY;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;->lambda$onBindViewHolder$2(Lio/github/hidroh/materialistic/widget/ListRecyclerViewAdapter;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V

    return-void
.end method
