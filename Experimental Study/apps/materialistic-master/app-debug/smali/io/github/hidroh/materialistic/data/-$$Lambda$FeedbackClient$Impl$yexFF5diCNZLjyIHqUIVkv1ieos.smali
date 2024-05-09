.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$yexFF5diCNZLjyIHqUIVkv1ieos;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;->lambda$send$1(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
