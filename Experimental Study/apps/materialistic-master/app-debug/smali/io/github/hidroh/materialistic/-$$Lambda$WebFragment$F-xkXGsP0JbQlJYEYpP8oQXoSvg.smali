.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$F-xkXGsP0JbQlJYEYpP8oQXoSvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/WebFragment;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$F-xkXGsP0JbQlJYEYpP8oQXoSvg;->f$0:Lio/github/hidroh/materialistic/WebFragment;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$F-xkXGsP0JbQlJYEYpP8oQXoSvg;->f$0:Lio/github/hidroh/materialistic/WebFragment;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lio/github/hidroh/materialistic/WebFragment;->lambda$setUpWebView$11(Lio/github/hidroh/materialistic/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
