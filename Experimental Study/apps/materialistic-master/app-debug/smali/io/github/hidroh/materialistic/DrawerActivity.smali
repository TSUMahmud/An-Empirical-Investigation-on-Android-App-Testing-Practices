.class public abstract Lio/github/hidroh/materialistic/DrawerActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "DrawerActivity.java"


# instance fields
.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDrawer:Landroid/view/View;

.field private mDrawerAccount:Landroid/widget/TextView;

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerLogout:Landroid/view/View;

.field private mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private mDrawerUser:Landroid/view/View;

.field private final mLoginListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mPendingNavigation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mPendingNavigationExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    .line 53
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$JfhQqfNZ7Mt09Jgrwtu9TI7-RCE;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$JfhQqfNZ7Mt09Jgrwtu9TI7-RCE;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mLoginListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private closeDrawers()V
    .locals 1

    .line 226
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 227
    return-void
.end method

.method private confirmLogout()V
    .locals 3

    .line 194
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 195
    const v1, 0x7f10009c

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 196
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$4dQ2Rb1Y_6_eF5Pa5-XRDvSL518;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$4dQ2Rb1Y_6_eF5Pa5-XRDvSL518;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    .line 197
    const v2, 0x104000a

    invoke-interface {v0, v2, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->show()Landroid/app/Dialog;

    .line 200
    return-void
.end method

.method public static synthetic lambda$confirmLogout$16(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/Preferences;->setUsername(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 55
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->setUsername()V

    .line 58
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setUpDrawer$1(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 140
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->showLogin()V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$10(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 169
    const-class v0, Lio/github/hidroh/materialistic/JobsActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$11(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 170
    const-class v0, Lio/github/hidroh/materialistic/SettingsActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$12(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 171
    const-class v0, Lio/github/hidroh/materialistic/FavoriteActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$13(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 172
    const-class v0, Lio/github/hidroh/materialistic/SubmitActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$14(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lio/github/hidroh/materialistic/UserActivity;->EXTRA_USERNAME:Ljava/lang/String;

    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-class v1, Lio/github/hidroh/materialistic/UserActivity;

    invoke-direct {p0, v1, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public static synthetic lambda$setUpDrawer$15(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 178
    const-class v0, Lio/github/hidroh/materialistic/FeedbackActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$2(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->confirmLogout()V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$3(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .param p1, "moreContainer"    # Landroid/view/View;
    .param p2, "moreToggle"    # Landroid/widget/TextView;
    .param p3, "v"    # Landroid/view/View;

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const v1, 0x7f080077

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 146
    const v0, 0x1010212

    .line 147
    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    .line 146
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const v0, 0x7f080079

    invoke-virtual {p2, v1, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 152
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    const v0, 0x1010038

    .line 155
    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    .line 154
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const v0, 0x7f080078

    invoke-virtual {p2, v1, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 160
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setUpDrawer$4(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 163
    const-class v0, Lio/github/hidroh/materialistic/ListActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$5(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 164
    const-class v0, Lio/github/hidroh/materialistic/BestActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$6(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 165
    const-class v0, Lio/github/hidroh/materialistic/PopularActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$7(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 166
    const-class v0, Lio/github/hidroh/materialistic/NewActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$8(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 167
    const-class v0, Lio/github/hidroh/materialistic/ShowActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$setUpDrawer$9(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 168
    const-class v0, Lio/github/hidroh/materialistic/AskActivity;

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;)V

    return-void
.end method

.method private navigate(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/DrawerActivity;->navigate(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method private navigate(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 207
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mPendingNavigation:Ljava/lang/Class;

    .line 208
    iput-object p2, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mPendingNavigationExtras:Landroid/os/Bundle;

    .line 209
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->closeDrawers()V

    .line 210
    return-void
.end method

.method private setUpDrawer()V
    .locals 4

    .line 140
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerAccount:Landroid/widget/TextView;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$tuaqvRCmQrEFm-fPCEwt8fQB3N0;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$tuaqvRCmQrEFm-fPCEwt8fQB3N0;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLogout:Landroid/view/View;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$jQT-Z5eTq6mIm2eGU8jzun6vsxg;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$jQT-Z5eTq6mIm2eGU8jzun6vsxg;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "moreContainer":Landroid/view/View;
    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, "moreToggle":Landroid/widget/TextView;
    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$OVqoo5piv3QhMo2VZ4gIb4_Arsw;

    invoke-direct {v2, p0, v0, v1}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$OVqoo5piv3QhMo2VZ4gIb4_Arsw;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v2, 0x7f09005f

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$ZelpaC1n4_kuylTcTrG2sRAqa0U;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$ZelpaC1n4_kuylTcTrG2sRAqa0U;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v2, 0x7f090059

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$xsSaUO5R6Lp6VjKsH8Kwb4r81eU;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$xsSaUO5R6Lp6VjKsH8Kwb4r81eU;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$oBMqkkqviAI1d9MDrdXdaP5q5-I;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$oBMqkkqviAI1d9MDrdXdaP5q5-I;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$93eLA-MuglJeyltKfsUhLEOR-HQ;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$93eLA-MuglJeyltKfsUhLEOR-HQ;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$SyqoIWynOVgITaGHIRAY8riTUXg;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$SyqoIWynOVgITaGHIRAY8riTUXg;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$EbF4RZX8dx-gQmUBQLJCmc6YIgs;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$EbF4RZX8dx-gQmUBQLJCmc6YIgs;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v2, 0x7f09005d

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$eXIwhSk7VHbcA93J9YnIhA1lB50;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$eXIwhSk7VHbcA93J9YnIhA1lB50;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v2, 0x7f090067

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$XiUkTb-baa-EfWkQGvC3j7UDm4s;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$XiUkTb-baa-EfWkQGvC3j7UDm4s;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$C22S_KblbuXhE1EwrNQNKw0Ksng;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$C22S_KblbuXhE1EwrNQNKw0Ksng;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v2, 0x7f090069

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$VyhGvUQ2a6T-z-m61PbppXDuvaU;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$VyhGvUQ2a6T-z-m61PbppXDuvaU;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v2, 0x7f09006a

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$mSTjBf8fvhSCi1Nb0ZJDAS2tPzQ;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$mSTjBf8fvhSCi1Nb0ZJDAS2tPzQ;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v2, 0x7f09005c

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$SAIeO9JaMB34qiD9xvklKpGapgI;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$DrawerActivity$SAIeO9JaMB34qiD9xvklKpGapgI;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method private setUsername()V
    .locals 3

    .line 213
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerAccount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLogout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerUser:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerAccount:Landroid/widget/TextView;

    const v2, 0x7f100098

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLogout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerUser:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :goto_0
    return-void
.end method

.method private showLogin()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 184
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "io.github.hidroh.materialistic"

    .line 185
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 186
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/AppUtils;->showAccountChooser(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;[Landroid/accounts/Account;)V

    .line 191
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 113
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->closeDrawers()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->isLaunchScreenLast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onBackPressed()V

    .line 120
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 102
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0c001e

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawer:Landroid/view/View;

    .line 65
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 66
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerAccount:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLogout:Landroid/view/View;

    .line 68
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerUser:Landroid/view/View;

    .line 69
    new-instance v0, Lio/github/hidroh/materialistic/DrawerActivity$1;

    iget-object v4, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x7f1000ad

    const v6, 0x7f10003b

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lio/github/hidroh/materialistic/DrawerActivity$1;-><init>(Lio/github/hidroh/materialistic/DrawerActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 88
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mLoginListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 89
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 90
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->setUpDrawer()V

    .line 91
    invoke-direct {p0}, Lio/github/hidroh/materialistic/DrawerActivity;->setUsername()V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 124
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onDestroy()V

    .line 125
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 126
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mLoginListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 127
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 128
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 108
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lio/github/hidroh/materialistic/DrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 98
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .line 132
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    .local v0, "drawerLayout":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 136
    return-void
.end method
