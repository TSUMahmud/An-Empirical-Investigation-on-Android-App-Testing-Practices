.class public Lio/github/hidroh/materialistic/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static sInstance:Lio/github/hidroh/materialistic/FontCache;


# instance fields
.field private final mTypefaceMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/FontCache;->mTypefaceMap:Landroidx/collection/ArrayMap;

    .line 36
    return-void
.end method

.method public static getInstance()Lio/github/hidroh/materialistic/FontCache;
    .locals 1

    .line 30
    sget-object v0, Lio/github/hidroh/materialistic/FontCache;->sInstance:Lio/github/hidroh/materialistic/FontCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lio/github/hidroh/materialistic/FontCache;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/FontCache;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/FontCache;->sInstance:Lio/github/hidroh/materialistic/FontCache;

    .line 33
    :cond_0
    sget-object v0, Lio/github/hidroh/materialistic/FontCache;->sInstance:Lio/github/hidroh/materialistic/FontCache;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typefaceName"    # Ljava/lang/String;

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/FontCache;->mTypefaceMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lio/github/hidroh/materialistic/FontCache;->mTypefaceMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/FontCache;->mTypefaceMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method
