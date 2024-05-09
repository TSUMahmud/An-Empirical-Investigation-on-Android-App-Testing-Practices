.class public final Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 55
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildAdded(Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;)Landroid/net/Uri$Builder;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    .line 55
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->buildAdded()Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$buildCleared(Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;)Landroid/net/Uri$Builder;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    .line 55
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->buildCleared()Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$buildRemoved(Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;)Landroid/net/Uri$Builder;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    .line 55
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->buildRemoved()Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private final buildAdded()Landroid/net/Uri$Builder;
    .locals 2

    .line 71
    invoke-static {}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getBaseSavedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "add"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "MaterialisticDatabase.ge\u2026.appendPath(URI_PATH_ADD)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final buildCleared()Landroid/net/Uri$Builder;
    .locals 2

    .line 74
    invoke-static {}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getBaseSavedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "MaterialisticDatabase.ge\u2026ppendPath(URI_PATH_CLEAR)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final buildRemoved()Landroid/net/Uri$Builder;
    .locals 2

    .line 77
    invoke-static {}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase;->getBaseSavedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "MaterialisticDatabase.ge\u2026pendPath(URI_PATH_REMOVE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final isAdded(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-direct {v1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->buildAdded()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildAdded().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCleared(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-direct {v1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->buildCleared()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildCleared().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isRemoved(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    invoke-direct {v1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;->buildRemoved()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildRemoved().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
