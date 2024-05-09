.class public final Ldagger/internal/loaders/ReflectiveStaticInjection;
.super Ldagger/internal/StaticInjection;
.source "ReflectiveStaticInjection.java"


# instance fields
.field private bindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation
.end field

.field private final fields:[Ljava/lang/reflect/Field;

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "fields"    # [Ljava/lang/reflect/Field;

    .line 36
    invoke-direct {p0}, Ldagger/internal/StaticInjection;-><init>()V

    .line 37
    iput-object p2, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    .line 38
    iput-object p1, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->loader:Ljava/lang/ClassLoader;

    .line 39
    return-void
.end method

.method public static create(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation

    .line 61
    .local p0, "injectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 63
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Ljavax/inject/Inject;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    new-instance v1, Ldagger/internal/loaders/ReflectiveStaticInjection;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Field;

    invoke-direct {v1, v2, v3}, Ldagger/internal/loaders/ReflectiveStaticInjection;-><init>(Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V

    return-object v1

    .line 69
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No static injections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 5
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 42
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    array-length v0, v0

    new-array v0, v0, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->bindings:[Ldagger/internal/Binding;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 44
    aget-object v1, v1, v0

    .line 45
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->bindings:[Ldagger/internal/Binding;

    iget-object v4, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2, v1, v4}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v4

    aput-object v4, v3, v0

    .line 43
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public inject()V
    .locals 4

    .line 52
    const/4 v0, 0x0

    .local v0, "f":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->fields:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveStaticInjection;->bindings:[Ldagger/internal/Binding;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "f":I
    :cond_0
    nop

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    return-void
.end method
