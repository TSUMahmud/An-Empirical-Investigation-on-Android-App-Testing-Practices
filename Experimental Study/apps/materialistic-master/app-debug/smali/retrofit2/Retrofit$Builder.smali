.class public final Lretrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Lokhttp3/HttpUrl;

.field private callFactory:Lokhttp3/Call$Factory;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final platform:Lretrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 411
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Platform;)V

    .line 412
    return-void
.end method

.method constructor <init>(Lretrofit2/Platform;)V
    .locals 2
    .param p1, "platform"    # Lretrofit2/Platform;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 404
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 407
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v1, Lretrofit2/BuiltInConverters;

    invoke-direct {v1}, Lretrofit2/BuiltInConverters;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;)V
    .locals 2
    .param p1, "retrofit"    # Lretrofit2/Retrofit;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 415
    invoke-static {}, Lretrofit2/Platform;->get()Lretrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    .line 416
    iget-object v0, p1, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 417
    iget-object v0, p1, Lretrofit2/Retrofit;->baseUrl:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    .line 418
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    iget-object v1, p1, Lretrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    iget-object v1, p1, Lretrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 422
    iget-object v0, p1, Lretrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 423
    iget-boolean v0, p1, Lretrofit2/Retrofit;->validateEagerly:Z

    iput-boolean v0, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 424
    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2
    .param p1, "factory"    # Lretrofit2/CallAdapter$Factory;

    .line 530
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-object p0
.end method

.method public addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 2
    .param p1, "factory"    # Lretrofit2/Converter$Factory;

    .line 521
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    return-object p0
.end method

.method public baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 451
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 453
    .local v0, "httpUrl":Lokhttp3/HttpUrl;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    return-object v1

    .line 454
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public baseUrl(Lokhttp3/HttpUrl;)Lretrofit2/Retrofit$Builder;
    .locals 4
    .param p1, "baseUrl"    # Lokhttp3/HttpUrl;

    .line 510
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 511
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    .line 512
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iput-object p1, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    .line 516
    return-object p0

    .line 513
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseUrl must end in /: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public build()Lretrofit2/Retrofit;
    .locals 11

    .line 562
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 567
    .local v0, "callFactory":Lokhttp3/Call$Factory;
    if-nez v0, :cond_0

    .line 568
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    move-object v0, v1

    .line 571
    :cond_0
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 572
    .local v1, "callbackExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_1

    .line 573
    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v2}, Lretrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    .line 572
    :cond_1
    move-object v8, v1

    .line 577
    .end local v1    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v8, "callbackExecutor":Ljava/util/concurrent/Executor;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lretrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v1

    .line 578
    .local v9, "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/CallAdapter$Factory;>;"
    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->platform:Lretrofit2/Platform;

    invoke-virtual {v1, v8}, Lretrofit2/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit2/CallAdapter$Factory;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, p0, Lretrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 583
    .local v4, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/Converter$Factory;>;"
    new-instance v10, Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/Retrofit$Builder;->baseUrl:Lokhttp3/HttpUrl;

    iget-boolean v7, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    move-object v1, v10

    move-object v2, v0

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lretrofit2/Retrofit;-><init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v10

    .line 563
    .end local v0    # "callFactory":Lokhttp3/Call$Factory;
    .end local v4    # "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/Converter$Factory;>;"
    .end local v8    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local v9    # "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit2/CallAdapter$Factory;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;
    .locals 1
    .param p1, "factory"    # Lokhttp3/Call$Factory;

    .line 441
    const-string v0, "factory == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lokhttp3/Call$Factory;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callFactory:Lokhttp3/Call$Factory;

    .line 442
    return-object p0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit2/Retrofit$Builder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 542
    const-string v0, "executor == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 543
    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .line 432
    const-string v0, "client == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lokhttp3/Call$Factory;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public validateEagerly(Z)Lretrofit2/Retrofit$Builder;
    .locals 0
    .param p1, "validateEagerly"    # Z

    .line 551
    iput-boolean p1, p0, Lretrofit2/Retrofit$Builder;->validateEagerly:Z

    .line 552
    return-object p0
.end method
