.class public final Lrx/exceptions/OnErrorThrowable;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/OnErrorThrowable$OnNextValue;
    }
.end annotation


# direct methods
.method public static addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "value"    # Ljava/lang/Object;

    .line 107
    if-nez p0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    move-object p0, v0

    .line 110
    :cond_0
    invoke-static {p0}, Lrx/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 111
    .local v0, "lastCause":Ljava/lang/Throwable;
    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_1

    .line 113
    move-object v1, v0

    check-cast v1, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    invoke-virtual {v1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 115
    return-object p0

    .line 118
    :cond_1
    new-instance v1, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    invoke-direct {v1, p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lrx/exceptions/Exceptions;->addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 119
    return-object p0
.end method
