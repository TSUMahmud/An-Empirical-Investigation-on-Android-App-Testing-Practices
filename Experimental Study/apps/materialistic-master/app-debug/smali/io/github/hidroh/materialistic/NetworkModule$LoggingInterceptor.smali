.class Lio/github/hidroh/materialistic/NetworkModule$LoggingInterceptor;
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
    name = "LoggingInterceptor"
.end annotation


# instance fields
.field private final debugInterceptor:Lokhttp3/Interceptor;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    sget-object v1, Lio/github/hidroh/materialistic/-$$Lambda$NetworkModule$LoggingInterceptor$BiwYil5Y5DIWtughAZY3W1qjFvg;->INSTANCE:Lio/github/hidroh/materialistic/-$$Lambda$NetworkModule$LoggingInterceptor$BiwYil5Y5DIWtughAZY3W1qjFvg;

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-boolean v1, Lio/github/hidroh/materialistic/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 164
    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$LoggingInterceptor;->debugInterceptor:Lokhttp3/Interceptor;

    .line 162
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 163
    const-string v0, "OkHttp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$LoggingInterceptor;->debugInterceptor:Lokhttp3/Interceptor;

    invoke-interface {v0, p1}, Lokhttp3/Interceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
