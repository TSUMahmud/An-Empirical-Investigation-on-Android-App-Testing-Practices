.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$dU6guRvi6OmIcloXoLIagyNCJ18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/StoryListViewModel;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/StoryListViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$dU6guRvi6OmIcloXoLIagyNCJ18;->f$0:Lio/github/hidroh/materialistic/StoryListViewModel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$dU6guRvi6OmIcloXoLIagyNCJ18;->f$0:Lio/github/hidroh/materialistic/StoryListViewModel;

    check-cast p1, [Lio/github/hidroh/materialistic/data/Item;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/StoryListViewModel;->lambda$refreshStories$3(Lio/github/hidroh/materialistic/StoryListViewModel;[Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method
