.class Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;
.super Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
.source "SubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/SubmitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubmitCallback"
.end annotation


# instance fields
.field private final mSubmitActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/SubmitActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/SubmitActivity;)V
    .locals 1
    .param p1, "submitActivity"    # Lio/github/hidroh/materialistic/SubmitActivity;

    .line 255
    invoke-direct {p0}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    .line 257
    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .line 261
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/SubmitActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/SubmitActivity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/SubmitActivity;->onSubmitted(Ljava/lang/Boolean;)V

    .line 264
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 268
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/SubmitActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    instance-of v0, p1, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;

    if-eqz v0, :cond_0

    .line 270
    move-object v0, p1

    check-cast v0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;

    .line 271
    .local v0, "e":Lio/github/hidroh/materialistic/accounts/UserServices$Exception;
    iget-object v1, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/hidroh/materialistic/SubmitActivity;

    iget v2, v0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;->message:I

    iget-object v3, v0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;->data:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lio/github/hidroh/materialistic/SubmitActivity;->onError(ILandroid/net/Uri;)V

    .line 272
    .end local v0    # "e":Lio/github/hidroh/materialistic/accounts/UserServices$Exception;
    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/SubmitActivity$SubmitCallback;->mSubmitActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/SubmitActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/SubmitActivity;->onSubmitted(Ljava/lang/Boolean;)V

    .line 276
    :cond_1
    :goto_0
    return-void
.end method
