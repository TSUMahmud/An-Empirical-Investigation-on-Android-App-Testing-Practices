.class public abstract Ldagger/internal/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field private final caches:Ldagger/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Memoizer<",
            "Ljava/lang/ClassLoader;",
            "Ldagger/internal/Memoizer<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ldagger/internal/Loader$1;

    invoke-direct {v0, p0}, Ldagger/internal/Loader$1;-><init>(Ldagger/internal/Loader;)V

    iput-object v0, p0, Ldagger/internal/Loader;->caches:Ldagger/internal/Memoizer;

    return-void
.end method


# virtual methods
.method public abstract getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ldagger/internal/ModuleAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation
.end method

.method protected instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p0, p2, p1}, Ldagger/internal/Loader;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "generatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Void;

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 88
    .end local v0    # "generatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 70
    iget-object v0, p0, Ldagger/internal/Loader;->caches:Ldagger/internal/Memoizer;

    invoke-virtual {v0, p1}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Memoizer;

    invoke-virtual {v0, p2}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
