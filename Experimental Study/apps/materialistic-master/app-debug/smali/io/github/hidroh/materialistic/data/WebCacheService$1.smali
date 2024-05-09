.class Lio/github/hidroh/materialistic/data/WebCacheService$1;
.super Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;
.source "WebCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/WebCacheService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/WebCacheService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/WebCacheService;I)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/WebCacheService;

    .line 46
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/WebCacheService$1;->this$0:Lio/github/hidroh/materialistic/data/WebCacheService;

    iput p2, p0, Lio/github/hidroh/materialistic/data/WebCacheService$1;->val$startId:I

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 49
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 50
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/WebCacheService$1;->this$0:Lio/github/hidroh/materialistic/data/WebCacheService;

    iget v1, p0, Lio/github/hidroh/materialistic/data/WebCacheService$1;->val$startId:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    .line 53
    :cond_0
    return-void
.end method
