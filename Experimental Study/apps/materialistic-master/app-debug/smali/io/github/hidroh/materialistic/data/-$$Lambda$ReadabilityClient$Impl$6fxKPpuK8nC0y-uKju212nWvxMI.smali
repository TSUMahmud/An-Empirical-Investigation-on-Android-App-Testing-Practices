.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;

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

    check-cast p1, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;

    invoke-static {p1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->lambda$fromNetwork$6(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
