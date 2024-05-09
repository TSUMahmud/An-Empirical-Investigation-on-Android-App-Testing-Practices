.class Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/github/hidroh/materialistic/data/ResponseListener<",
        "Lio/github/hidroh/materialistic/data/UserManager$User;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUserActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/UserActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/UserActivity;)V
    .locals 1
    .param p1, "userActivity"    # Lio/github/hidroh/materialistic/UserActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    .line 259
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f10018d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :cond_0
    return-void
.end method

.method public onResponse(Lio/github/hidroh/materialistic/data/UserManager$User;)V
    .locals 1
    .param p1, "response"    # Lio/github/hidroh/materialistic/data/UserManager$User;

    .line 263
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->mUserActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/UserActivity;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/UserActivity;->onUserLoaded(Lio/github/hidroh/materialistic/data/UserManager$User;)V

    .line 266
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 253
    check-cast p1, Lio/github/hidroh/materialistic/data/UserManager$User;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/UserActivity$UserResponseListener;->onResponse(Lio/github/hidroh/materialistic/data/UserManager$User;)V

    return-void
.end method
