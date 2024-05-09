.class public final Lrx/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 110
    .local v0, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    const/4 v1, 0x0

    .line 111
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 112
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/16 v3, 0x19

    if-lt v1, v3, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    move v1, v2

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_2

    .line 126
    :catch_0
    move-exception v2

    .line 131
    :goto_2
    return-void
.end method

.method public static getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stack too deep to get final cause"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public static throwIfAny(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p0, "exceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 163
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 166
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 168
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 169
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 174
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Lrx/exceptions/CompositeException;

    invoke-direct {v0, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    throw v0

    .line 176
    :cond_3
    return-void
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 81
    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-nez v0, :cond_5

    .line 83
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-nez v0, :cond_4

    .line 85
    instance-of v0, p0, Lrx/exceptions/OnCompletedFailedException;

    if-nez v0, :cond_3

    .line 89
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    .line 91
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 93
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/LinkageError;

    throw v0

    .line 92
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 90
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0

    .line 86
    :cond_3
    move-object v0, p0

    check-cast v0, Lrx/exceptions/OnCompletedFailedException;

    throw v0

    .line 84
    :cond_4
    move-object v0, p0

    check-cast v0, Lrx/exceptions/OnErrorFailedException;

    throw v0

    .line 82
    :cond_5
    move-object v0, p0

    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer<",
            "*>;)V"
        }
    .end annotation

    .line 211
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 212
    invoke-interface {p1, p0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 187
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 188
    invoke-static {p0, p2}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method
