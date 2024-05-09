.class public abstract Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "AccountAuthenticatorActivity.java"


# instance fields
.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mResultBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 28
    iput-object v0, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 42
    iget-object v0, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_1

    .line 44
    iget-object v1, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 47
    :cond_0
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 50
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 52
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    nop

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 35
    iget-object v0, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 38
    :cond_0
    return-void
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .line 62
    iput-object p1, p0, Lio/github/hidroh/materialistic/AccountAuthenticatorActivity;->mResultBundle:Landroid/os/Bundle;

    .line 63
    return-void
.end method
