.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->lambda$parse$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
