.class final Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;
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
        "Landroid/database/Cursor;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;

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
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;->call(Landroid/database/Cursor;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "it"    # Landroid/database/Cursor;

    .line 115
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
