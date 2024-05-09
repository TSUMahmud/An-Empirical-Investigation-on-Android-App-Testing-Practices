.class public final synthetic Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$xsN-imMNfEOkOuiEKozKZ7pkcL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$xsN-imMNfEOkOuiEKozKZ7pkcL4;->f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$xsN-imMNfEOkOuiEKozKZ7pkcL4;->f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->lambda$submit$5(Lio/github/hidroh/materialistic/accounts/UserServicesClient;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
