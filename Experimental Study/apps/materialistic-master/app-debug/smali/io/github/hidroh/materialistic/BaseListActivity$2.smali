.class Lio/github/hidroh/materialistic/BaseListActivity$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/BaseListActivity;->onPostCreate(Landroid/os/Bundle;)V
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

    .line 165
    iput-object p1, p0, Lio/github/hidroh/materialistic/BaseListActivity$2;->this$0:Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 1
    .param p1, "transientBottomBar"    # Lcom/google/android/material/snackbar/Snackbar;
    .param p2, "event"    # I

    .line 168
    iget-object v0, p0, Lio/github/hidroh/materialistic/BaseListActivity$2;->this$0:Lio/github/hidroh/materialistic/BaseListActivity;

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->setReleaseNotesSeen(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 165
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lio/github/hidroh/materialistic/BaseListActivity$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
