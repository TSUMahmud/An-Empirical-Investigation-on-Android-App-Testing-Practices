.class interface abstract Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;
.super Ljava/lang/Object;
.source "AlgoliaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/AlgoliaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RestService"
.end annotation


# virtual methods
.method public abstract search(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "search?hitsPerPage=100&tags=story&attributesToRetrieve=objectID&attributesToHighlight=none"
    .end annotation
.end method

.method public abstract searchByDate(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "search_by_date?hitsPerPage=100&tags=story&attributesToRetrieve=objectID&attributesToHighlight=none"
    .end annotation
.end method

.method public abstract searchByDateRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "search_by_date?hitsPerPage=100&tags=story&attributesToRetrieve=objectID&attributesToHighlight=none"
    .end annotation
.end method

.method public abstract searchByMinTimestamp(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "numericFilters"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "search?hitsPerPage=100&tags=story&attributesToRetrieve=objectID&attributesToHighlight=none"
    .end annotation
.end method

.method public abstract searchByMinTimestampRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "numericFilters"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "search?hitsPerPage=100&tags=story&attributesToRetrieve=objectID&attributesToHighlight=none"
    .end annotation
.end method

.method public abstract searchRx(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/GET;
        value = "search?hitsPerPage=100&tags=story&attributesToRetrieve=objectID&attributesToHighlight=none"
    .end annotation
.end method
