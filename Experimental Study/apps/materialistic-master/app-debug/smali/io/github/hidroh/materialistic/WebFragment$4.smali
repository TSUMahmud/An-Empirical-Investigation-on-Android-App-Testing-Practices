.class Lio/github/hidroh/materialistic/WebFragment$4;
.super Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/WebFragment;->setUpWebView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/WebFragment;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 445
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment$4;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-direct {p0}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 448
    invoke-super {p0, p1, p2}, Lio/github/hidroh/materialistic/widget/CacheableWebView$ArchiveClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 449
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$4;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-static {v0}, Lio/github/hidroh/materialistic/WebFragment;->access$200(Lio/github/hidroh/materialistic/WebFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$4;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-static {v0, p2}, Lio/github/hidroh/materialistic/WebFragment;->access$100(Lio/github/hidroh/materialistic/WebFragment;I)V

    .line 452
    :cond_0
    return-void
.end method
