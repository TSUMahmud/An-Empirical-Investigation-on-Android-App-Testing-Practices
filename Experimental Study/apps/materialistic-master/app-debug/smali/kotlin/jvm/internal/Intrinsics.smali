.class public Lkotlin/jvm/internal/Intrinsics;
.super Ljava/lang/Object;
.source "Intrinsics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "expression"    # Ljava/lang/String;

    .line 77
    if-eqz p0, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0
.end method

.method public static checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "paramName"    # Ljava/lang/String;

    .line 115
    if-eqz p0, :cond_0

    .line 118
    return-void

    .line 116
    .end local p0    # "value":Ljava/lang/Object;
    .end local p1    # "paramName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwParameterIsNullException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 237
    .local p0, "throwable":Ljava/lang/Throwable;, "TT;"
    const-class v0, Lkotlin/jvm/internal/Intrinsics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    return-object p0
.end method

.method static sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 5
    .param p1, "classNameToDrop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 241
    .local p0, "throwable":Ljava/lang/Throwable;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 242
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    .line 244
    .local v1, "size":I
    const/4 v2, -0x1

    .line 245
    .local v2, "lastIntrinsic":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 246
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    move v2, v3

    .line 245
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/StackTraceElement;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 253
    return-object p0
.end method

.method public static throwNpe()V
    .locals 1

    .line 37
    new-instance v0, Lkotlin/KotlinNullPointerException;

    invoke-direct {v0}, Lkotlin/KotlinNullPointerException;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast v0, Lkotlin/KotlinNullPointerException;

    throw v0
.end method

.method private static throwParameterIsNullException(Ljava/lang/String;)V
    .locals 7
    .param p0, "paramName"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 133
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 134
    .local v1, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "methodName":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter specified as non-null is null: method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .local v4, "exception":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v5, v4

    check-cast v5, Ljava/lang/IllegalArgumentException;

    throw v5
.end method
