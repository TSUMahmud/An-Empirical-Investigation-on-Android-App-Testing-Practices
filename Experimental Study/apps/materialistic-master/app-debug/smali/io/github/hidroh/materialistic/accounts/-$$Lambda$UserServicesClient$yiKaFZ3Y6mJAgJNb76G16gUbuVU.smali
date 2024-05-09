.class public final synthetic Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;

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

    check-cast p1, Lokhttp3/Response;

    invoke-static {p1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->lambda$reply$2(Lokhttp3/Response;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
