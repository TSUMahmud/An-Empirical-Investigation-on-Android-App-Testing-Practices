.class public Lio/github/hidroh/materialistic/SubmitActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "SubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;
    }
.end annotation


# static fields
.field private static final HN_GUIDELINES_URL:Ljava/lang/String; = "https://news.ycombinator.com/newsguidelines.html"

.field private static final REGEX_FUZZY_URL:Ljava/lang/String; = "(.*)((http|https)://[^\\s]*)$"

.field private static final STATE_SUBJECT:Ljava/lang/String; = "state:subject"

.field private static final STATE_TEXT:Ljava/lang/String; = "state:text"


# instance fields
.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContentEditText:Landroid/widget/TextView;

.field private mContentLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mSending:Z

.field mTitleEditText:Landroid/widget/TextView;

.field private mTitleLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lio/github/hidroh/materialistic/SubmitActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/SubmitActivity;

    .line 46
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onBackPressed()V

    return-void
.end method

.method private extractUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 220
    const-string v0, "(.*)((http|https)://[^\\s]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 221
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/github/hidroh/materialistic/SubmitActivity;->trimTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    return-void
.end method

.method private isUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 212
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    nop

    .line 216
    const/4 v0, 0x1

    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$onBackPressed$1(Lio/github/hidroh/materialistic/SubmitActivity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 160
    invoke-static {p0}, Lio/github/hidroh/materialistic/SubmitActivity;->access$001(Lio/github/hidroh/materialistic/SubmitActivity;)V

    return-void
.end method

.method public static synthetic lambda$onOptionsItemSelected$0(Lio/github/hidroh/materialistic/SubmitActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "isUrl"    # Z
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 128
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/SubmitActivity;->submit(Z)V

    return-void
.end method

.method private submit(Z)V
    .locals 7
    .param p1, "isUrl"    # Z

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/SubmitActivity;->toggleControls(Z)V

    .line 178
    const v0, 0x7f100151

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    .line 180
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;

    invoke-direct {v6, p0}, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;-><init>(Lio/github/hidroh/materialistic/SubmitActivity;)V

    .line 179
    move-object v2, p0

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lio/github/hidroh/materialistic/accounts/UserServices;->submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 181
    return-void
.end method

.method private toggleControls(Z)V
    .locals 2
    .param p1, "sending"    # Z

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mSending:Z

    .line 246
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 249
    return-void
.end method

.method private trimTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 230
    .local v0, "lastIndex":I
    :goto_0
    if-ltz v0, :cond_1

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 232
    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 233
    :cond_0
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, -0x1

    .line 237
    goto :goto_0

    .line 238
    :cond_1
    if-ltz v0, :cond_2

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    return-object v1
.end method

.method private validate()Z
    .locals 3

    .line 165
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 166
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 167
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f100186

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f10018c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 156
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 157
    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mSending:Z

    if-eqz v1, :cond_0

    const v1, 0x7f10004b

    goto :goto_0

    :cond_0
    const v1, 0x7f10004a

    .line 158
    :goto_0
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 159
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$SubmitActivity$R07zIwpBylMSqJC85aAzZeRB-qo;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$SubmitActivity$R07zIwpBylMSqJC85aAzZeRB-qo;-><init>(Lio/github/hidroh/materialistic/SubmitActivity;)V

    .line 160
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->show()Landroid/app/Dialog;

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 64
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 69
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 70
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 71
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "subject":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    .end local v0    # "subject":Ljava/lang/String;
    :cond_0
    const-string v0, "state:subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "subject":Ljava/lang/String;
    const-string v1, "state:text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/SubmitActivity;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v3, Lio/github/hidroh/materialistic/SubmitActivity$1;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/SubmitActivity$1;-><init>(Lio/github/hidroh/materialistic/SubmitActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .end local v2    # "webView":Landroid/webkit/WebView;
    goto :goto_1

    .line 95
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/SubmitActivity;->extractUrl(Ljava/lang/String;)V

    nop

    .line 99
    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method onError(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "data"    # Landroid/net/Uri;

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    if-eqz p2, :cond_0

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/SubmitActivity;->onBackPressed()V

    .line 117
    return v1

    .line 119
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0900bb

    const/4 v3, 0x0

    const v4, 0x104000a

    if-ne v0, v2, :cond_3

    .line 120
    invoke-direct {p0}, Lio/github/hidroh/materialistic/SubmitActivity;->validate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    return v1

    .line 123
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/SubmitActivity;->isUrl(Ljava/lang/String;)Z

    move-result v0

    .line 124
    .local v0, "isUrl":Z
    iget-object v2, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 125
    invoke-interface {v2, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const v5, 0x7f10004e

    goto :goto_0

    :cond_2
    const v5, 0x7f10004d

    .line 126
    :goto_0
    invoke-interface {v2, v5}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v2

    new-instance v5, Lio/github/hidroh/materialistic/-$$Lambda$SubmitActivity$6BNqAbhokyIfo-wN3hXF_Ml8m8c;

    invoke-direct {v5, p0, v0}, Lio/github/hidroh/materialistic/-$$Lambda$SubmitActivity$6BNqAbhokyIfo-wN3hXF_Ml8m8c;-><init>(Lio/github/hidroh/materialistic/SubmitActivity;Z)V

    .line 128
    invoke-interface {v2, v4, v5}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v2

    const/high16 v4, 0x1040000

    .line 129
    invoke-interface {v2, v4, v3}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v2

    .line 130
    invoke-interface {v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 132
    return v1

    .line 134
    .end local v0    # "isUrl":Z
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900ae

    if-ne v0, v1, :cond_4

    .line 135
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "webView":Landroid/webkit/WebView;
    const-string v1, "https://news.ycombinator.com/newsguidelines.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 138
    invoke-interface {v1, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v1

    .line 139
    invoke-interface {v1, v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setView(Landroid/view/View;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v1

    .line 140
    invoke-interface {v1, v4, v3}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 144
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 109
    const v0, 0x7f0900bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mSending:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "state:subject"

    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mTitleEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "state:text"

    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mContentEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method onSubmitted(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 186
    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/SubmitActivity;->toggleControls(Z)V

    .line 187
    const v1, 0x7f10015c

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const v1, 0x7f10015e

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/github/hidroh/materialistic/NewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lio/github/hidroh/materialistic/NewActivity;->EXTRA_REFRESH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V

    .line 200
    :cond_2
    :goto_0
    return-void
.end method
