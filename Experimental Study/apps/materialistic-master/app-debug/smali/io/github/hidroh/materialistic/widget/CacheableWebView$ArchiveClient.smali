.class public Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;
.super Landroid/webkit/WebChromeClient;
.source "CacheableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/CacheableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveClient"
.end annotation


# instance fields
.field cacheFileName:Ljava/lang/String;

.field lastProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->lastProgress:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->cacheFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 143
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->cacheFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->lastProgress:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    if-ne p2, v2, :cond_1

    .line 148
    iput p2, p0, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->lastProgress:I

    .line 149
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;)V

    .line 151
    :cond_1
    return-void
.end method
