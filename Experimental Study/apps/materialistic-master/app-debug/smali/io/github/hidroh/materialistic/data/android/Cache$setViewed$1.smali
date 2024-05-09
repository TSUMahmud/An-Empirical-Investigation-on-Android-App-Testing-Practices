.class final Lio/github/hidroh/materialistic/data/android/Cache$setViewed$1;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/android/Cache;->setViewed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/android/Cache;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/android/Cache;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$1;->this$0:Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$1;->this$0:Lio/github/hidroh/materialistic/data/android/Cache;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/android/Cache;->access$getDatabase$p(Lio/github/hidroh/materialistic/data/android/Cache;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->createReadUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/android/Cache$setViewed$1;->call(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
