.class Lio/github/hidroh/materialistic/NetworkModule;
.super Ljava/lang/Object;
.source "NetworkModule.java"


# annotations
.annotation runtime Ldagger/Module;
    complete = false
    library = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/NetworkModule$LoggingInterceptor;,
        Lio/github/hidroh/materialistic/NetworkModule$CacheOverrideNetworkInterceptor;,
        Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:J = 0x1400000L

.field private static final TAG_OK_HTTP:Ljava/lang/String; = "OkHttp"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideCallFactory(Landroid/content/Context;)Lokhttp3/Call$Factory;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 60
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$1;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/NetworkModule$1;-><init>(Lio/github/hidroh/materialistic/NetworkModule;)V

    .line 61
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/Cache;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-wide/32 v3, 0x1400000

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$CacheOverrideNetworkInterceptor;

    invoke-direct {v1}, Lio/github/hidroh/materialistic/NetworkModule$CacheOverrideNetworkInterceptor;-><init>()V

    .line 100
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/NetworkModule$ConnectionAwareInterceptor;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/NetworkModule$LoggingInterceptor;

    invoke-direct {v1}, Lio/github/hidroh/materialistic/NetworkModule$LoggingInterceptor;-><init>()V

    .line 102
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public provideFileDownloader(Landroid/content/Context;Lokhttp3/Call$Factory;)Lio/github/hidroh/materialistic/data/FileDownloader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 109
    new-instance v0, Lio/github/hidroh/materialistic/data/FileDownloader;

    invoke-direct {v0, p1, p2}, Lio/github/hidroh/materialistic/data/FileDownloader;-><init>(Landroid/content/Context;Lokhttp3/Call$Factory;)V

    return-object v0
.end method

.method public provideRestServiceFactory(Lokhttp3/Call$Factory;)Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 55
    new-instance v0, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;

    invoke-direct {v0, p1}, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;-><init>(Lokhttp3/Call$Factory;)V

    return-object v0
.end method
