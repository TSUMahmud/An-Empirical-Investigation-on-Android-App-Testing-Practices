.class public Lio/github/hidroh/materialistic/data/HackerNewsClient;
.super Ljava/lang/Object;
.source "HackerNewsClient.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ItemManager;
.implements Lio/github/hidroh/materialistic/data/UserManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;
    }
.end annotation


# static fields
.field static final BASE_API_URL:Ljava/lang/String; = "https://hacker-news.firebaseio.com/v0/"

.field public static final BASE_WEB_URL:Ljava/lang/String; = "https://news.ycombinator.com"

.field public static final HOST:Ljava/lang/String; = "hacker-news.firebaseio.com"

.field public static final WEB_ITEM_PATH:Ljava/lang/String; = "https://news.ycombinator.com/item?id=%s"


# instance fields
.field private final mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

.field mIoScheduler:Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "io"
    .end annotation
.end field

.field mMainThreadScheduler:Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main"
    .end annotation
.end field

.field private final mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

.field private final mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/SessionManager;Lio/github/hidroh/materialistic/data/FavoriteManager;)V
    .locals 3
    .param p1, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .param p2, "sessionManager"    # Lio/github/hidroh/materialistic/data/SessionManager;
    .param p3, "favoriteManager"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->rxEnabled(Z)Lio/github/hidroh/materialistic/data/RestServiceFactory;

    move-result-object v0

    const-string v1, "https://hacker-news.firebaseio.com/v0/"

    const-class v2, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 53
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    .line 54
    iput-object p3, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 55
    return-void
.end method

