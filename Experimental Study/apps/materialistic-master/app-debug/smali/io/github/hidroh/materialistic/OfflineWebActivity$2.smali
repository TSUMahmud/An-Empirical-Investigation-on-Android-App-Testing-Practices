.class Lio/github/hidroh/materialistic/OfflineWebActivity$2;
.super Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;
.source "OfflineWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/OfflineWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/OfflineWebActivity;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/OfflineWebActivity;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/OfflineWebActivity;

    .line 63
    iput-object p1, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->this$0:Lio/github/hidroh/materialistic/OfflineWebActivity;

    iput-object p2, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 66
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 67
    iget-object v0, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$webView:Landroid/webkit/WebView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 74
    :cond_0
    return-void
.end method
