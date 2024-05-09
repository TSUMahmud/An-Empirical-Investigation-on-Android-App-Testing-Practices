.class public final Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FavoriteRoomLoader"
.end annotation


# instance fields
.field private final filter:Ljava/lang/String;

.field private final observer:Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;

.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;


# direct methods
.method public constructor <init>(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;)V
    .locals 1
    .param p1, "$outer"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "observer"    # Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;",
            ")V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->filter:Ljava/lang/String;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->observer:Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;

    return-void
.end method

.method public static final synthetic access$getFilter$p(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    .line 302
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getObserver$p(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    .line 302
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->observer:Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;

    return-object v0
.end method


# virtual methods
.method public final load()V
    .locals 2

    .line 306
    nop

    .line 310
    nop

    .line 306
    nop

    .line 309
    nop

    .line 306
    nop

    .line 308
    nop

    .line 306
    nop

    .line 307
    nop

    .line 306
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$1;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$1;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)V

    check-cast v0, Lrx/functions/Func0;

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 307
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$2;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->this$0:Lio/github/hidroh/materialistic/data/FavoriteManager;

    invoke-static {v1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->access$getIoScheduler$p(Lio/github/hidroh/materialistic/data/FavoriteManager;)Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 309
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 310
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader$load$3;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 314
    return-void
.end method
