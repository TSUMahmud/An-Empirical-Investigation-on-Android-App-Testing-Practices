.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func3;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;->INSTANCE:Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$JgyqPVGo3Wr6EqAOrNhGfEl-hTU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    invoke-static {p1, p2, p3}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->lambda$null$2(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/hidroh/materialistic/data/HackerNewsItem;)Lio/github/hidroh/materialistic/data/HackerNewsItem;

    return-object p3
.end method
