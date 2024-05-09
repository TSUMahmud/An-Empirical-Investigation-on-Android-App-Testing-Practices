.class public final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "RxJavaCallAdapterFactory.java"


# instance fields
.field private final isAsync:Z

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method private constructor <init>(Lrx/Scheduler;Z)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p2, "isAsync"    # Z

    .line 90
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 91
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    .line 92
    iput-boolean p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->isAsync:Z

    .line 93
    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 3

    .line 66
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;Z)V

    return-object v0
.end method

.method public static createAsync()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 3

    .line 74
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;Z)V

    return-object v0
.end method

.method public static createWithScheduler(Lrx/Scheduler;)Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 2
    .param p0, "scheduler"    # Lrx/Scheduler;

    .line 83
    if-eqz p0, :cond_0

    .line 84
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;Z)V

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 19
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 98
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lrx/Single;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 99
    .local v3, "isSingle":Z
    :goto_0
    const-class v6, Lrx/Completable;

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 100
    .local v4, "isCompletable":Z
    :goto_1
    const-class v6, Lrx/Observable;

    if-eq v2, v6, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 101
    const/4 v5, 0x0

    return-object v5

    .line 104
    :cond_2
    if-eqz v4, :cond_3

    .line 105
    new-instance v5, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;

    const-class v7, Ljava/lang/Void;

    iget-object v8, v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    iget-boolean v9, v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->isAsync:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;ZZZZZ)V

    return-object v5

    .line 108
    :cond_3
    const/4 v6, 0x0

    .line 109
    .local v6, "isResult":Z
    const/4 v7, 0x0

    .line 111
    .local v7, "isBody":Z
    instance-of v8, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v8, :cond_5

    .line 112
    if-eqz v3, :cond_4

    const-string v5, "Single"

    goto :goto_2

    :cond_4
    const-string v5, "Observable"

    .line 113
    .local v5, "name":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " return type must be parameterized as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<Foo> or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<? extends Foo>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 117
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    move-object v8, v1

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v8}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 118
    .local v14, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v14}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v15

    .line 119
    .local v15, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lretrofit2/Response;

    if-ne v15, v8, :cond_7

    .line 120
    instance-of v8, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_6

    .line 124
    move-object v8, v14

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v8}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_3

    .line 121
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_7
    const-class v8, Lretrofit2/adapter/rxjava/Result;

    if-ne v15, v8, :cond_9

    .line 126
    instance-of v8, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_8

    .line 130
    move-object v8, v14

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v8}, Lretrofit2/CallAdapter$Factory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 131
    .local v5, "responseType":Ljava/lang/reflect/Type;
    const/4 v6, 0x1

    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_3

    .line 127
    .end local v5    # "responseType":Ljava/lang/reflect/Type;
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_9
    move-object v5, v14

    .line 134
    .restart local v5    # "responseType":Ljava/lang/reflect/Type;
    const/4 v7, 0x1

    move/from16 v16, v6

    move/from16 v17, v7

    .line 137
    .end local v6    # "isResult":Z
    .end local v7    # "isBody":Z
    .local v16, "isResult":Z
    .local v17, "isBody":Z
    :goto_3
    new-instance v18, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;

    iget-object v8, v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    iget-boolean v9, v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->isAsync:Z

    const/4 v13, 0x0

    move-object/from16 v6, v18

    move-object v7, v5

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v3

    invoke-direct/range {v6 .. v13}, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;ZZZZZ)V

    return-object v18
.end method
