.class public Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "WidgetConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetConfigurationFragment"
.end annotation


# instance fields
.field private mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 73
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/-$$Lambda$WidgetConfigActivity$WidgetConfigurationFragment$faWRm584G_i9-Z7rl8bqzjUHIW0;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/appwidget/-$$Lambda$WidgetConfigActivity$WidgetConfigurationFragment$faWRm584G_i9-Z7rl8bqzjUHIW0;-><init>(Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 75
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;->setFilterQuery()V

    .line 78
    :cond_0
    return-void
.end method

.method private setFilterQuery()V
    .locals 4

    .line 103
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 83
    invoke-static {v1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfigName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 86
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 87
    invoke-direct {p0}, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;->setFilterQuery()V

    .line 88
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .line 92
    const v0, 0x7f13000c

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 98
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetConfigActivity$WidgetConfigurationFragment;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 99
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 100
    return-void
.end method
