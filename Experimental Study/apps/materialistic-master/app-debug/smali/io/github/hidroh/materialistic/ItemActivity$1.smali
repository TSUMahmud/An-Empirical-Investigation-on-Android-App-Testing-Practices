.class Lio/github/hidroh/materialistic/ItemActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/ItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/ItemActivity;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/ItemActivity;

    .line 121
    iput-object p1, p0, Lio/github/hidroh/materialistic/ItemActivity$1;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$1;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    sget-object v1, Lio/github/hidroh/materialistic/WebFragment;->EXTRA_FULLSCREEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lio/github/hidroh/materialistic/ItemActivity;->mFullscreen:Z

    .line 125
    iget-object v0, p0, Lio/github/hidroh/materialistic/ItemActivity$1;->this$0:Lio/github/hidroh/materialistic/ItemActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/ItemActivity;->setFullscreen()V

    .line 126
    return-void
.end method
