.class Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;
.super Ljava/lang/Object;
.source "FeedbackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FeedbackClient$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Issue"
.end annotation


# static fields
.field private static final LABEL_FEEDBACK:Ljava/lang/String; = "feedback"


# instance fields
.field final body:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field final labels:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field final title:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;->title:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;->body:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "feedback"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FeedbackClient$Impl$Issue;->labels:[Ljava/lang/String;

    .line 91
    return-void
.end method
