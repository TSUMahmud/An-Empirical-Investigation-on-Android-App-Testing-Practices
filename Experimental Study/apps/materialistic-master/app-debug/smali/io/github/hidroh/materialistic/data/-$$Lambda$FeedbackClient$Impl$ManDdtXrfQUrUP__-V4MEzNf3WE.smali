.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$FeedbackClient$Impl$ManDdtXrfQUrUP__-V4MEzNf3WE;

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

    invoke-static {p1}, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;->lambda$send$0(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
