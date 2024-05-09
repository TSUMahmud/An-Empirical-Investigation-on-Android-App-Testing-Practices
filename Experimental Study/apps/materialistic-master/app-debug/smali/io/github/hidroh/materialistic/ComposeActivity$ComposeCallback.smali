.class Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;
.super Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComposeCallback"
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mComposeActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/ComposeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/ComposeActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "composeActivity"    # Lio/github/hidroh/materialistic/ComposeActivity;
    .param p2, "parentId"    # Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    .line 226
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mAppContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mParentId:Ljava/lang/String;

    .line 228
    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 2
    .param p1, "successful"    # Z

    .line 232
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mParentId:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/Preferences;->deleteDraft(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ComposeActivity;->onSent(Ljava/lang/Boolean;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 240
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ComposeActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lio/github/hidroh/materialistic/ComposeActivity$ComposeCallback;->mComposeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/ComposeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/ComposeActivity;->onSent(Ljava/lang/Boolean;)V

    .line 243
    :cond_0
    return-void
.end method
