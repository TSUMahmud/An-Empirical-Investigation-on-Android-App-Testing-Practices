.class final Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->add(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V
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


# static fields
.field public static final INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lio/github/hidroh/materialistic/data/WebItem;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;->call(Lio/github/hidroh/materialistic/data/WebItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lio/github/hidroh/materialistic/data/WebItem;)Ljava/lang/String;
    .locals 1
    .param p1, "it"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 140
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
