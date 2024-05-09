.class Lio/github/hidroh/materialistic/BaseListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/BaseListActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/BaseListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/BaseListActivity;

    .line 84
    iput-object p1, p0, Lio/github/hidroh/materialistic/BaseListActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseListActivity;

    sget-object v1, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lio/github/hidroh/materialistic/BaseListActivity;->mFullscreen:Z

    .line 88
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$1;->this$0:Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseListActivity;->setFullscreen()V

    .line 89
    return-void
.end method
