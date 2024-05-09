.class public Lio/github/hidroh/materialistic/accounts/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# instance fields
.field private mAuthenticator:Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lio/github/hidroh/materialistic/accounts/AuthenticatorService;->mAuthenticator:Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;

    invoke-virtual {v0}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    new-instance v0, Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/accounts/AuthenticatorService;->mAuthenticator:Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;

    .line 31
    return-void
.end method
