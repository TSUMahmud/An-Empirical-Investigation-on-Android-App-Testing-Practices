.class public Lio/github/hidroh/materialistic/CustomTabsDelegate;
.super Ljava/lang/Object;
.source "CustomTabsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"


# instance fields
.field private mClient:Landroidx/browser/customtabs/CustomTabsClient;

.field private mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBrowsersWithCustomTabsSupport(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "packagesSupportingCustomTabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 164
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.example.com"

    .line 165
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "resolvedActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 168
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.support.customtabs.action.CustomTabsService"

    .line 169
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 170
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 168
    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 171
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    return-object v0
.end method

.method private static getDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://example.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 146
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 148
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 149
    const/4 v3, 0x0

    return-object v3

    .line 152
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private static getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    invoke-static {p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getBrowsersWithCustomTabsSupport(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "browsersWithCustomTabsSupport":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "defaultBrowser":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, "browser":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    return-object v3

    .line 127
    .end local v3    # "browser":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const/4 v2, 0x0

    return-object v2

    .line 133
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method bindCustomTabsService(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 55
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-static {p1}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    return-void

    .line 61
    :cond_1
    new-instance v0, Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate$ServiceConnection;-><init>(Lio/github/hidroh/materialistic/CustomTabsDelegate;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 62
    invoke-static {p1}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 63
    return-void
.end method

.method getSession()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 3

    .line 98
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    iput-object v1, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_0

    .line 100
    :cond_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_1

    .line 101
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 85
    .local p3, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    return v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    .line 89
    .local v0, "session":Landroidx/browser/customtabs/CustomTabsSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method onServiceConnected(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 3
    .param p1, "client"    # Landroidx/browser/customtabs/CustomTabsClient;

    .line 108
    iput-object p1, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 109
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 110
    return-void
.end method

.method onServiceDisconnected()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 115
    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 116
    return-void
.end method

.method unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 76
    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 77
    iput-object v0, p0, Lio/github/hidroh/materialistic/CustomTabsDelegate;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 78
    return-void
.end method
