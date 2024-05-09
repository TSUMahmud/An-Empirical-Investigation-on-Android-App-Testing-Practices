.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$BE73u6oNm1Khg_OsoL6G1ckP1MQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$BE73u6oNm1Khg_OsoL6G1ckP1MQ;->f$0:Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$BE73u6oNm1Khg_OsoL6G1ckP1MQ;->f$0:Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;->onSent(Z)V

    return-void
.end method
