.class public Lio/github/hidroh/materialistic/data/ItemSyncWifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ItemSyncWifiReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lio/github/hidroh/materialistic/AppUtils;->isOnWiFi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->build()Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->scheduleSync(Landroid/content/Context;Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V

    .line 37
    :cond_1
    return-void
.end method
