.class public Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdBlockWebViewClient.java"


# instance fields
.field private final mAdBlockEnabled:Z

.field private final mLoadedUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "adBlockEnabled"    # Z

    .line 36
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    .line 37
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mAdBlockEnabled:Z

    .line 38
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 61
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mAdBlockEnabled:Z

    if-nez v0, :cond_0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-static {v0}, Lio/github/hidroh/materialistic/AdBlocker;->isAd(Ljava/lang/String;)Z

    move-result v1

    .line 68
    .local v1, "ad":Z
    iget-object v2, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v1    # "ad":Z
    :cond_1
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 72
    .restart local v1    # "ad":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lio/github/hidroh/materialistic/AdBlocker;->createEmptyResource()Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_1

    .line 73
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 72
    :goto_1
    return-object v2
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 43
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mAdBlockEnabled:Z

    if-nez v0, :cond_0

    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {p2}, Lio/github/hidroh/materialistic/AdBlocker;->isAd(Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, "ad":Z
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    .end local v0    # "ad":Z
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;->mLoadedUrls:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    .restart local v0    # "ad":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lio/github/hidroh/materialistic/AdBlocker;->createEmptyResource()Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 53
    :goto_1
    return-object v1
.end method
