.class Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/CustomTabsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceConnection"
.end annotation


# instance fields
.field private mDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/CustomTabsDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/CustomTabsDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 182
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;->mDelegate:Ljava/lang/ref/WeakReference;

    .line 184
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "client"    # Landroidx/browser/customtabs/CustomTabsClient;

    .line 188
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 189
    .local v0, "delegate":Lio/github/hidroh/materialistic/CustomTabsDelegate;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p2}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->onServiceConnected(Landroidx/browser/customtabs/CustomTabsClient;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 196
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/CustomTabsDelegate;

    .line 197
    .local v0, "delegate":Lio/github/hidroh/materialistic/CustomTabsDelegate;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->onServiceDisconnected()V

    .line 200
    :cond_0
    return-void
.end method
