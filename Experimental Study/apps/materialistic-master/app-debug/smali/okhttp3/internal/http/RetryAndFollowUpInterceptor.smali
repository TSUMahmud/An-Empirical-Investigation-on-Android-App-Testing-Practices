.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Z)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "forWebSocket"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 75
    iput-boolean p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 76
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 18
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .line 193
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 194
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 195
    .local v2, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v3, 0x0

    .line 196
    .local v3, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 198
    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 199
    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    .line 202
    :cond_0
    new-instance v17, Lokhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 203
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 204
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object/from16 v4, v17

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v4 .. v16}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 202
    return-object v17
.end method

.method private followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 11
    .param p1, "userResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    if-eqz p1, :cond_f

    .line 271
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 272
    .local v0, "connection":Lokhttp3/Connection;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v2

    goto :goto_0

    .line 274
    :cond_0
    move-object v2, v1

    :goto_0
    nop

    .line 275
    .local v2, "route":Lokhttp3/Route;
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    .line 277
    .local v3, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "method":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 365
    return-object v1

    .line 347
    :sswitch_0
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    if-nez v5, :cond_1

    .line 349
    return-object v1

    .line 352
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v5

    instance-of v5, v5, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v5, :cond_2

    .line 353
    return-object v1

    .line 356
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 357
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x198

    if-ne v5, v6, :cond_3

    .line 359
    return-object v1

    .line 362
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 280
    :sswitch_1
    if-eqz v2, :cond_4

    .line 281
    invoke-virtual {v2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    .line 282
    :cond_4
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    :goto_1
    nop

    .line 283
    .local v1, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_5

    .line 286
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v5

    invoke-interface {v5, v2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v5

    return-object v5

    .line 284
    :cond_5
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    .end local v1    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_2
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 295
    :sswitch_3
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 296
    return-object v1

    .line 304
    :cond_6
    :sswitch_4
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v5

    if-nez v5, :cond_7

    return-object v1

    .line 306
    :cond_7
    const-string v5, "Location"

    invoke-virtual {p1, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "location":Ljava/lang/String;
    if-nez v5, :cond_8

    return-object v1

    .line 308
    :cond_8
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v6

    .line 311
    .local v6, "url":Lokhttp3/HttpUrl;
    if-nez v6, :cond_9

    return-object v1

    .line 314
    :cond_9
    invoke-virtual {v6}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 315
    .local v7, "sameScheme":Z
    if-nez v7, :cond_a

    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v8

    if-nez v8, :cond_a

    return-object v1

    .line 318
    :cond_a
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v8

    .line 319
    .local v8, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 320
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v9

    .line 321
    .local v9, "maintainBody":Z
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 322
    const-string v10, "GET"

    invoke-virtual {v8, v10, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 324
    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    .line 325
    .local v1, "requestBody":Lokhttp3/RequestBody;
    :cond_c
    invoke-virtual {v8, v4, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 327
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :goto_2
    if-nez v9, :cond_d

    .line 328
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 329
    const-string v1, "Content-Length"

    invoke-virtual {v8, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 330
    const-string v1, "Content-Type"

    invoke-virtual {v8, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 337
    .end local v9    # "maintainBody":Z
    :cond_d
    invoke-direct {p0, p1, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 338
    const-string v1, "Authorization"

    invoke-virtual {v8, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 341
    :cond_e
    invoke-virtual {v8, v6}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 270
    .end local v0    # "connection":Lokhttp3/Connection;
    .end local v2    # "route":Lokhttp3/Route;
    .end local v3    # "responseCode":I
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "url":Lokhttp3/HttpUrl;
    .end local v7    # "sameScheme":Z
    .end local v8    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x12e -> :sswitch_4
        0x12f -> :sswitch_4
        0x133 -> :sswitch_3
        0x134 -> :sswitch_3
        0x191 -> :sswitch_2
        0x197 -> :sswitch_1
        0x198 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 234
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    return v1

    .line 240
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 241
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 246
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 250
    return v1

    .line 253
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 255
    return v1

    .line 261
    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;ZLokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z
    .param p3, "userRequest"    # Lokhttp3/Request;

    .line 214
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 217
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_1

    return v1

    .line 223
    :cond_1
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 226
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 229
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .locals 3
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "followUp"    # Lokhttp3/HttpUrl;

    .line 374
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 375
    .local v0, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 377
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 375
    :goto_0
    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 89
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 90
    .local v0, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 91
    :cond_0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 107
    .local v0, "request":Lokhttp3/Request;
    move-object/from16 v2, p1

    check-cast v2, Lokhttp3/internal/http/RealInterceptorChain;

    .line 108
    .local v2, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v2}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v9

    .line 109
    .local v9, "call":Lokhttp3/Call;
    invoke-virtual {v2}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v10

    .line 111
    .local v10, "eventListener":Lokhttp3/EventListener;
    new-instance v11, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v3, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v5

    iget-object v8, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v3, v11

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v11, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "followUpCount":I
    const/4 v4, 0x0

    move-object v11, v0

    move-object v12, v4

    .line 117
    .end local v0    # "request":Lokhttp3/Request;
    .local v11, "request":Lokhttp3/Request;
    .local v12, "priorResponse":Lokhttp3/Response;
    :goto_0
    iget-boolean v0, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v0, :cond_d

    .line 123
    const/4 v4, 0x1

    .line 125
    .local v4, "releaseConnection":Z
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2, v11, v0, v6, v6}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .local v0, "response":Lokhttp3/Response;
    const/4 v13, 0x0

    .line 142
    .end local v4    # "releaseConnection":Z
    .local v13, "releaseConnection":Z
    if-eqz v13, :cond_0

    .line 143
    iget-object v4, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 144
    iget-object v4, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 149
    :cond_0
    if-eqz v12, :cond_1

    .line 150
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 151
    invoke-virtual {v12}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    .line 152
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 157
    :cond_1
    invoke-direct {v1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v14

    .line 159
    .local v14, "followUp":Lokhttp3/Request;
    if-nez v14, :cond_3

    .line 160
    iget-boolean v4, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v4, :cond_2

    .line 161
    iget-object v4, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 163
    :cond_2
    return-object v0

    .line 166
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    add-int/lit8 v15, v3, 0x1

    .end local v3    # "followUpCount":I
    .local v15, "followUpCount":I
    const/16 v3, 0x14

    if-gt v15, v3, :cond_7

    .line 173
    invoke-virtual {v14}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    instance-of v3, v3, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v3, :cond_6

    .line 178
    invoke-virtual {v14}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 179
    iget-object v3, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v3}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 180
    new-instance v8, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v3, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v4

    .line 181
    invoke-virtual {v14}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v5

    iget-object v7, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v3, v8

    move-object v6, v9

    move-object/from16 v16, v7

    move-object v7, v10

    move-object/from16 v17, v2

    move-object v2, v8

    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .local v17, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    move-object/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v2, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    .line 182
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    :cond_4
    move-object/from16 v17, v2

    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    iget-object v2, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v2

    if-nez v2, :cond_5

    .line 187
    :goto_1
    move-object v11, v14

    .line 188
    move-object v12, v0

    .line 189
    .end local v0    # "response":Lokhttp3/Response;
    .end local v13    # "releaseConnection":Z
    .end local v14    # "followUp":Lokhttp3/Request;
    move v3, v15

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 183
    .restart local v0    # "response":Lokhttp3/Response;
    .restart local v13    # "releaseConnection":Z
    .restart local v14    # "followUp":Lokhttp3/Request;
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing the body of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    :cond_6
    move-object/from16 v17, v2

    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    iget-object v2, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 175
    new-instance v2, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    const-string v4, "Cannot retry streamed HTTP body"

    invoke-direct {v2, v4, v3}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 169
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    :cond_7
    move-object/from16 v17, v2

    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    iget-object v2, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 170
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v0    # "response":Lokhttp3/Response;
    .end local v13    # "releaseConnection":Z
    .end local v14    # "followUp":Lokhttp3/Request;
    .end local v15    # "followUpCount":I
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    goto :goto_3

    .line 134
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    .line 136
    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    :try_start_1
    instance-of v2, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v2, :cond_8

    const/4 v5, 0x1

    :cond_8
    move v2, v5

    .line 137
    .local v2, "requestSendStarted":Z
    invoke-direct {v1, v0, v2, v11}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_9

    .line 138
    const/4 v4, 0x0

    .line 142
    if-eqz v4, :cond_a

    .line 143
    iget-object v5, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5, v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 144
    iget-object v5, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto :goto_2

    .line 137
    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v9    # "call":Lokhttp3/Call;
    .end local v10    # "eventListener":Lokhttp3/EventListener;
    .end local v11    # "request":Lokhttp3/Request;
    .end local v12    # "priorResponse":Lokhttp3/Response;
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :cond_9
    :try_start_2
    throw v0

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v9    # "call":Lokhttp3/Call;
    .restart local v10    # "eventListener":Lokhttp3/EventListener;
    .restart local v11    # "request":Lokhttp3/Request;
    .restart local v12    # "priorResponse":Lokhttp3/Response;
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .line 129
    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .local v0, "e":Lokhttp3/internal/connection/RouteException;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2, v5, v11}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_b

    .line 132
    const/4 v2, 0x0

    .line 142
    .end local v4    # "releaseConnection":Z
    .local v2, "releaseConnection":Z
    if-eqz v2, :cond_a

    .line 143
    iget-object v4, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 144
    iget-object v4, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 117
    .end local v0    # "e":Lokhttp3/internal/connection/RouteException;
    .end local v2    # "releaseConnection":Z
    :cond_a
    :goto_2
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 130
    .restart local v0    # "e":Lokhttp3/internal/connection/RouteException;
    .restart local v4    # "releaseConnection":Z
    :cond_b
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    .end local v3    # "followUpCount":I
    .end local v4    # "releaseConnection":Z
    .end local v9    # "call":Lokhttp3/Call;
    .end local v10    # "eventListener":Lokhttp3/EventListener;
    .end local v11    # "request":Lokhttp3/Request;
    .end local v12    # "priorResponse":Lokhttp3/Response;
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    .end local v0    # "e":Lokhttp3/internal/connection/RouteException;
    .restart local v3    # "followUpCount":I
    .restart local v4    # "releaseConnection":Z
    .restart local v9    # "call":Lokhttp3/Call;
    .restart local v10    # "eventListener":Lokhttp3/EventListener;
    .restart local v11    # "request":Lokhttp3/Request;
    .restart local v12    # "priorResponse":Lokhttp3/Response;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v4, :cond_c

    .line 143
    iget-object v2, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 144
    iget-object v2, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_c
    throw v0

    .line 118
    .end local v4    # "releaseConnection":Z
    .end local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .local v2, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    :cond_d
    move-object/from16 v17, v2

    .end local v2    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    .restart local v17    # "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    iget-object v0, v1, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callStackTrace"    # Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 102
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
