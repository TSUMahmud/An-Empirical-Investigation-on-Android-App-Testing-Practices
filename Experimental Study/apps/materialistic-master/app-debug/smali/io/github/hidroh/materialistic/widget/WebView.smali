.class public Lio/github/hidroh/materialistic/widget/WebView;
.super Landroid/webkit/WebView;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;
    }
.end annotation


# static fields
.field static final BLANK:Ljava/lang/String; = "about:blank"

.field static final FILE:Ljava/lang/String; = "file:///"


# instance fields
.field private final mClient:Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;

.field mPendingHtml:Ljava/lang/String;

.field mPendingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/WebView;->mClient:Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/WebView;->mClient:Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reloadHtml(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingHtml:Ljava/lang/String;

    .line 71
    const-string v0, "file:///"

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/WebView;->reloadUrl(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public reloadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 65
    :cond_0
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/WebView;->mPendingUrl:Ljava/lang/String;

    .line 66
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 53
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/WebView;->mClient:Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/widget/WebView$HistoryWebViewClient;->wrap(Landroid/webkit/WebViewClient;)V

    .line 54
    return-void
.end method
