.class public final Lrx/internal/operators/NotificationLite;
.super Ljava/lang/Object;
.source "NotificationLite.java"


# static fields
.field private static final ON_COMPLETED_SENTINEL:Ljava/lang/Object;

.field private static final ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lrx/internal/operators/NotificationLite$1;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite$1;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    .line 45
    new-instance v0, Lrx/internal/operators/NotificationLite$2;

    invoke-direct {v0}, Lrx/internal/operators/NotificationLite$2;-><init>()V

    sput-object v0, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static completed()Ljava/lang/Object;
    .locals 1

    .line 92
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    return-object v0
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 194
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static isCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/Object;

    .line 150
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_COMPLETED_SENTINEL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static next(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 78
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 79
    sget-object v0, Lrx/internal/operators/NotificationLite;->ON_NEXT_NULL_SENTINEL:Ljava/lang/Object;

    return-object v0

    .line 81
    :cond_0
    return-object p0
.end method
