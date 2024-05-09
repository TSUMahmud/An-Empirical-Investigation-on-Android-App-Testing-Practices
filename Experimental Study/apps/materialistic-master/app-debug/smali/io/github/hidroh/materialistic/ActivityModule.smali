.class public Lio/github/hidroh/materialistic/ActivityModule;
.super Ljava/lang/Object;
.source "ActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lio/github/hidroh/materialistic/DataModule;
    }
    injects = {
        Lio/github/hidroh/materialistic/data/ItemSyncService;,
        Lio/github/hidroh/materialistic/appwidget/WidgetService;,
        Lio/github/hidroh/materialistic/data/ItemSyncJobService;
    }
    library = true
.end annotation


# static fields
.field public static final ALGOLIA:Ljava/lang/String; = "algolia"

.field public static final HN:Ljava/lang/String; = "hn"

.field public static final POPULAR:Ljava/lang/String; = "popular"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lio/github/hidroh/materialistic/ActivityModule;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public provideAccountManager(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 57
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method public provideContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 52
    iget-object v0, p0, Lio/github/hidroh/materialistic/ActivityModule;->mContext:Landroid/content/Context;

    return-object v0
.end method
