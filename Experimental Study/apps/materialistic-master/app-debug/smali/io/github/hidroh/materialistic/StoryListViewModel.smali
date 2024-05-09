.class public Lio/github/hidroh/materialistic/StoryListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "StoryListViewModel.java"


# instance fields
.field private mIoThreadScheduler:Lrx/Scheduler;

.field private mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

.field private mItems:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/core/util/Pair<",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getStories$0(Lio/github/hidroh/materialistic/StoryListViewModel;Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v0, p1, p2}, Lio/github/hidroh/materialistic/data/ItemManager;->getStories(Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$getStories$1(Lio/github/hidroh/materialistic/StoryListViewModel;[Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0
    .param p1, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 30
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/StoryListViewModel;->setItems([Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method

.method public static synthetic lambda$refreshStories$2(Lio/github/hidroh/materialistic/StoryListViewModel;Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v0, p1, p2}, Lio/github/hidroh/materialistic/data/ItemManager;->getStories(Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$refreshStories$3(Lio/github/hidroh/materialistic/StoryListViewModel;[Lio/github/hidroh/materialistic/data/Item;)V
    .locals 0
    .param p1, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 42
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/StoryListViewModel;->setItems([Lio/github/hidroh/materialistic/data/Item;)V

    return-void
.end method


# virtual methods
.method public getStories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/core/util/Pair<",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItems:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItems:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$hfQuXTh6BF8mOaKgfYZTArlVyZ4;

    invoke-direct {v0, p0, p1, p2}, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$hfQuXTh6BF8mOaKgfYZTArlVyZ4;-><init>(Lio/github/hidroh/materialistic/StoryListViewModel;Ljava/lang/String;I)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mIoThreadScheduler:Lrx/Scheduler;

    .line 28
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 29
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$w-8nk4ceFTR01h9GaHfnQzmlLxw;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$w-8nk4ceFTR01h9GaHfnQzmlLxw;-><init>(Lio/github/hidroh/materialistic/StoryListViewModel;)V

    .line 30
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 32
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItems:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public inject(Lio/github/hidroh/materialistic/data/ItemManager;Lrx/Scheduler;)V
    .locals 0
    .param p1, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;
    .param p2, "ioThreadScheduler"    # Lrx/Scheduler;

    .line 20
    iput-object p1, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 21
    iput-object p2, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mIoThreadScheduler:Lrx/Scheduler;

    .line 22
    return-void
.end method

.method public refreshStories(Ljava/lang/String;I)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I

    .line 36
    iget-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItems:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;

    invoke-direct {v0, p0, p1, p2}, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$8RQraeRJIIICJ7vzXM10SmozDl4;-><init>(Lio/github/hidroh/materialistic/StoryListViewModel;Ljava/lang/String;I)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mIoThreadScheduler:Lrx/Scheduler;

    .line 40
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 41
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$dU6guRvi6OmIcloXoLIagyNCJ18;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$StoryListViewModel$dU6guRvi6OmIcloXoLIagyNCJ18;-><init>(Lio/github/hidroh/materialistic/StoryListViewModel;)V

    .line 42
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 44
    return-void

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method setItems([Lio/github/hidroh/materialistic/data/Item;)V
    .locals 2
    .param p1, "items"    # [Lio/github/hidroh/materialistic/data/Item;

    .line 47
    iget-object v0, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/github/hidroh/materialistic/StoryListViewModel;->mItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lio/github/hidroh/materialistic/data/Item;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
