.class final Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;->export(Landroid/content/Context;Ljava/lang/String;)V
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
        "Ljava/lang/Throwable;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;

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
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;->call(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1
    .param p1, "it"    # Ljava/lang/Throwable;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method
