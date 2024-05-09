.class public Lio/github/hidroh/materialistic/ComposeActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_PARENT_ID:Ljava/lang/String;

.field public static final EXTRA_PARENT_TEXT:Ljava/lang/String;

.field private static final FORMAT_QUOTE:Ljava/lang/String; = "> %s\n\n"

.field private static final HN_FORMAT_DOC_URL:Ljava/lang/String; = "https://news.ycombinator.com/formatdoc"

.field private static final PARAGRAPH_BREAK_REGEX:Ljava/lang/String; = "[\\n]{2,}"

.field private static final PARAGRAPH_QUOTE:Ljava/lang/String; = "\n\n> "


# instance fields
.field mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mParentId:Ljava/lang/String;

.field private mParentText:Ljava/lang/String;

.field private mQuoteText:Ljava/lang/String;

.field private mSending:Z

.field mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_PARENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_ID:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_PARENT_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lio/github/hidroh/materialistic/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/ComposeActivity;

    .line 40
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$101(Lio/github/hidroh/materialistic/ComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lio/github/hidroh/materialistic/ComposeActivity;

    .line 40
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onBackPressed()V

    return-void
.end method

.method private createQuote()Ljava/lang/String;
    .locals 6

    .line 200
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mQuoteText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "> %s\n\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentText:Ljava/lang/String;

    invoke-static {v3}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\n]{2,}"

    const-string v5, "\n\n> "

    .line 204
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 201
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mQuoteText:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mQuoteText:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$onBackPressed$3(Lio/github/hidroh/materialistic/ComposeActivity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 164
    invoke-static {p0}, Lio/github/hidroh/materialistic/ComposeActivity;->access$101(Lio/github/hidroh/materialistic/ComposeActivity;)V

    return-void
.end method

.method public static synthetic lambda$onBackPressed$4(Lio/github/hidroh/materialistic/ComposeActivity;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 166
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->saveDraft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lio/github/hidroh/materialistic/ComposeActivity;->access$001(Lio/github/hidroh/materialistic/ComposeActivity;)V

    .line 168
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/ComposeActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lio/github/hidroh/materialistic/ComposeActivity;Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 76
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onCreate$2(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "toggle"    # Landroid/widget/TextView;
    .param p2, "v"    # Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    const v0, 0x7f080079

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 88
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    const v0, 0x7f080078

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 93
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_0
    return-void
.end method

.method private send()V
    .locals 4

    .line 173
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lio/github/hidroh/materialistic/Preferences;->saveDraft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/ComposeActivity;->toggleControls(Z)V

    .line 176
    const v1, 0x7f100151

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    iget-object v2, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    new-instance v3, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;

    invoke-direct {v3, p0, v2}, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;-><init>(Lio/github/hidroh/materialistic/ComposeActivity;Ljava/lang/String;)V

    invoke-interface {v1, p0, v2, v0, v3}, Lio/github/hidroh/materialistic/accounts/UserServices;->reply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 178
    return-void
.end method

.method private toggleControls(Z)V
    .locals 2
    .param p1, "sending"    # Z

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mSending:Z

    .line 214
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 216
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 155
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mSending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    .line 156
    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/Preferences;->getDraft(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 161
    invoke-interface {v0, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f10004c

    .line 162
    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$ck8vUFYX-nUqLQrStJpaU5ln36A;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$ck8vUFYX-nUqLQrStJpaU5ln36A;-><init>(Lio/github/hidroh/materialistic/ComposeActivity;)V

    .line 163
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$ueveYzvHz5r5GegA8lx6h9GXRA0;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$ueveYzvHz5r5GegA8lx6h9GXRA0;-><init>(Lio/github/hidroh/materialistic/ComposeActivity;)V

    .line 165
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->show()Landroid/app/Dialog;

    .line 170
    return-void

    .line 157
    :cond_1
    :goto_0
    invoke-super {p0}, Lio/github/hidroh/materialistic/InjectableActivity;->onBackPressed()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 64
    const v0, 0x7f0c001d

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

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 69
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    .line 70
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/Preferences;->getDraft(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$aP77gx8T95_Q0nSV_GArsw6Bja4;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$aP77gx8T95_Q0nSV_GArsw6Bja4;-><init>(Lio/github/hidroh/materialistic/ComposeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$nm5yEtleRB-W0Pbl3pxfpFsxQNE;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$nm5yEtleRB-W0Pbl3pxfpFsxQNE;-><init>(Lio/github/hidroh/materialistic/ComposeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ComposeActivity;->EXTRA_PARENT_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentText:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, "toggle":Landroid/widget/TextView;
    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentText:Ljava/lang/String;

    invoke-static {v2}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/AppUtils;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 84
    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$9y4HCT-RZqFkImFce--I7pFOJjs;

    invoke-direct {v2, v1, v0}, Lio/github/hidroh/materialistic/-$$Lambda$ComposeActivity$9y4HCT-RZqFkImFce--I7pFOJjs;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .end local v0    # "toggle":Landroid/widget/TextView;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0900bb

    if-ne v0, v3, :cond_1

    .line 117
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const v0, 0x7f100045

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return v1

    .line 121
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/ComposeActivity;->send()V

    .line 122
    return v2

    .line 125
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0900b0

    if-ne v0, v3, :cond_2

    .line 126
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0}, Lio/github/hidroh/materialistic/ComposeActivity;->createQuote()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 128
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    .line 129
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ComposeActivity;->onBackPressed()V

    .line 130
    return v2

    .line 132
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900b9

    if-ne v0, v1, :cond_4

    .line 133
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences;->saveDraft(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v2

    .line 136
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900aa

    if-ne v0, v1, :cond_5

    .line 137
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentId:Ljava/lang/String;

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/Preferences;->deleteDraft(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    return v2

    .line 140
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900ae

    if-ne v0, v1, :cond_6

    .line 141
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "webView":Landroid/webkit/WebView;
    const-string v1, "https://news.ycombinator.com/formatdoc"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    .line 144
    invoke-interface {v1, p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v1

    .line 145
    invoke-interface {v1, v0}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setView(Landroid/view/View;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v1

    const v3, 0x104000a

    const/4 v4, 0x0

    .line 146
    invoke-interface {v1, v3, v4}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Lio/github/hidroh/materialistic/AlertDialogBuilder;->show()Landroid/app/Dialog;

    .line 148
    return v2

    .line 150
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 107
    const v0, 0x7f0900b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mSending:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mParentText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    const v0, 0x7f0900bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mSending:Z

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 109
    const v0, 0x7f0900b9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mSending:Z

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 110
    const v0, 0x7f0900aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mSending:Z

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method onSent(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 182
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 183
    const v1, 0x7f10003f

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/ComposeActivity;->toggleControls(Z)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const v1, 0x7f100046

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity;->mAlertDialogBuilder:Lio/github/hidroh/materialistic/AlertDialogBuilder;

    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->showLogin(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;)V

    .line 195
    :cond_2
    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/ComposeActivity;->toggleControls(Z)V

    .line 197
    :cond_3
    :goto_0
    return-void
.end method
