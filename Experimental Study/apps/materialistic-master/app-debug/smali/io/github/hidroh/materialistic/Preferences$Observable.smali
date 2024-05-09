.class public Lio/github/hidroh/materialistic/Preferences$Observable;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Observable"
.end annotation


# static fields
.field private static CONTEXT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mObserver:Lio/github/hidroh/materialistic/Preferences$Observer;

.field private final mSubscribedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mSubscribedKeys:Ljava/util/Map;

    .line 526
    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$Preferences$Observable$QVz9prPs0aP6kUC0BWf4DVQE5ak;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/-$$Lambda$Preferences$Observable$QVz9prPs0aP6kUC0BWf4DVQE5ak;-><init>(Lio/github/hidroh/materialistic/Preferences$Observable;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private ensureContextKeys(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 561
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 562
    return-void

    .line 564
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    .line 565
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    const v1, 0x7f100123

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    const v1, 0x7f100121

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    const v1, 0x7f1000d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    const v1, 0x7f1000ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public static synthetic lambda$new$0(Lio/github/hidroh/materialistic/Preferences$Observable;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mSubscribedKeys:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mSubscribedKeys:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$Observable;->CONTEXT_KEYS:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences$Observable;->notifyChanged(IZ)V

    .line 530
    :cond_0
    return-void
.end method

.method private notifyChanged(IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 554
    iget-object v0, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mObserver:Lio/github/hidroh/materialistic/Preferences$Observer;

    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0, p1, p2}, Lio/github/hidroh/materialistic/Preferences$Observer;->onPreferenceChanged(IZ)V

    .line 557
    :cond_0
    return-void
.end method

.method private setSubscription(Landroid/content/Context;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKeys"    # [I

    .line 547
    iget-object v0, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mSubscribedKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 548
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 549
    .local v2, "key":I
    iget-object v3, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mSubscribedKeys:Ljava/util/Map;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v2    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lio/github/hidroh/materialistic/Preferences$Observer;
    .param p3, "preferenceKeys"    # [I

    .line 534
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/Preferences$Observable;->ensureContextKeys(Landroid/content/Context;)V

    .line 535
    invoke-direct {p0, p1, p3}, Lio/github/hidroh/materialistic/Preferences$Observable;->setSubscription(Landroid/content/Context;[I)V

    .line 536
    iput-object p2, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mObserver:Lio/github/hidroh/materialistic/Preferences$Observer;

    .line 537
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 538
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 539
    return-void
.end method

.method public unsubscribe(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 542
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/Preferences$Observable;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 543
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 544
    return-void
.end method