.method private getStoriesCall(Ljava/lang/String;I)Lretrofit2/Call;
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .line 190
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 192
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 193
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkNewStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->newStories()Lretrofit2/Call;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 195
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "jobs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "best"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "new"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "ask"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 217
    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 218
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkTopStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_7

    .line 213
    :pswitch_0
    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 214
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkBestStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->bestStories()Lretrofit2/Call;

    move-result-object v0

    .line 215
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :goto_2
    goto :goto_7

    .line 209
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :pswitch_1
    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 210
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkJobStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->jobStories()Lretrofit2/Call;

    move-result-object v0

    .line 211
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :goto_3
    goto :goto_7

    .line 205
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :pswitch_2
    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 206
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkAskStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->askStories()Lretrofit2/Call;

    move-result-object v0

    .line 207
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :goto_4
    goto :goto_7

    .line 201
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :pswitch_3
    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 202
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkShowStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->showStories()Lretrofit2/Call;

    move-result-object v0

    .line 203
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :goto_5
    goto :goto_7

    .line 197
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :pswitch_4
    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 198
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkNewStories()Lretrofit2/Call;

    move-result-object v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->newStories()Lretrofit2/Call;

    move-result-object v0

    .line 199
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :goto_6
    goto :goto_7

    .line 218
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :cond_8
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->topStories()Lretrofit2/Call;

    move-result-object v0

    .line 221
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<[I>;"
    :goto_7
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x17a79 -> :sswitch_4
        0x1a9a0 -> :sswitch_3
        0x2e15e4 -> :sswitch_2
        0x31dc56 -> :sswitch_1
        0x35dafd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStoriesObservable(Ljava/lang/String;I)Lrx/Observable;
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable<",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "jobs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "best"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "new"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "ask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 180
    if-ne p2, v1, :cond_6

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 181
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkTopStoriesRx()Lrx/Observable;

    move-result-object v0

    goto :goto_7

    .line 176
    :pswitch_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 177
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkBestStoriesRx()Lrx/Observable;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->bestStoriesRx()Lrx/Observable;

    move-result-object v0

    .line 178
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :goto_2
    goto :goto_7

    .line 172
    .end local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :pswitch_1
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 173
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkJobStoriesRx()Lrx/Observable;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->jobStoriesRx()Lrx/Observable;

    move-result-object v0

    .line 174
    .restart local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :goto_3
    goto :goto_7

    .line 168
    .end local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :pswitch_2
    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 169
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkAskStoriesRx()Lrx/Observable;

    move-result-object v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->askStoriesRx()Lrx/Observable;

    move-result-object v0

    .line 170
    .restart local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :goto_4
    goto :goto_7

    .line 164
    .end local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :pswitch_3
    if-ne p2, v1, :cond_4

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 165
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkShowStoriesRx()Lrx/Observable;

    move-result-object v0

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->showStoriesRx()Lrx/Observable;

    move-result-object v0

    .line 166
    .restart local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :goto_5
    goto :goto_7

    .line 160
    .end local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :pswitch_4
    if-ne p2, v1, :cond_5

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 161
    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkNewStoriesRx()Lrx/Observable;

    move-result-object v0

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->newStoriesRx()Lrx/Observable;

    move-result-object v0

    .line 162
    .restart local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :goto_6
    goto :goto_7

    .line 181
    .end local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :cond_6
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->topStoriesRx()Lrx/Observable;

    move-result-object v0

    .line 184
    .restart local v0    # "observable":Lrx/Observable;, "Lrx/Observable<[I>;"
    :goto_7
    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$3QuUgrfwZbWX62Nm8UNQAb4NypQ;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$3QuUgrfwZbWX62Nm8UNQAb4NypQ;-><init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x17a79 -> :sswitch_4
        0x1a9a0 -> :sswitch_3
        0x2e15e4 -> :sswitch_2
        0x31dc56 -> :sswitch_1
        0x35dafd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$3QuUgrfwZbWX62Nm8UNQAb4NypQ(Lio/github/hidroh/materialistic/data/HackerNewsClient;[I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 0

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->toItems([I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getItem$3(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;Lrx/Observable;)Lrx/Observable;
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "itemObservable"    # Lrx/Observable;

    .line 89
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mSessionManager:Lio/github/hidroh/materialistic/data/SessionManager;

    .line 90
    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/SessionManager;->isViewed(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mFavoriteManager:Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 91
    invoke-virtual {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->check(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;

    .line 89
    invoke-static {v0, v1, p2, v2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func3;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getItem$4(Lio/github/hidroh/materialistic/data/ResponseListener;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "listener"    # Lio/github/hidroh/materialistic/data/ResponseListener;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 104
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

.method public static synthetic lambda$getStories$0(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;I)Lrx/Observable;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->getStoriesObservable(Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getStories$1(Lio/github/hidroh/materialistic/data/ResponseListener;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "listener"    # Lio/github/hidroh/materialistic/data/ResponseListener;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 67
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

.method public static synthetic lambda$getUser$5(Lio/github/hidroh/materialistic/data/HackerNewsClient;Lio/github/hidroh/materialistic/data/UserItem;)Lio/github/hidroh/materialistic/data/UserItem;
    .locals 1
    .param p1, "userItem"    # Lio/github/hidroh/materialistic/data/UserItem;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/UserItem;->getSubmitted()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->toItems([I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/hidroh/materialistic/data/UserItem;->setSubmittedItems([Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 147
    :cond_0
    return-object p1
.end method

.method static synthetic lambda$getUser$6(Lio/github/hidroh/materialistic/data/ResponseListener;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "listener"    # Lio/github/hidroh/materialistic/data/ResponseListener;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 152
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

.method static synthetic lambda$null$2(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/hidroh/materialistic/data/HackerNewsItem;)Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 1
    .param p0, "isViewed"    # Ljava/lang/Boolean;
    .param p1, "favorite"    # Ljava/lang/Boolean;
    .param p2, "hackerNewsItem"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->preload()V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->setIsViewed(Z)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->setFavorite(Z)V

    .line 99
    :cond_0
    return-object p2
.end method

.method private toItems([I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 5
    .param p1, "ids"    # [I

    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 229
    .local v0, "items":[Lio/github/hidroh/materialistic/data/HackerNewsItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 230
    new-instance v2, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    aget v3, p1, v1

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lio/github/hidroh/materialistic/data/HackerNewsItem;-><init>(J)V

    .line 231
    .local v2, "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Lio/github/hidroh/materialistic/data/HackerNewsItem;->rank:I

    .line 232
    aput-object v2, v0, v1

    .line 229
    .end local v2    # "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getItem(Ljava/lang/String;I)Lio/github/hidroh/materialistic/data/Item;
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I

    .line 120
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->item(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 125
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    goto :goto_0

    .line 127
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkItem(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 131
    .restart local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/data/Item;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V
    .locals 4
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

    .line 72
    .local p3, "listener":Lio/github/hidroh/materialistic/data/ResponseListener;, "Lio/github/hidroh/materialistic/data/ResponseListener<Lio/github/hidroh/materialistic/data/Item;>;"
    if-nez p3, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->itemRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 80
    .local v0, "itemObservable":Lrx/Observable;, "Lrx/Observable<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    goto :goto_0

    .line 82
    .end local v0    # "itemObservable":Lrx/Observable;, "Lrx/Observable<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    :pswitch_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkItemRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 83
    .restart local v0    # "itemObservable":Lrx/Observable;, "Lrx/Observable<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    goto :goto_0

    .line 85
    .end local v0    # "itemObservable":Lrx/Observable;, "Lrx/Observable<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    :pswitch_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->cachedItemRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 86
    invoke-interface {v1, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->itemRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorResumeNext(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 89
    .restart local v0    # "itemObservable":Lrx/Observable;, "Lrx/Observable<Lio/github/hidroh/materialistic/data/HackerNewsItem;>;"
    :goto_0
    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;

    invoke-direct {v1, p0, p1, v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$E7hWMKV-1hc_VvGYqBGIZprHgXw;-><init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;Lrx/Observable;)V

    invoke-static {v1}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mIoScheduler:Lrx/Scheduler;

    .line 101
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mMainThreadScheduler:Lrx/Scheduler;

    .line 102
    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$rgulBzcVW2Zs1zvNS_X1Q_Q6gXQ;

    invoke-direct {v2, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$rgulBzcVW2Zs1zvNS_X1Q_Q6gXQ;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    new-instance v3, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$UzRsgwqB1FSlPk_9oJ3kUFf6fM0;

    invoke-direct {v3, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$UzRsgwqB1FSlPk_9oJ3kUFf6fM0;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 103
    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 106
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 60
    .local p3, "listener":Lio/github/hidroh/materialistic/data/ResponseListener;, "Lio/github/hidroh/materialistic/data/ResponseListener<[Lio/github/hidroh/materialistic/data/Item;>;"
    if-nez p3, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;

    invoke-direct {v0, p0, p1, p2}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;-><init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;I)V

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mIoScheduler:Lrx/Scheduler;

    .line 64
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mMainThreadScheduler:Lrx/Scheduler;

    .line 65
    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$KMZhlTTI1R0OKmC1tKwBlw1SJ0w;

    invoke-direct {v1, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$KMZhlTTI1R0OKmC1tKwBlw1SJ0w;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$PCrFslYL1m8Gzvqcfrv4EAk8mJc;

    invoke-direct {v2, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$PCrFslYL1m8Gzvqcfrv4EAk8mJc;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 66
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 68
    return-void
.end method

.method public getStories(Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cacheMode"    # I

    .line 111
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->getStoriesCall(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->toItems([I)[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    new-array v1, v1, [Lio/github/hidroh/materialistic/data/Item;

    return-object v1
.end method

.method public getUser(Ljava/lang/String;Lio/github/hidroh/materialistic/data/ResponseListener;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/github/hidroh/materialistic/data/ResponseListener<",
            "Lio/github/hidroh/materialistic/data/UserManager$User;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p2, "listener":Lio/github/hidroh/materialistic/data/ResponseListener;, "Lio/github/hidroh/materialistic/data/ResponseListener<Lio/github/hidroh/materialistic/data/UserManager$User;>;"
    if-nez p2, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->userRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$eLGhTJnRtDHmVoXsgQzuMO_OVo8;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$eLGhTJnRtDHmVoXsgQzuMO_OVo8;-><init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;)V

    .line 143
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mIoScheduler:Lrx/Scheduler;

    .line 149
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsClient;->mMainThreadScheduler:Lrx/Scheduler;

    .line 150
    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$op3jWGg84MAY1wiQ69Ul942nFis;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/data/-$$Lambda$op3jWGg84MAY1wiQ69Ul942nFis;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$YeUxJitNUgdfwhDytz_7W-dS4TE;

    invoke-direct {v2, p2}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$YeUxJitNUgdfwhDytz_7W-dS4TE;-><init>(Lio/github/hidroh/materialistic/data/ResponseListener;)V

    .line 151
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 153
    return-void
.end method
