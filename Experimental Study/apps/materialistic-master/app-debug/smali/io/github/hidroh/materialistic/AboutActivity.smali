.class public final Lio/github/hidroh/materialistic/AboutActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "AboutActivity.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method

.method private final setTextWithLinks(ILjava/lang/String;)V
    .locals 2
    .param p1, "textViewResId"    # I
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "supportActionBar!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 34
    const-string v0, ""

    .line 35
    .local v0, "versionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 36
    .local v1, "versionCode":I
    nop

    .line 37
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "packageManager.getPackag\u2026ckageName, 0).versionName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    .line 39
    :catch_0
    move-exception v3

    .line 41
    :goto_0
    nop

    .line 43
    const v3, 0x7f090125

    const v4, 0x7f10002c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getString(R.string.appli\u2026versionName, versionCode)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lio/github/hidroh/materialistic/AboutActivity;->setTextWithLinks(ILjava/lang/String;)V

    .line 44
    const v2, 0x7f090126

    const v3, 0x7f100053

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.developer_info_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lio/github/hidroh/materialistic/AboutActivity;->setTextWithLinks(ILjava/lang/String;)V

    .line 45
    const v2, 0x7f090128

    const v3, 0x7f10008d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.libraries_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lio/github/hidroh/materialistic/AboutActivity;->setTextWithLinks(ILjava/lang/String;)V

    .line 46
    const v2, 0x7f090129

    const v3, 0x7f10008f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.license_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lio/github/hidroh/materialistic/AboutActivity;->setTextWithLinks(ILjava/lang/String;)V

    .line 47
    const v2, 0x7f090124

    const v3, 0x7f100172

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.third_party_licenses_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lio/github/hidroh/materialistic/AboutActivity;->setTextWithLinks(ILjava/lang/String;)V

    .line 48
    const v2, 0x7f09012a

    const v3, 0x7f100139

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.privacy_policy_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lio/github/hidroh/materialistic/AboutActivity;->setTextWithLinks(ILjava/lang/String;)V

    .line 49
    return-void

    .line 31
    .end local v0    # "versionName":Ljava/lang/String;
    .end local v1    # "versionCode":I
    .end local p0    # "this":Lio/github/hidroh/materialistic/AboutActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
