.class public Lio/github/hidroh/materialistic/data/AlgoliaClient;
.super Ljava/lang/Object;
.source "AlgoliaClient.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ItemManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/AlgoliaClient$Hit;,
        Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;,
        Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;
    }
.end annotation


# static fields
.field private static final BASE_API_URL:Ljava/lang/String; = "https://hn.algolia.com/api/v1/"

.field public static final HOST:Ljava/lang/String; = "hn.algolia.com"

.field static final MIN_CREATED_AT:Ljava/lang/String; = "created_at_i>"

.field public static sSortByTime:Z


# instance fields
.field mHackerNewsClient:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field mMainThreadScheduler:Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main"
    .end annotation
.end field

.field mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    return-void
.end method

.method public constructor <init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;)V
    .locals 3
    .param p1, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->rxEnabled(Z)Lio/github/hidroh/materialistic/data/RestServiceFactory;

    move-result-object v0

    const-string v1, "https://hn.algolia.com/api/v1/"

    const-class v2, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    .line 48
    return-void
.end method

.method public static synthetic lambda$Th0ACfYquLhEygP7-IjMvrEagZE(Lio/github/hidroh/materialistic/data/AlgoliaClient;Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;)[Lio/github/hidroh/materialistic/data/Item;
    .locals 0

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;->toItems(Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getStories$0(Lio/github/hidroh/materialistic/data/ResponseListener;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "listener"    # Lio/github/hidroh/materialistic/data/ResponseListener;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-interface {p0, v0}, Lio/github/hidroh/materialistic/data/ResponseListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private toItems(Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;)[Lio/github/hidroh/materialistic/data/Item;
    .locals 6
    .param p1, "algoliaHits"    # Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;

    .line 93
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    new-array v0, v0, [Lio/github/hidroh/materialistic/data/Item;

    return-object v0

    .line 96
    :cond_0
    iget-object v1, p1, Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;->hits:[Lio/github/hidroh/materialistic/data/AlgoliaClient$Hit;

    .line 97
    .local v1, "hits":[Lio/github/hidroh/materialistic/data/AlgoliaClient$Hit;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_0
    new-array v0, v0, [Lio/github/hidroh/materialistic/data/Item;

    .line 98
    .local v0, "stories":[Lio/github/hidroh/materialistic/data/Item;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 100
    new-instance v3, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    aget-object v4, v1, v2

    iget-object v4, v4, Lio/github/hidroh/materialistic/data/AlgoliaClient$Hit;->objectID:Ljava/lang/String;

    .line 101
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/github/hidroh/materialistic/data/HackerNewsItem;-><init>(J)V

    .line 102
    .local v3, "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Lio/github/hidroh/materialistic/data/HackerNewsItem;->rank:I

    .line 103
    aput-object v3, v0, v2

    .line 98
    .end local v3    # "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getItem(Ljava/lang/String;I)Lio/github/hidroh/materialistic/data/Item;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mHackerNewsClient:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v0, p1, p2}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/github/hidroh/materialistic/data/ResponseListener<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "listener":Lio/github/hidroh/materialistic/data/ResponseListener;, "Lio/github/hidroh/materialistic/data/ResponseListener<Lio/github/hidroh/materialistic/data/Item;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mHackerNewsClient:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v0, p1, p2, p3}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 66
    return-void
.end method

.method public getStories(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/github/hidroh/materialistic/data/ResponseListener<",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p3, "listener":Lio/github/hidroh/materialistic/data/ResponseListener;, "Lio/github/hidroh/materialistic/data/ResponseListener<[Lio/github/hidroh/materialistic/data/Item;>;"
    if-nez p3, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;->searchRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$Th0ACfYquLhEygP7-IjMvrEagZE;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$Th0ACfYquLhEygP7-IjMvrEagZE;-><init>(Lio/github/hidroh/materialistic/data/AlgoliaClient;)V

    .line 57
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mMainThreadScheduler:Lrx/Scheduler;

    .line 58
    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$KMZhlTTI1R0OKmC1tKwBlw1SJ0w;

    invoke-direct {v1, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$KMZhlTTI1R0OKmC1tKwBlw1SJ0w;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$3ZFtyZsZUPaeacRxUmdhF22UW68;

    invoke-direct {v2, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$AlgoliaClient$3ZFtyZsZUPaeacRxUmdhF22UW68;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 59
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 61
    return-void
.end method

.method public getStories(Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;->search(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/data/AlgoliaClient;->toItems(Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    new-array v1, v1, [Lio/github/hidroh/materialistic/data/Item;

    return-object v1
.end method

.method protected search(Ljava/lang/String;)Lretrofit2/Call;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;",
            ">;"
        }
    .end annotation

    .line 88
    sget-boolean v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;->searchByDate(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;->search(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected searchRx(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/AlgoliaClient$AlgoliaHits;",
            ">;"
        }
    .end annotation

    .line 84
    sget-boolean v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;->searchByDateRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;->searchRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0
.end method
