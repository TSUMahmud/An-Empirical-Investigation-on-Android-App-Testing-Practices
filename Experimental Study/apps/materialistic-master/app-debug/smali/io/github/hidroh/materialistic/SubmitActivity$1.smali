.class Lio/github/hidroh/materialistic/SubmitActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/SubmitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/SubmitActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/SubmitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/SubmitActivity;

    .line 86
    iput-object p1, p0, Lio/github/hidroh/materialistic/SubmitActivity$1;->this$0:Lio/github/hidroh/materialistic/SubmitActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$1;->this$0:Lio/github/hidroh/materialistic/SubmitActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$1;->this$0:Lio/github/hidroh/materialistic/SubmitActivity;

    iget-object v0, v0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    return-void
.end method
