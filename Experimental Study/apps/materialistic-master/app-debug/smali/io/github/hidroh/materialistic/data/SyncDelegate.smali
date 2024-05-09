.class public Lio/github/hidroh/materialistic/data/SyncDelegate;
.super Ljava/lang/Object;
.source "SyncDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;,
        Lio/github/hidroh/materialistic/data/SyncDelegate$Job;,
        Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;,
        Lio/github/hidroh/materialistic/data/SyncDelegate$BackgroundThreadExecutor;,
        Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;
    }
.end annotation


# static fields
.field private static final DOWNLOADS_CHANNEL_ID:Ljava/lang/String; = "downloads"

.field private static final NOTIFICATION_GROUP_KEY:Ljava/lang/String; = "group"

.field private static final SYNC_ACCOUNT_NAME:Ljava/lang/String; = "Materialistic"

.field static final SYNC_PREFERENCES_FILE:Ljava/lang/String; = "_syncpreferences"

.field private static final TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHnRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

.field private mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

.field private mListener:Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;

.field private final mNotificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

.field mWebView:Lio/github/hidroh/materialistic/widget/CacheableWebView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/RestServiceFactory;Lio/github/hidroh/materialistic/data/ReadabilityClient;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .param p3, "readabilityClient"    # Lio/github/hidroh/materialistic/data/ReadabilityClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_syncpreferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 91
    const-string v0, "https://hacker-news.firebaseio.com/v0/"

    const-class v1, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    new-instance v2, Lio/github/hidroh/materialistic/data/SyncDelegate$BackgroundThreadExecutor;

    invoke-direct {v2}, Lio/github/hidroh/materialistic/data/SyncDelegate$BackgroundThreadExecutor;-><init>()V

    invoke-interface {p2, v0, v1, v2}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->create(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHnRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    .line 93
    iput-object p3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    .line 94
    const-string v0, "notification"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationManager:Landroid/app/NotificationManager;

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 97
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "downloads"

    const v2, 0x7f1000a8

    .line 98
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "downloads"

    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 106
    :goto_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0e0000

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f08008b

    .line 109
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "group"

    .line 110
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "progress"

    .line 112
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 113
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    return-void
.end method

.method private defer(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    return-void
.end method

.method private finish()V
    .locals 2

    .line 305
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mListener:Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v1, v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;->onDone(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mListener:Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;

    .line 309
    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->stopSync()V

    .line 310
    return-void
.end method

.method private getFromCache(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 260
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHnRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->cachedItem(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/HackerNewsItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getItemActivity(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-static {p1}, Lio/github/hidroh/materialistic/AppUtils;->createItemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/ItemActivity;->EXTRA_CACHE_MODE:Ljava/lang/String;

    .line 324
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 325
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 321
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$syncReadability$0(Lio/github/hidroh/materialistic/data/SyncDelegate;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->notifyReadability()V

    return-void
.end method

.method private loadArticle(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 3
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 233
    new-instance v0, Lio/github/hidroh/materialistic/widget/CacheableWebView;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mWebView:Lio/github/hidroh/materialistic/widget/CacheableWebView;

    .line 234
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mWebView:Lio/github/hidroh/materialistic/widget/CacheableWebView;

    new-instance v1, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lio/github/hidroh/materialistic/Preferences;->adBlockEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v1, v2}, Lio/github/hidroh/materialistic/widget/AdBlockWebViewClient;-><init>(Z)V

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 235
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mWebView:Lio/github/hidroh/materialistic/widget/CacheableWebView;

    new-instance v1, Lio/github/hidroh/materialistic/data/SyncDelegate$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/SyncDelegate$2;-><init>(Lio/github/hidroh/materialistic/data/SyncDelegate;)V

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->notifyArticle(I)V

    .line 243
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mWebView:Lio/github/hidroh/materialistic/widget/CacheableWebView;

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/CacheableWebView;->loadUrl(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private notifyReadability()V
    .locals 1

    .line 275
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishReadability()V

    .line 276
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->updateProgress()V

    .line 277
    return-void
.end method

.method static scheduleSync(Landroid/content/Context;Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "job"    # Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    .line 118
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget-object v1, p1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-instance v3, Landroid/content/ComponentName;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    .line 124
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 125
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 129
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Offline;->currentConnectionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 132
    :cond_2
    const-string v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 133
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 134
    .end local v0    # "builder":Landroid/app/job/JobInfo$Builder;
    goto :goto_1

    .line 135
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 136
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 139
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v2, "io.github.hidroh.materialistic"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 140
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v3, v2

    if-nez v3, :cond_4

    .line 141
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "Materialistic"

    const-string v5, "io.github.hidroh.materialistic"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v3, "syncAccount":Landroid/accounts/Account;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 144
    .end local v3    # "syncAccount":Landroid/accounts/Account;
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 146
    .restart local v3    # "syncAccount":Landroid/accounts/Account;
    :goto_0
    const-string v4, "io.github.hidroh.materialistic.syncprovider"

    invoke-static {v3, v4, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "syncAccount":Landroid/accounts/Account;
    :goto_1
    return-void
.end method

.method private showProgress()V
    .locals 6

    .line 294
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v1, v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    iget-object v3, v3, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->title:Ljava/lang/String;

    .line 295
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    .line 296
    const v4, 0x7f100059

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v3, v3, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    .line 297
    invoke-direct {p0, v3}, Lio/github/hidroh/materialistic/data/SyncDelegate;->getItemActivity(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 298
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    .line 299
    invoke-virtual {v3}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->getMax()I

    move-result v3

    iget-object v4, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    invoke-virtual {v4}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v3, v3, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    .line 300
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 301
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 302
    return-void
.end method

.method private sync(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->defer(Ljava/lang/String;)V

    .line 178
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->getFromCache(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object v0

    move-object v1, v0

    .local v1, "cachedItem":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->sync(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->updateProgress()V

    .line 186
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHnRestService:Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/HackerNewsClient$RestService;->networkItem(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lio/github/hidroh/materialistic/data/SyncDelegate$1;

    invoke-direct {v2, p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate$1;-><init>(Lio/github/hidroh/materialistic/data/SyncDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 202
    :goto_0
    return-void
.end method

.method private syncArticle(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 4
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 221
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->isStoryType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->loadArticle(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/data/WebCacheService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra:url"

    .line 226
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->notifyArticle(I)V

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method private syncChildren(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 6
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 247
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getKids()[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getKids()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 249
    .local v3, "id":J
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/github/hidroh/materialistic/data/SyncDelegate;->sync(Ljava/lang/String;)V

    .line 248
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method private syncDeferredItems()V
    .locals 6

    .line 169
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 170
    .local v0, "itemIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "itemId":Ljava/lang/String;
    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mContext:Landroid/content/Context;

    new-instance v4, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    invoke-direct {v4, v3, v2}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->setNotificationEnabled(Z)Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/github/hidroh/materialistic/data/SyncDelegate$JobBuilder;->build()Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    move-result-object v4

    invoke-static {v3, v4}, Lio/github/hidroh/materialistic/data/SyncDelegate;->scheduleSync(Landroid/content/Context;Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V

    .line 172
    .end local v2    # "itemId":Ljava/lang/String;
    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private syncReadability(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 4
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 214
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->isStoryType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "itemId":Ljava/lang/String;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mReadabilityClient:Lio/github/hidroh/materialistic/data/ReadabilityClient;

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getRawUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/data/-$$Lambda$SyncDelegate$OUpYMINbFiVpRdjjW7ubAou9oJw;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/data/-$$Lambda$SyncDelegate$OUpYMINbFiVpRdjjW7ubAou9oJw;-><init>(Lio/github/hidroh/materialistic/data/SyncDelegate;)V

    invoke-interface {v1, v0, v2, v3}, Lio/github/hidroh/materialistic/data/ReadabilityClient;->parse(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;)V

    .line 218
    .end local v0    # "itemId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateProgress()V
    .locals 2

    .line 286
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->getProgress()I

    move-result v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 287
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->finish()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->notificationEnabled:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->showProgress()V

    .line 291
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method notifyArticle(I)V
    .locals 2
    .param p1, "newProgress"    # I

    .line 281
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->updateArticle(II)V

    .line 282
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->updateProgress()V

    .line 283
    return-void
.end method

.method notifyItem(Ljava/lang/String;Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 268
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v2, v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-boolean v5, v2, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    if-eqz v5, :cond_1

    iget-boolean v2, v2, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, p1, p2, v1, v3}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishItem(Ljava/lang/String;Lio/github/hidroh/materialistic/data/HackerNewsItem;ZZ)V

    .line 271
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->updateProgress()V

    .line 272
    return-void
.end method

.method performSync(Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V
    .locals 4
    .param p1, "job"    # Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    .line 156
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    .line 157
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$aetR_TL6-a_63KUkqdIqS6eGT98;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/-$$Lambda$aetR_TL6-a_63KUkqdIqS6eGT98;-><init>(Lio/github/hidroh/materialistic/data/SyncDelegate;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v1, v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 160
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    new-instance v1, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    invoke-direct {v1, v2}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;-><init>(Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V

    iput-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSyncProgress:Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;

    .line 162
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    iget-object v1, v1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->sync(Ljava/lang/String;)V

    .line 163
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate;->syncDeferredItems()V

    .line 166
    :goto_0
    return-void
.end method

.method stopSync()V
    .locals 2

    .line 314
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mJob:Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    .line 315
    iget-object v0, v0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    .local v0, "id":I
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 317
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    return-void
.end method

.method subscribe(Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;

    .line 151
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mListener:Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;

    .line 152
    return-void
.end method

.method sync(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 206
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->notifyItem(Ljava/lang/String;Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 208
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->syncReadability(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 209
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->syncArticle(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 210
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/SyncDelegate;->syncChildren(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 211
    return-void
.end method
