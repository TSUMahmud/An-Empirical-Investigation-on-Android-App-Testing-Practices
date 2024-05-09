.class public final Lio/github/hidroh/materialistic/ReleaseNotesActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "ReleaseNotesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReleaseNotesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReleaseNotesActivity.kt\nio/github/hidroh/materialistic/ReleaseNotesActivity\n*L\n1#1,57:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 52
    const/4 v0, 0x0

    const v1, 0x7f010011

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 53
    return-void
.end method

.method protected isDialogTheme()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 32
    const v1, 0x7f0c0025

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f090036

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$1;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$1;-><init>(Lio/github/hidroh/materialistic/ReleaseNotesActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$2;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/ReleaseNotesActivity$onCreate$2;-><init>(Lio/github/hidroh/materialistic/ReleaseNotesActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f090153

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .local v1, "$receiver":Landroid/webkit/WebView;
    const/4 v8, 0x0

    .line 39
    .local v8, "$i$a$-with-ReleaseNotesActivity$onCreate$3":I
    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 42
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const v5, 0x1010036

    invoke-static {v4, v5}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 44
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const v4, 0x101009b

    invoke-static {v2, v4}, Lio/github/hidroh/materialistic/AppUtils;->toHtmlColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 42
    const v0, 0x7f100143

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v5, "text/html"

    const-string v6, "UTF-8"

    .line 42
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v1    # "$receiver":Landroid/webkit/WebView;
    .end local v8    # "$i$a$-with-ReleaseNotesActivity$onCreate$3":I
    nop

    .line 38
    nop

    .line 47
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/Preferences;->setReleaseNotesSeen(Landroid/content/Context;)V

    .line 48
    return-void
.end method
