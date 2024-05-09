.class public final Lrx/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func3<",
            "-TT0;-TT1;-TT2;+TR;>;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 106
    .local p0, "f":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT0;-TT1;-TT2;+TR;>;"
    new-instance v0, Lrx/functions/Functions$4;

    invoke-direct {v0, p0}, Lrx/functions/Functions$4;-><init>(Lrx/functions/Func3;)V

    return-object v0
.end method
