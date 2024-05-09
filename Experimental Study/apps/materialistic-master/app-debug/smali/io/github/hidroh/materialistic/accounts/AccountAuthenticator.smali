.class public Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;
.super Lio/github/hidroh/materialistic/accounts/EmptyAccountAuthenticator;
.source "AccountAuthenticator.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/accounts/EmptyAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/github/hidroh/materialistic/accounts/AccountAuthenticator;->mContext:Landroid/content/Context;

    const-class v2, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lio/github/hidroh/materialistic/LoginActivity;->EXTRA_ADD_ACCOUNT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    return-object v1
.end method
