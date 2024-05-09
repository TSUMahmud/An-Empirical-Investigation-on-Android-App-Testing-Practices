.class public Lio/github/hidroh/materialistic/PopupSettingsFragment$PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PopupSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/PopupSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .line 70
    const v0, 0x7f130005

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 71
    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 73
    .local v0, "category":Landroidx/preference/Preference;
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_TITLE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v2, v1

    .local v2, "title":I
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v4, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_SUMMARY:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v4, v1

    .local v4, "summary":I
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v5, Lio/github/hidroh/materialistic/PopupSettingsFragment;->EXTRA_XML_PREFERENCES:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 80
    .local v1, "preferences":[I
    if-eqz v1, :cond_2

    .line 81
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget v6, v1, v3

    .line 82
    .local v6, "preference":I
    invoke-virtual {p0, v6}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 81
    .end local v6    # "preference":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method
