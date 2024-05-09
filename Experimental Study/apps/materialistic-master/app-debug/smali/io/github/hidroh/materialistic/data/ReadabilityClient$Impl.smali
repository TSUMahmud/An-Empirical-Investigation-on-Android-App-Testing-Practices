.class public Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;
.super Ljava/lang/Object;
.source "ReadabilityClient.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ReadabilityClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/ReadabilityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;,
        Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;
    }
.end annotation


# static fields
.field private static final EMPTY_CONTENT:Ljava/lang/CharSequence;


# instance fields
.field private final mCache:Lio/github/hidroh/materialistic/data/LocalCache;

.field mIoScheduler:Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "io"
    .end annotation
.end field

.field mMainThreadScheduler:Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main"
    .end annotation
.end field

.field private final mMercuryService:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "<div></div>"

    sput-object v0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->EMPTY_CONTENT:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lio/github/hidroh/materialistic/data/LocalCache;Lio/github/hidroh/materialistic/data/RestServiceFactory;)V
    .locals 3
    .param p1, "cache"    # Lio/github/hidroh/materialistic/data/LocalCache;
    .param p2, "factory"    # Lio/github/hidroh/materialistic/data/RestServiceFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->rxEnabled(Z)Lio/github/hidroh/materialistic/data/RestServiceFactory;

    move-result-object v0

    const-string v1, "https://mercury.postlight.com/"

    const-class v2, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;

    .line 74
    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/data/RestServiceFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mMercuryService:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;

    .line 76
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mCache:Lio/github/hidroh/materialistic/data/LocalCache;

    .line 77
    return-void
.end method

.method private fromCache(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mCache:Lio/github/hidroh/materialistic/data/LocalCache;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/LocalCache;->getReadability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private fromNetwork(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mMercuryService:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;

    invoke-interface {v0, p2}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;->parse(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$uTSjrPU5FP1pg557WZEaUXfWA-k;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$uTSjrPU5FP1pg557WZEaUXfWA-k;

    .line 104
    invoke-virtual {v0, v1}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$6fxKPpuK8nC0y-uKju212nWvxMI;

    .line 105
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$kE0iNh3zTS-OaxxWjF3ACtEszM8;

    invoke-direct {v1, p0, p1}, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$kE0iNh3zTS-OaxxWjF3ACtEszM8;-><init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method static synthetic lambda$fromNetwork$5(Ljava/lang/Throwable;)Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$fromNetwork$6(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;)Ljava/lang/String;
    .locals 1
    .param p0, "readable"    # Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;

    .line 105
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;->content:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$fromNetwork$7(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mCache:Lio/github/hidroh/materialistic/data/LocalCache;

    invoke-interface {v0, p1, p2}, Lio/github/hidroh/materialistic/data/LocalCache;->putReadability(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$parse$0(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->fromCache(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$parse$1(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    invoke-static {p3}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->fromNetwork(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$parse$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->EMPTY_CONTENT:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lio/github/hidroh/materialistic/AndroidUtils$TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$parse$3(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->fromCache(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$parse$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 96
    sget-object v0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->EMPTY_CONTENT:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lio/github/hidroh/materialistic/AndroidUtils$TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 93
    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$I9vnIjcrKniGqmmUjs62J24Sjk4;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$I9vnIjcrKniGqmmUjs62J24Sjk4;-><init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->fromNetwork(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->switchIfEmpty(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$MRSTIQc27gtXmcc7-wtctVbdHGA;

    .line 96
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 97
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 99
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;

    .line 81
    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$xsFvob5EogA5Av35fhVdttCMxB8;-><init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mIoScheduler:Lrx/Scheduler;

    .line 82
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;

    invoke-direct {v1, p0, p1, p2}, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$483Ut-HrC0d-J_-io78JEmBJUO4;-><init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$1mLjsMPpnbF-i5fj29yXADJVqV8;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$ReadabilityClient$Impl$1mLjsMPpnbF-i5fj29yXADJVqV8;

    .line 85
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;->mMainThreadScheduler:Lrx/Scheduler;

    .line 86
    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/data/-$$Lambda$FE32MaiIi4VwudN3v2e-2S0lbTQ;

    invoke-direct {v1, p3}, Lio/github/hidroh/materialistic/data/-$$Lambda$FE32MaiIi4VwudN3v2e-2S0lbTQ;-><init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;)V

    .line 87
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 88
    return-void
.end method
