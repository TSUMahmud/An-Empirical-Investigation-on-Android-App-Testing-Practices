.class public Lio/github/hidroh/materialistic/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lio/github/hidroh/materialistic/Injectable;


# static fields
.field public static TYPE_FACE:Landroid/graphics/Typeface;


# instance fields
.field private mApplicationGraph:Ldagger/ObjectGraph;

.field private mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lio/github/hidroh/materialistic/Application;->TYPE_FACE:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Application;

    .line 39
    .local v0, "application":Lio/github/hidroh/materialistic/Application;
    iget-object v1, v0, Lio/github/hidroh/materialistic/Application;->mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    return-object v1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ldagger/ObjectGraph;->create([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/Application;->mApplicationGraph:Ldagger/ObjectGraph;

    .line 46
    return-void
.end method

.method public getApplicationGraph()Ldagger/ObjectGraph;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/Application;->mApplicationGraph:Ldagger/ObjectGraph;

    return-object v0
.end method

.method public inject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/Application;->getApplicationGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getAutoDayNightMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 52
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->isSortByRecent(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lio/github/hidroh/materialistic/data/AlgoliaClient;->sSortByTime:Z

    .line 53
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/Application;->mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 54
    sget-boolean v0, Lio/github/hidroh/materialistic/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 56
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 59
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 60
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->migrate(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lio/github/hidroh/materialistic/FontCache;->getInstance()Lio/github/hidroh/materialistic/FontCache;

    move-result-object v0

    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getTypeface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/github/hidroh/materialistic/FontCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/Application;->TYPE_FACE:Landroid/graphics/Typeface;

    .line 66
    invoke-static {p0}, Lio/github/hidroh/materialistic/AppUtils;->registerAccountsUpdatedListener(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AdBlocker;->init(Landroid/content/Context;Lrx/Scheduler;)V

    .line 68
    return-void
.end method
