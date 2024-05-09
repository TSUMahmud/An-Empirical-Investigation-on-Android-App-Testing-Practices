.class Lio/github/hidroh/materialistic/UiModule;
.super Ljava/lang/Object;
.source "UiModule.java"


# annotations
.annotation runtime Ldagger/Module;
    complete = false
    injects = {
        Lio/github/hidroh/materialistic/AboutActivity;,
        Lio/github/hidroh/materialistic/AskActivity;,
        Lio/github/hidroh/materialistic/BestActivity;,
        Lio/github/hidroh/materialistic/ComposeActivity;,
        Lio/github/hidroh/materialistic/FavoriteActivity;,
        Lio/github/hidroh/materialistic/FeedbackActivity;,
        Lio/github/hidroh/materialistic/ItemActivity;,
        Lio/github/hidroh/materialistic/JobsActivity;,
        Lio/github/hidroh/materialistic/ListActivity;,
        Lio/github/hidroh/materialistic/LoginActivity;,
        Lio/github/hidroh/materialistic/NewActivity;,
        Lio/github/hidroh/materialistic/OfflineWebActivity;,
        Lio/github/hidroh/materialistic/PopularActivity;,
        Lio/github/hidroh/materialistic/ReleaseNotesActivity;,
        Lio/github/hidroh/materialistic/SearchActivity;,
        Lio/github/hidroh/materialistic/SettingsActivity;,
        Lio/github/hidroh/materialistic/ShowActivity;,
        Lio/github/hidroh/materialistic/SubmitActivity;,
        Lio/github/hidroh/materialistic/ThreadPreviewActivity;,
        Lio/github/hidroh/materialistic/UserActivity;,
        Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;,
        Lio/github/hidroh/materialistic/FavoriteFragment;,
        Lio/github/hidroh/materialistic/ItemFragment;,
        Lio/github/hidroh/materialistic/ListFragment;,
        Lio/github/hidroh/materialistic/WebFragment;,
        Lio/github/hidroh/materialistic/widget/FavoriteRecyclerViewAdapter;,
        Lio/github/hidroh/materialistic/widget/SinglePageItemRecyclerViewAdapter;,
        Lio/github/hidroh/materialistic/widget/StoryRecyclerViewAdapter;,
        Lio/github/hidroh/materialistic/widget/SubmissionRecyclerViewAdapter;,
        Lio/github/hidroh/materialistic/widget/MultiPageItemRecyclerViewAdapter;,
        Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;
    }
    library = true
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$provideResourcesProvider$0(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideActionViewResolver()Lio/github/hidroh/materialistic/ActionViewResolver;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 90
    new-instance v0, Lio/github/hidroh/materialistic/ActionViewResolver;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/ActionViewResolver;-><init>()V

    return-object v0
.end method

.method public provideAlertDialogBuilder()Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 95
    new-instance v0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;-><init>()V

    return-object v0
.end method

.method public provideCustomTabsDelegate()Lio/github/hidroh/materialistic/CustomTabsDelegate;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 80
    new-instance v0, Lio/github/hidroh/materialistic/CustomTabsDelegate;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/CustomTabsDelegate;-><init>()V

    return-object v0
.end method

.method public provideKeyDelegate()Lio/github/hidroh/materialistic/KeyDelegate;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 85
    new-instance v0, Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/KeyDelegate;-><init>()V

    return-object v0
.end method

.method public providePopupMenu()Lio/github/hidroh/materialistic/widget/PopupMenu;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 75
    new-instance v0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;-><init>()V

    return-object v0
.end method

.method public provideResourcesProvider(Landroid/content/Context;)Lio/github/hidroh/materialistic/ResourcesProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 101
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$UiModule$FYpWvaXSQ6VEW9VD6bZRZopMIwQ;

    invoke-direct {v0, p1}, Lio/github/hidroh/materialistic/-$$Lambda$UiModule$FYpWvaXSQ6VEW9VD6bZRZopMIwQ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
