.class Lio/github/hidroh/materialistic/WebFragment$3;
.super Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;
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
.method constructor <init>(Lio/github/hidroh/materialistic/WebFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/WebFragment;
    .param p2, "adBlockEnabled"    # Z

    .line 428
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment$3;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 439
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$3;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$3;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 443
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 431
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 432
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$3;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$3;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 435
    :cond_0
    return-void
.end method
