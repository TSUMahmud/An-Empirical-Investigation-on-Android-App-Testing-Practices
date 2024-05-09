.class Lio/github/hidroh/materialistic/WebFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/WebFragment;
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

    .line 91
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment$1;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$1;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    sget-object v1, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/WebFragment;->setFullscreen(Z)V

    .line 95
    return-void
.end method
