.class public Lio/github/hidroh/materialistic/OfflineWebActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "OfflineWebActivity.java"


# static fields
.field static final EXTRA_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/OfflineWebActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_URL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/OfflineWebActivity;->EXTRA_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V
    .locals 1
    .param p0, "scrollView"    # Landroidx/core/widget/NestedScrollView;
    .param p1, "v"    # Landroid/view/View;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/OfflineWebActivity;->EXTRA_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ThemedActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const v1, 0x7f0c0023

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f0900cd

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 48
    .local v1, "scrollView":Landroidx/core/widget/NestedScrollView;
    const v2, 0x7f09013f

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 49
    .local v2, "toolbar":Landroidx/appcompat/widget/Toolbar;
    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$OfflineWebActivity$VEf-ExAjvcanLiAI-884sCVEwE0;

    invoke-direct {v3, v1}, Lio/github/hidroh/materialistic/-$$Lambda$OfflineWebActivity$VEf-ExAjvcanLiAI-884sCVEwE0;-><init>(Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 53
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const v4, 0x7f1000a9

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    .line 54
    const v3, 0x7f0900db

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 55
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    const v4, 0x7f090153

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 56
    .local v4, "webView":Landroid/webkit/WebView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 57
    new-instance v5, Lio/github/hidroh/materialistic/OfflineWebActivity$1;

    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->adBlockEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {v5, p0, v6}, Lio/github/hidroh/materialistic/OfflineWebActivity$1;-><init>(Lio/github/hidroh/materialistic/OfflineWebActivity;Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    new-instance v5, Lio/github/hidroh/materialistic/OfflineWebActivity$2;

    invoke-direct {v5, p0, v3, v4}, Lio/github/hidroh/materialistic/OfflineWebActivity$2;-><init>(Lio/github/hidroh/materialistic/OfflineWebActivity;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lio/github/hidroh/materialistic/AppUtils;->toggleWebViewZoom(Landroid/webkit/WebSettings;Z)V

    .line 77
    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
