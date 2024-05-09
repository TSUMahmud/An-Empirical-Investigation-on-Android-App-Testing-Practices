.class public Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;
.super Ljava/lang/Object;
.source "FeedbackClient.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/FeedbackClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FeedbackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;,
        Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;
    }
.end annotation


# instance fields
.field private final mFeedbackService:Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;

.field private final mMainThreadScheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/RestServiceFactory;Lrx/Scheduler;)V
    .locals 3
    .param p1, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .param p2, "mainThreadScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->rxEnabled(Z)Lio/github/hidroh/materialistic/data/RestServiceFactory;

    move-result-object v0

    const-string v1, "https://api.github.com/"

    const-class v2, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;

    .line 49
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;->mFeedbackService:Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;

    .line 50
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;->mMainThreadScheduler:Lrx/Scheduler;

    .line 51
    return-void
.end method

.method static synthetic lambda$send$0(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "response"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$send$1(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;

    .line 55
    const-string v0, "%s\nDevice: %s %s, SDK: %s, app version: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 60
    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 55
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 61
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;->mFeedbackService:Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;

    new-instance v1, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;

    invoke-direct {v1, p1, p2}, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;->createGithubIssue(Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;

    .line 62
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;

    .line 63
    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;->mMainThreadScheduler:Lrx/Scheduler;

    .line 64
    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$BE73u6oNm1Khg_OsoL6G1ckP1MQ;

    invoke-direct {v1, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$BE73u6oNm1Khg_OsoL6G1ckP1MQ;-><init>(Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;)V

    .line 65
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 66
    return-void
.end method
