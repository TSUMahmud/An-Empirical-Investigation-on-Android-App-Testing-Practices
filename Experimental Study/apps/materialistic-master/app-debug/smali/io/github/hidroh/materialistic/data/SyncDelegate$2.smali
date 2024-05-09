.class Lio/github/hidroh/materialistic/data/SyncDelegate$2;
.super Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;
.source "SyncDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/SyncDelegate;->loadArticle(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/SyncDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/SyncDelegate;

    .line 235
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$2;->this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 238
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 239
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$2;->this$0:Lio/github/hidroh/materialistic/data/SyncDelegate;

    invoke-virtual {v0, p2}, Lio/github/hidroh/materialistic/data/SyncDelegate;->notifyArticle(I)V

    .line 240
    return-void
.end method
