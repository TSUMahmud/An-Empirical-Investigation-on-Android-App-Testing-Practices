.class public Lio/github/hidroh/materialistic/AdBlocker;
.super Ljava/lang/Object;
.source "AdBlocker.java"


# static fields
.field private static final AD_HOSTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AD_HOSTS_FILE:Ljava/lang/String; = "pgl.yoyo.org.txt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/AdBlocker;->AD_HOSTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEmptyResource()Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 56
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/plain"

    const-string v2, "utf-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lrx/Scheduler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduler"    # Lrx/Scheduler;

    .line 43
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$wbH7O7keJHBk8WlbVih1tkwH2qM;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$wbH7O7keJHBk8WlbVih1tkwH2qM;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;->INSTANCE:Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;

    .line 44
    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 47
    return-void
.end method

.method public static isAd(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 51
    .local v0, "httpUrl":Lokhttp3/HttpUrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Lio/github/hidroh/materialistic/AdBlocker;->isAdHost(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isAdHost(Ljava/lang/String;)Z
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    return v1

    .line 80
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "index":I
    if-ltz v0, :cond_2

    sget-object v2, Lio/github/hidroh/materialistic/AdBlocker;->AD_HOSTS:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/github/hidroh/materialistic/AdBlocker;->isAdHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 81
    :goto_0
    return v1
.end method

.method static synthetic lambda$init$0(Landroid/content/Context;)Ljava/lang/Void;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lio/github/hidroh/materialistic/AdBlocker;->loadFromAssets(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$init$1(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method private static loadFromAssets(Landroid/content/Context;)Ljava/lang/Void;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "pgl.yoyo.org.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 62
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 64
    .local v1, "buffer":Lokio/BufferedSource;
    :goto_0
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8Line()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lio/github/hidroh/materialistic/AdBlocker;->AD_HOSTS:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v1}, Lokio/Source;->close()V

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    const/4 v2, 0x0

    return-object v2
.end method
