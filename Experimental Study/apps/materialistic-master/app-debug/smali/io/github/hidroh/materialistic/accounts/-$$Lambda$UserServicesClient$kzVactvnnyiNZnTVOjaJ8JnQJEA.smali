.class public final synthetic Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func0;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

.field private final synthetic f$1:Lokhttp3/Request;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Lokhttp3/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;->f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    iput-object p2, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;->f$1:Lokhttp3/Request;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;->f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;->f$1:Lokhttp3/Request;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->lambda$execute$10(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Lokhttp3/Request;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
