.class public Landroidx/browser/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Landroid/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "service"    # Landroid/support/customtabs/ICustomTabsService;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 54
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 55
    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "connection"    # Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 4
    .param p1, "callback"    # Landroidx/browser/customtabs/CustomTabsCallback;

    .line 191
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$2;

    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V

    .line 257
    .local v0, "wrapper":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v2, v0}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return-object v1

    .line 260
    :cond_0
    nop

    .line 261
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSession;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0, v3}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    return-object v1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public warmup(J)Z
    .locals 2
    .param p1, "flags"    # J

    .line 173
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
