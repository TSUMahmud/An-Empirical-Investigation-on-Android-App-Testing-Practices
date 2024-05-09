.class interface abstract Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;
.super Ljava/lang/Object;
.source "HackerNewsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/HackerNewsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RestService"
.end annotation


# virtual methods
.method public abstract askStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "askstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract askStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "askstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract bestStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "beststories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract bestStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "beststories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract cachedItem(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{itemId}.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: only-if-cached, max-stale=2147483647"
        }
    .end annotation
.end method

.method public abstract cachedItemRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{itemId}.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: only-if-cached, max-stale=2147483647"
        }
    .end annotation
.end method

.method public abstract item(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{itemId}.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract itemRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{itemId}.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract jobStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "jobstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract jobStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "jobstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract networkAskStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "askstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkAskStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "askstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkBestStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "beststories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkBestStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "beststories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkItem(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{itemId}.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkItemRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{itemId}.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkJobStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "jobstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkJobStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "jobstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkNewStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "newstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkNewStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "newstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkShowStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "showstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkShowStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "showstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkTopStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "topstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract networkTopStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "topstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract newStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "newstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract newStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "newstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract showStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "showstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract showStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "showstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract topStories()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "topstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract topStoriesRx()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "[I>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "topstories.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=1800"
        }
    .end annotation
.end method

.method public abstract user(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lio/github/hidroh/materialistic/data/UserItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/{userId}.json"
    .end annotation
.end method

.method public abstract userRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/UserItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/{userId}.json"
    .end annotation
.end method
