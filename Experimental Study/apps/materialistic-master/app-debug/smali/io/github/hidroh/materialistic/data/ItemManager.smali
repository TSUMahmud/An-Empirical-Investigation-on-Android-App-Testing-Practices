.class public interface abstract Lio/github/hidroh/materialistic/data/ItemManager;
.super Ljava/lang/Object;
.source "ItemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/ItemManager$CacheMode;,
        Lio/github/hidroh/materialistic/data/ItemManager$FetchMode;
    }
.end annotation


# static fields
.field public static final ASK_FETCH_MODE:Ljava/lang/String; = "ask"

.field public static final BEST_FETCH_MODE:Ljava/lang/String; = "best"

.field public static final JOBS_FETCH_MODE:Ljava/lang/String; = "jobs"

.field public static final MODE_CACHE:I = 0x1

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_NETWORK:I = 0x2

.field public static final NEW_FETCH_MODE:Ljava/lang/String; = "new"

.field public static final SHOW_FETCH_MODE:Ljava/lang/String; = "show"

.field public static final TOP_FETCH_MODE:Ljava/lang/String; = "top"


# virtual methods
.method public abstract getItem(Ljava/lang/String;I)Lio/github/hidroh/materialistic/data/Item;
.end method

.method public abstract getItem(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/github/hidroh/materialistic/data/ResponseListener<",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStories(Ljava/lang/String;ILio/github/hidroh/materialistic/data/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/github/hidroh/materialistic/data/ResponseListener<",
            "[",
            "Lio/github/hidroh/materialistic/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStories(Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;
.end method
