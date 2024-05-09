.class public Lio/github/hidroh/materialistic/LoginActivity;
.super Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_ADD_ACCOUNT:Ljava/lang/String;


# instance fields
.field mAccountManager:Landroid/accounts/AccountManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoginButton:Landroid/view/View;

.field private mPassword:Ljava/lang/String;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mRegisterButton:Landroid/view/View;

.field mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;

.field private mUsernameEditText:Landroid/widget/EditText;

.field private mUsernameLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ADD_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/LoginActivity;->EXTRA_ADD_ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private addAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "io.github.hidroh.materialistic"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lio/github/hidroh/materialistic/LoginActivity;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 126
    iget-object v1, p0, Lio/github/hidroh/materialistic/LoginActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "authAccount"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "accountType"

    const-string v3, "io.github.hidroh.materialistic"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v1}, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 131
    invoke-static {p0, p1}, Lio/github/hidroh/materialistic/Preferences;->setUsername(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->finish()V

    .line 133
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/LoginActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lio/github/hidroh/materialistic/LoginActivity;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mLoginButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mRegisterButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 71
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-direct {p0, v0, v2, v1}, Lio/github/hidroh/materialistic/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lio/github/hidroh/materialistic/LoginActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 75
    invoke-direct {p0}, Lio/github/hidroh/materialistic/LoginActivity;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mLoginButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mRegisterButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 81
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lio/github/hidroh/materialistic/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "createAccount"    # Z

    .line 104
    iput-object p1, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsername:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPassword:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUserServices:Lio/github/hidroh/materialistic/accounts/UserServices;

    new-instance v1, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;-><init>(Lio/github/hidroh/materialistic/LoginActivity;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lio/github/hidroh/materialistic/accounts/UserServices;->login(Ljava/lang/String;Ljava/lang/String;ZLio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 107
    return-void
.end method

.method private validate()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 93
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 94
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f100190

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f1000b1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method protected isDialogTheme()Z
    .locals 1

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "username":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/LoginActivity;->EXTRA_ADD_ACCOUNT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .local v1, "addAccount":Z
    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 53
    const v2, 0x7f090132

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 54
    const v2, 0x7f090130

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 55
    const v2, 0x7f090071

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    .line 56
    const v2, 0x7f09009d

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mLoginButton:Landroid/view/View;

    .line 57
    const v2, 0x7f0900e2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mRegisterButton:Landroid/view/View;

    .line 58
    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const v2, 0x7f10013e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 60
    iget-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mRegisterButton:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 64
    iget-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mLoginButton:Landroid/view/View;

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$LoginActivity$LeTm0BfxXz3mg-VxoV3EqbXs1B0;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$LoginActivity$LeTm0BfxXz3mg-VxoV3EqbXs1B0;-><init>(Lio/github/hidroh/materialistic/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mRegisterButton:Landroid/view/View;

    new-instance v3, Lio/github/hidroh/materialistic/-$$Lambda$LoginActivity$PnUl80zPQZ9xHSCZfXV1CcktASk;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/-$$Lambda$LoginActivity$PnUl80zPQZ9xHSCZfXV1CcktASk;-><init>(Lio/github/hidroh/materialistic/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method onLoggedIn(ZLjava/lang/String;)V
    .locals 4
    .param p1, "successful"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mLoginButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity;->mRegisterButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    iget-object v2, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lio/github/hidroh/materialistic/LoginActivity;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lio/github/hidroh/materialistic/LoginActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const v2, 0x7f10019a

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lio/github/hidroh/materialistic/LoginActivity;->mUsername:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f100099

    .line 117
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 116
    :goto_0
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    :goto_1
    return-void
.end method
