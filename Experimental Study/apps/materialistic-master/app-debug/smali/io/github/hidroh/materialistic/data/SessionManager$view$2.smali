.class final Lio/github/hidroh/materialistic/data/SessionManager$view$2;
.super Ljava/lang/Object;
.source "SessionManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/SessionManager;->view(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/SessionManager;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SessionManager$view$2;->this$0:Lio/github/hidroh/materialistic/data/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/SessionManager$view$2;->call(Ljava/lang/String;)V

    return-void
.end method

.method public final call(Ljava/lang/String;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SessionManager$view$2;->this$0:Lio/github/hidroh/materialistic/data/SessionManager;

    invoke-static {v0}, Lio/github/hidroh/materialistic/data/SessionManager;->access$getCache$p(Lio/github/hidroh/materialistic/data/SessionManager;)Lio/github/hidroh/materialistic/data/LocalCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/LocalCache;->setViewed(Ljava/lang/String;)V

    return-void
.end method
