.class public final synthetic Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    iput-object p2, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$0:Lio/github/hidroh/materialistic/accounts/UserServicesClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;->f$3:Z

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->lambda$submit$7(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
