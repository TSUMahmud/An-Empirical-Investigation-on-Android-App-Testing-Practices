.class public Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;
.super Ljava/lang/Object;
.source "RestServiceFactory.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/RestServiceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/RestServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# instance fields
.field private final mCallFactory:Lokhttp3/Call$Factory;

.field private mRxEnabled:Z


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;->mCallFactory:Lokhttp3/Call$Factory;

    .line 52
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 62
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;->create(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 67
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 68
    .local v0, "builder":Lretrofit2/Retrofit$Builder;
    iget-boolean v1, p0, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;->mRxEnabled:Z

    if-eqz v1, :cond_0

    .line 69
    nop

    .line 70
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->createWithScheduler(Lrx/Scheduler;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 72
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;->mCallFactory:Lokhttp3/Call$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    if-eqz p3, :cond_1

    move-object v2, p3

    goto :goto_0

    :cond_1
    new-instance v2, Lio/github/hidroh/materialistic/data/RestServiceFactory$MainThreadExecutor;

    invoke-direct {v2}, Lio/github/hidroh/materialistic/data/RestServiceFactory$MainThreadExecutor;-><init>()V

    .line 73
    :goto_0
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;

    .line 75
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 76
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 78
    invoke-virtual {v1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    return-object v1
.end method

.method public rxEnabled(Z)Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .locals 0
    .param p1, "enabled"    # Z

    .line 56
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;->mRxEnabled:Z

    .line 57
    return-object p0
.end method
