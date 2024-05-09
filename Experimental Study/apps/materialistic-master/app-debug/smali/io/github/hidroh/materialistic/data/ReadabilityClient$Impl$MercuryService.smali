.class interface abstract Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$MercuryService;
.super Ljava/lang/Object;
.source "ReadabilityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MercuryService"
.end annotation


# static fields
.field public static final MERCURY_API_URL:Ljava/lang/String; = "https://mercury.postlight.com/"

.field public static final X_API_KEY:Ljava/lang/String; = "x-api-key: "


# virtual methods
.method public abstract parse(Ljava/lang/String;)Lrx/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "url"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "parser"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: max-age=86400",
            "x-api-key: "
        }
    .end annotation
.end method
