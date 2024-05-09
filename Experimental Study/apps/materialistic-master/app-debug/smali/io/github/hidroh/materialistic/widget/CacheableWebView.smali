.class public Lio/github/hidroh/materialistic/widget/CacheableWebView;
.super Lio/github/hidroh/materialistic/widget/WebView;
.source "CacheableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;
    }
.end annotation


# static fields
.field private static final CACHE_EXTENSION:Ljava/lang/String; = ".mht"

.field private static final CACHE_PREFIX:Ljava/lang/String; = "webarchive-"


# instance fields
.field private mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/widget/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    .line 50
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->init()V

    .line 51
    return-void
.end method

.method private enableCache()V
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 95
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 97
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->setCacheModeInternal()V

    .line 100
    return-void
.end method

.method private generateCacheFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "webarchive-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".mht"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method private getCacheableUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 116
    const-string v0, "about:blank"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "file:///"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->generateCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->cacheFileName:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->setCacheModeInternal()V

    .line 121
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 122
    return-object p1

    .line 124
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    iget-object v1, v1, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->cacheFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    return-object v1

    .line 117
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_3
    :goto_1
    return-object p1
.end method

.method private init()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->enableCache()V

    .line 88
    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->setLoadSettings()V

    .line 89
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 91
    return-void
.end method

.method private setCacheModeInternal()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/AppUtils;->hasConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 105
    return-void
.end method

.method private setLoadSettings()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 110
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    const/4 v1, 0x0

    iput v1, v0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->lastProgress:I

    .line 64
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->getCacheableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    const/4 v1, 0x0

    iput v1, v0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->lastProgress:I

    .line 73
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->getCacheableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    return-void
.end method

.method public reloadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->getCacheableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lio/github/hidroh/materialistic/widget/WebView;->reloadUrl(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 3
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .line 78
    instance-of v0, p1, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView;->mArchiveClient:Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client should be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
