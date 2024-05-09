.class Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeedbackCallback"
.end annotation


# instance fields
.field private final mFeedbackActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/FeedbackActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/FeedbackActivity;)V
    .locals 1
    .param p1, "drawerActivity"    # Lio/github/hidroh/materialistic/FeedbackActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;->mFeedbackActivity:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method


# virtual methods
.method public onSent(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 103
    iget-object v0, p0, Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;->mFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;->mFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/FeedbackActivity;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/InjectableActivity;->isActivityDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;->mFeedbackActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/FeedbackActivity;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/FeedbackActivity;->onFeedbackSent(Z)V

    .line 106
    :cond_0
    return-void
.end method
