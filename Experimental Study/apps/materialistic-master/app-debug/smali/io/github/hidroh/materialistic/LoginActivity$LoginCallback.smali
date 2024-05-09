.class Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;
.super Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginCallback"
.end annotation


# instance fields
.field private final mLoginActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/LoginActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/LoginActivity;)V
    .locals 1
    .param p1, "loginActivity"    # Lio/github/hidroh/materialistic/LoginActivity;

    .line 138
    invoke-direct {p0}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    .line 140
    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .line 144
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/github/hidroh/materialistic/LoginActivity;->onLoggedIn(ZLjava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 151
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lio/github/hidroh/materialistic/LoginActivity$LoginCallback;->mLoginActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/LoginActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/LoginActivity;->onLoggedIn(ZLjava/lang/String;)V

    .line 154
    :cond_1
    return-void
.end method
