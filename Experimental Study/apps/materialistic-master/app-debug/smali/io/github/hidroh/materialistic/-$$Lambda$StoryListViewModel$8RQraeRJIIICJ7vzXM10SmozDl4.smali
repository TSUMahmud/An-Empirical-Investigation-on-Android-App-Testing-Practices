.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/StoryListViewModel;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/StoryListViewModel;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;->f$0:Lio/github/hidroh/materialistic/StoryListViewModel;

    iput-object p2, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;->f$1:Ljava/lang/String;

    iput p3, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;->f$0:Lio/github/hidroh/materialistic/StoryListViewModel;

    iget-object v1, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;->f$1:Ljava/lang/String;

    iget v2, p0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;->f$2:I

    invoke-static {v0, v1, v2}, Lio/github/hidroh/materialistic/StoryListViewModel;->lambda$refreshStories$2(Lio/github/hidroh/materialistic/StoryListViewModel;Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    return-object v0
.end method
