.class public interface abstract Lio/github/hidroh/materialistic/data/ReadabilityClient;
.super Ljava/lang/Object;
.source "ReadabilityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;,
        Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;
    }
.end annotation


# static fields
.field public static final HOST:Ljava/lang/String; = "mercury.postlight.com"


# virtual methods
.method public abstract parse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract parse(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;)V
.end method
