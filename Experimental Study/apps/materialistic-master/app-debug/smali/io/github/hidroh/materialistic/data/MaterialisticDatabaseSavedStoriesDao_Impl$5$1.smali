.class Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "MaterialisticDatabaseSavedStoriesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;->compute()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;


# direct methods
.method varargs constructor <init>(Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # [Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5$1;->this$1:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;

    invoke-direct {p0, p2, p3}, Landroidx/room/InvalidationTracker$Observer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5$1;->this$1:Lio/github/hidroh/materialistic/data/MaterialisticDatabaseSavedStoriesDao_Impl$5;

    invoke-virtual {v0}, Landroidx/lifecycle/ComputableLiveData;->invalidate()V

    .line 167
    return-void
.end method
