.class public Lio/github/hidroh/materialistic/SettingsActivity;
.super Lio/github/hidroh/materialistic/DrawerActivity;
.source "SettingsActivity.java"


# instance fields
.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_TITLE:Ljava/lang/String;

    .line 44
    const v2, 0x7f100056

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_PREFERENCES:Ljava/lang/String;

    .line 45
    const v2, 0x7f130007

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_TITLE:Ljava/lang/String;

    .line 48
    const v2, 0x7f1000a9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_PREFERENCES:Ljava/lang/String;

    .line 49
    const v2, 0x7f13000a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_TITLE:Ljava/lang/String;

    .line 52
    const v2, 0x7f100096

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_PREFERENCES:Ljava/lang/String;

    .line 53
    const v2, 0x7f130009

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_TITLE:Ljava/lang/String;

    .line 56
    const v2, 0x7f100047

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_PREFERENCES:Ljava/lang/String;

    .line 57
    const v2, 0x7f130006

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_TITLE:Ljava/lang/String;

    .line 60
    const v2, 0x7f100140

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/PreferencesActivity;->EXTRA_PREFERENCES:Ljava/lang/String;

    .line 61
    const v2, 0x7f13000b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$5(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$6(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/ReleaseNotesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onOptionsItemSelected$7(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 82
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "io.github.hidroh.materialistic.recentprovider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 82
    return-void
.end method

.method public static synthetic lambda$onOptionsItemSelected$8(Lio/github/hidroh/materialistic/SettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 96
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->reset(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->restart(Landroid/app/Activity;Z)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/DrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 42
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$LuxDLLuAzZ6i7UGySK6QnLGEUBw;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$LuxDLLuAzZ6i7UGySK6QnLGEUBw;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$HwvIzqOeUGo9hlpYf89OwrXErew;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$HwvIzqOeUGo9hlpYf89OwrXErew;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$6YRvVi3FYrbwqNt8FDg_AOUOHYo;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$6YRvVi3FYrbwqNt8FDg_AOUOHYo;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$3l3oDvRUBiq7MlCaRWbz-xU5SA4;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$3l3oDvRUBiq7MlCaRWbz-xU5SA4;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$pjmI3UjZTOJ8e25mhgPo1yBC2nk;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$pjmI3UjZTOJ8e25mhgPo1yBC2nk;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$pwqpN5GqhDHIDWfG-uqhcBJTo6A;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$pwqpN5GqhDHIDWfG-uqhcBJTo6A;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$lLK2f23BKhuFTNeaBDxg_3MafZE;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$lLK2f23BKhuFTNeaBDxg_3MafZE;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 70
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x104000a

    const/4 v3, 0x0

    const/high16 v4, 0x1040000

    const v5, 0x7f0900a2

    if-ne v0, v5, :cond_0

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/SettingsActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 78
    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v5, 0x7f100039

    .line 79
    invoke-interface {v0, v5}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 80
    invoke-interface {v0, v4, v3}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$k0iWxIzpBgK8fn0mTJ1I0SWLu4U;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$k0iWxIzpBgK8fn0mTJ1I0SWLu4U;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    .line 81
    invoke-interface {v0, v2, v3}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 88
    return v1

    .line 90
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v5, 0x7f0900b8

    if-ne v0, v5, :cond_1

    .line 91
    iget-object v0, p0, Lio/github/hidroh/materialistic/SettingsActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 92
    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v5, 0x7f100146

    .line 93
    invoke-interface {v0, v5}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 94
    invoke-interface {v0, v4, v3}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$kViIk2VVZIQOKRFigNxjn6YpIg8;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SettingsActivity$kViIk2VVZIQOKRFigNxjn6YpIg8;-><init>(Lio/github/hidroh/materialistic/SettingsActivity;)V

    .line 95
    invoke-interface {v0, v2, v3}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900a1

    if-ne v0, v2, :cond_2

    .line 103
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->clearDrafts(Landroid/content/Context;)V

    .line 104
    return v1

    .line 106
    :cond_2
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/DrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
