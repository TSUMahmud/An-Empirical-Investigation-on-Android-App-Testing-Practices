.class public final Lretrofit2/adapter/rxjava/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lretrofit2/adapter/rxjava/Result;->response:Lretrofit2/Response;

    .line 41
    iput-object p2, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    .line 42
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lretrofit2/adapter/rxjava/Result;
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lretrofit2/adapter/rxjava/Result<",
            "TT;>;"
        }
    .end annotation

    .line 26
    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Lretrofit2/adapter/rxjava/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lretrofit2/adapter/rxjava/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "error == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static response(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lretrofit2/adapter/rxjava/Result<",
            "TT;>;"
        }
    .end annotation

    .line 32
    .local p0, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    if-eqz p0, :cond_0

    .line 33
    new-instance v0, Lretrofit2/adapter/rxjava/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/adapter/rxjava/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "response == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 61
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 66
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public response()Lretrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->response:Lretrofit2/Response;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    .local p0, "this":Lretrofit2/adapter/rxjava/Result;, "Lretrofit2/adapter/rxjava/Result<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{isError=true, error=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lretrofit2/adapter/rxjava/Result;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{isError=false, response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lretrofit2/adapter/rxjava/Result;->response:Lretrofit2/Response;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
