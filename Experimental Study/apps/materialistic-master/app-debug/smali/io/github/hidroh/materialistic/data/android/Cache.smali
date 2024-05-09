.class public final Lio/github/hidroh/materialistic/data/android/Cache;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lio/github/hidroh/materialistic/data/LocalCache;


# instance fields
.field private final database:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

.field private final mainScheduler:Lrx/Scheduler;

.field private final readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

.field private final readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

.field private final savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabase;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;Lrx/Scheduler;)V
    .locals 1
    .param p1, "database"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .param p2, "savedStoriesDao"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;
    .param p3, "readStoriesDao"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;
    .param p4, "readableDao"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;
    .param p5, "mainScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savedStoriesDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readStoriesDao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readableDao"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainScheduler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/android/Cache;->database:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/android/Cache;->savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/android/Cache;->readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    iput-object p4, p0, Lio/github/hidroh/materialistic/data/android/Cache;->readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    iput-object p5, p0, Lio/github/hidroh/materialistic/data/android/Cache;->mainScheduler:Lrx/Scheduler;

    return-void
.end method

.method public static final synthetic access$getDatabase$p(Lio/github/hidroh/materialistic/data/android/Cache;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/android/Cache;

    .line 27
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache;->database:Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    return-object v0
.end method


# virtual methods
.method public getReadability(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache;->readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;->selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache;->savedStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache;->readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;->selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putReadability(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache;->readableDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;

    new-instance v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;

    invoke-direct {v1, p1, p2}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadableDao;->insert(Lio/github/hidroh/materialistic/data/MaterialisticDatabase$Readable;)V

    .line 38
    return-void
.end method

.method public setViewed(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache;->readStoriesDao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;

    new-instance v1, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStoriesDao;->insert(Lio/github/hidroh/materialistic/data/MaterialisticDatabase$ReadStory;)V

    .line 44
    nop

    .line 47
    nop

    .line 44
    nop

    .line 46
    nop

    .line 44
    nop

    .line 45
    nop

    .line 44
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 45
    new-instance v1, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$1;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$1;-><init>(Lio/github/hidroh/materialistic/data/android/Cache;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/android/Cache;->mainScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 47
    new-instance v1, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$2;-><init>(Lio/github/hidroh/materialistic/data/android/Cache;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 48
    return-void
.end method
