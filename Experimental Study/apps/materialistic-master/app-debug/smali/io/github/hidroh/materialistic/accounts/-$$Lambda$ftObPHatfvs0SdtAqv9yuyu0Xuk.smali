.class public final synthetic Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/accounts/UserServices$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;->f$0:Lio/github/hidroh/materialistic/accounts/UserServices$Callback;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;->f$0:Lio/github/hidroh/materialistic/accounts/UserServices$Callback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
