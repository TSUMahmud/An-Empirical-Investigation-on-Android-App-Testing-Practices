.class public Lio/github/hidroh/materialistic/accounts/UserServices$Exception;
.super Ljava/io/IOException;
.source "UserServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/accounts/UserServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exception"
.end annotation


# instance fields
.field public data:Landroid/net/Uri;

.field public final message:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "message"    # I

    .line 35
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 36
    iput p1, p0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;->message:I

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;->message:I

    .line 42
    return-void
.end method
