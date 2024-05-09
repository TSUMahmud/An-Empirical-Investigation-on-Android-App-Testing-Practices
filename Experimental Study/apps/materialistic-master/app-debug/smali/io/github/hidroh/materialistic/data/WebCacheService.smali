.class public Lio/github/hidroh/materialistic/data/WebCacheService;
.super Landroid/app/Service;
.source "WebCacheService.java"


# static fields
.field static final EXTRA_URL:Ljava/lang/String; = "extra:url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 40
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    .line 42
    return v0

    .line 44
    :cond_0
    new-instance v1, Lio/github/hidroh/materialistic/widget/CacheableWebView;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "webView":Lio/github/hidroh/materialistic/widget/CacheableWebView;
    new-instance v2, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;

    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->adBlockEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v2, v3}, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;-><init>(Z)V

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    new-instance v2, Lio/github/hidroh/materialistic/data/WebCacheService$1;

    invoke-direct {v2, p0, p3}, Lio/github/hidroh/materialistic/data/WebCacheService$1;-><init>(Lio/github/hidroh/materialistic/data/WebCacheService;I)V

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    const-string v2, "extra:url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    return v0
.end method
