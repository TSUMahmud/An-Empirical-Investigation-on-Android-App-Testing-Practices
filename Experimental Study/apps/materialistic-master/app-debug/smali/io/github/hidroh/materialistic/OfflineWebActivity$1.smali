.class Lio/github/hidroh/materialistic/OfflineWebActivity$1;
.super Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;
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


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/OfflineWebActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/OfflineWebActivity;
    .param p2, "adBlockEnabled"    # Z

    .line 57
    iput-object p1, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$1;->this$0:Lio/github/hidroh/materialistic/OfflineWebActivity;

    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lio/github/hidroh/materialistic/OfflineWebActivity$1;->this$0:Lio/github/hidroh/materialistic/OfflineWebActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ThemedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
