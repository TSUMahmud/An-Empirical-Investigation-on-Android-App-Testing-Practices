.class Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistoryWebViewClient"
.end annotation


# instance fields
.field private mClient:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 92
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/widget/WebView;

    .line 94
    .local v0, "webView":Lio/github/hidroh/materialistic/widget/WebView;
    const-string v1, "about:blank"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v7, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    iget-object v4, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingHtml:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object v2, p1

    move-object v3, v7

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    .line 102
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const/4 v1, 0x0

    iput-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    .line 104
    iput-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingHtml:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 107
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;->mClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 110
    :cond_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 81
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/widget/WebView;

    .line 82
    .local v0, "webView":Lio/github/hidroh/materialistic/widget/WebView;
    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    invoke-static {p2, v1}, Lio/github/hidroh/materialistic/AppUtils;->urlEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 85
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;->mClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 88
    :cond_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 123
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;->mClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 116
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;->mClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0
.end method

.method wrap(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 129
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;->mClient:Landroid/webkit/WebViewClient;

    .line 130
    return-void
.end method
