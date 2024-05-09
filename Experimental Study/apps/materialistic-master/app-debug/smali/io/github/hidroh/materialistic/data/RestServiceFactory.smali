.class public interface abstract Lio/github/hidroh/materialistic/data/RestServiceFactory;
.super Ljava/lang/Object;
.source "RestServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/RestServiceFactory$MainThreadExecutor;,
        Lio/github/hidroh/materialistic/data/RestServiceFactory$Impl;
    }
.end annotation


# static fields
.field public static final CACHE_CONTROL_FORCE_CACHE:Ljava/lang/String; = "Cache-Control: only-if-cached, max-stale=2147483647"

.field public static final CACHE_CONTROL_FORCE_NETWORK:Ljava/lang/String; = "Cache-Control: no-cache"

.field public static final CACHE_CONTROL_MAX_AGE_24H:Ljava/lang/String; = "Cache-Control: max-age=86400"

.field public static final CACHE_CONTROL_MAX_AGE_30M:Ljava/lang/String; = "Cache-Control: max-age=1800"


# virtual methods
.method public abstract create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract create(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract rxEnabled(Z)Lio/github/hidroh/materialistic/data/RestServiceFactory;
.end method
