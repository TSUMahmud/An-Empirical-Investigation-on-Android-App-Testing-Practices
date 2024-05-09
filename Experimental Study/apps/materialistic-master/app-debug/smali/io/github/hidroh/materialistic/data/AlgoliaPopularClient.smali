.class public Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;
.super Lio/github/hidroh/materialistic/data/AlgoliaClient;
.source "AlgoliaPopularClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/AlgoliaPopularClient$Range;
    }
.end annotation


# static fields
.field public static final LAST_24H:Ljava/lang/String; = "last_24h"

.field public static final PAST_MONTH:Ljava/lang/String; = "past_month"

.field public static final PAST_WEEK:Ljava/lang/String; = "past_week"

.field public static final PAST_YEAR:Ljava/lang/String; = "past_year"


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;)V
    .locals 0
    .param p1, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaClient;-><init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;)V

    .line 35
    return-void
.end method

.method private toTimestamp(Ljava/lang/String;)J
    .locals 4
    .param p1, "filter"    # Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "timestamp":J
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x56f8b6c3

    if-eq v2, v3, :cond_4

    const v3, -0x36ec4fff

    if-eq v2, v3, :cond_3

    const v3, -0x36eb67b6

    if-eq v2, v3, :cond_2

    const v3, 0x58da1413

    if-eq v2, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "past_month"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    const-string v2, "past_year"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    const-string v2, "past_week"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    const-string v2, "last_24h"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 65
    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 66
    goto :goto_2

    .line 74
    :pswitch_0
    const-wide v2, 0x7528ad000L

    sub-long/2addr v0, v2

    goto :goto_2

    .line 71
    :pswitch_1
    const-wide v2, 0x90321000L

    sub-long/2addr v0, v2

    .line 72
    goto :goto_2

    .line 68
    :pswitch_2
    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 69
    nop

    .line 77
    :goto_2
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected search(Ljava/lang/String;)Lretrofit2/Call;
    .locals 6
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

    .line 57
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created_at_i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;->toTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;->searchByMinTimestamp(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method protected searchRx(Ljava/lang/String;)Lrx/Observable;
    .locals 6
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

    .line 52
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->mRestService:Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created_at_i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/AlgoliaPopularClient;->toTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/AlgoliaClient$RestService;->searchByMinTimestampRx(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
