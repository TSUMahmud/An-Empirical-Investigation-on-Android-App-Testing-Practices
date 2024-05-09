.class interface abstract Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$FeedbackService;
.super Ljava/lang/Object;
.source "FeedbackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FeedbackService"
.end annotation


# static fields
.field public static final GITHUB_API_URL:Ljava/lang/String; = "https://api.github.com/"


# virtual methods
.method public abstract createGithubIssue(Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;)Lrx/Observable;
    .param p1    # Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Authorization: token "
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "repos/hidroh/materialistic/issues"
    .end annotation
.end method
