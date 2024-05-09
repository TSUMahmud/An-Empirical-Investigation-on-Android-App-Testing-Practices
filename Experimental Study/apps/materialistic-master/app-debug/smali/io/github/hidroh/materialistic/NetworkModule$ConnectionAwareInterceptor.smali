.class Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;
.super Ljava/lang/Object;
.source "NetworkModule.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/NetworkModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionAwareInterceptor"
.end annotation


# static fields
.field static final CACHE_ENABLED_HOSTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->CACHE_ENABLED_HOSTS:Ljava/util/Map;

    .line 116
    sget-object v0, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->CACHE_ENABLED_HOSTS:Ljava/util/Map;

    const-string v1, "hacker-news.firebaseio.com"

    const-string v2, "Cache-Control: max-age=1800"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->CACHE_ENABLED_HOSTS:Ljava/util/Map;

    const-string v1, "hn.algolia.com"

    const-string v2, "Cache-Control: max-age=1800"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->CACHE_ENABLED_HOSTS:Ljava/util/Map;

    const-string v1, "mercury.postlight.com"

    const-string v2, "Cache-Control: max-age=86400"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 132
    .local v0, "request":Lokhttp3/Request;
    sget-object v1, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->CACHE_ENABLED_HOSTS:Ljava/util/Map;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {v1}, Lio/github/hidroh/materialistic/AppUtils;->hasConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "forceCache":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    sget-object v3, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 136
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 134
    :goto_1
    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
