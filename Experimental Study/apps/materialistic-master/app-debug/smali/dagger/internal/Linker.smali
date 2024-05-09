.class public final Ldagger/internal/Linker;
.super Ljava/lang/Object;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/Linker$DeferredBinding;,
        Ldagger/internal/Linker$ErrorHandler;,
        Ldagger/internal/Linker$SingletonBinding;
    }
.end annotation


# static fields
.field static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private attachSuccess:Z

.field private final base:Ldagger/internal/Linker;

.field private final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final errorHandler:Ldagger/internal/Linker$ErrorHandler;

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile linkedBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final plugin:Ldagger/internal/Loader;

.field private final toLink:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ldagger/internal/Binding<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldagger/internal/Linker;Ldagger/internal/Loader;Ldagger/internal/Linker$ErrorHandler;)V
    .locals 2
    .param p1, "base"    # Ldagger/internal/Linker;
    .param p2, "plugin"    # Ldagger/internal/Loader;
    .param p3, "errorHandler"    # Ldagger/internal/Linker$ErrorHandler;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ldagger/internal/ArrayQueue;

    invoke-direct {v0}, Ldagger/internal/ArrayQueue;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldagger/internal/Linker;->attachSuccess:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    .line 65
    if-eqz p2, :cond_1

    .line 66
    if-eqz p3, :cond_0

    .line 68
    iput-object p1, p0, Ldagger/internal/Linker;->base:Ldagger/internal/Linker;

    .line 69
    iput-object p2, p0, Ldagger/internal/Linker;->plugin:Ldagger/internal/Loader;

    .line 70
    iput-object p3, p0, Ldagger/internal/Linker;->errorHandler:Ldagger/internal/Linker$ErrorHandler;

    .line 71
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method private assertLockHeld()V
    .locals 1

    .line 194
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private createBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mustHaveInjections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Ldagger/internal/Keys;->getBuiltInBindingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "builtInBindingsKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Ldagger/internal/BuiltInBinding;

    invoke-direct {v1, p1, p2, p3, v0}, Ldagger/internal/BuiltInBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-object v1

    .line 214
    :cond_0
    invoke-static {p1}, Ldagger/internal/Keys;->getLazyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "lazyKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 216
    new-instance v2, Ldagger/internal/LazyBinding;

    invoke-direct {v2, p1, p2, p3, v1}, Ldagger/internal/LazyBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-object v2

    .line 219
    :cond_1
    invoke-static {p1}, Ldagger/internal/Keys;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "className":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 225
    invoke-static {p1}, Ldagger/internal/Keys;->isAnnotated(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 229
    iget-object v3, p0, Ldagger/internal/Linker;->plugin:Ldagger/internal/Loader;

    invoke-virtual {v3, p1, v2, p3, p4}, Ldagger/internal/Loader;->getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;

    move-result-object v3

    .line 231
    .local v3, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v3, :cond_2

    .line 232
    return-object v3

    .line 234
    :cond_2
    new-instance v4, Ldagger/internal/Binding$InvalidBindingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not be bound with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 226
    .end local v3    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_3
    new-instance v3, Ldagger/internal/Binding$InvalidBindingException;

    const-string v4, "is a @Qualifier-annotated type and must be bound by a @Provides method."

    invoke-direct {v3, p1, v4}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_4
    new-instance v3, Ldagger/internal/Binding$InvalidBindingException;

    const-string v4, "is a generic class or an array and can only be bound with concrete type parameter(s) in a @Provides method."

    invoke-direct {v3, p1, v4}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method private putBinding(Ldagger/internal/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Binding<",
            "TT;>;)V"
        }
    .end annotation

    .line 310
    .local p1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    iget-object v0, p1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-direct {p0, v1, v0, p1}, Ldagger/internal/Linker;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    :cond_0
    iget-object v0, p1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-direct {p0, v1, v0, p1}, Ldagger/internal/Linker;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    :cond_1
    return-void
.end method

.method private putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 333
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    .local v0, "replaced":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    return-void
.end method

.method static scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Binding<",
            "TT;>;)",
            "Ldagger/internal/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 322
    .local p0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/Binding;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Ldagger/internal/Linker$SingletonBinding;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    new-instance v0, Ldagger/internal/Linker$SingletonBinding;

    invoke-direct {v0, p0}, Ldagger/internal/Linker$SingletonBinding;-><init>(Ldagger/internal/Binding;)V

    return-object v0

    .line 323
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public fullyLinkedBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0
.end method

.method public installBindings(Ldagger/internal/BindingsGroup;)V
    .locals 5
    .param p1, "toInstall"    # Ldagger/internal/BindingsGroup;

    .line 82
    iget-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p1}, Ldagger/internal/BindingsGroup;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ldagger/internal/Binding<*>;>;"
    iget-object v2, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldagger/internal/Binding;

    invoke-static {v4}, Ldagger/internal/Linker;->scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ldagger/internal/Binding<*>;>;"
    goto :goto_0

    .line 88
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot install further bindings after calling linkAll()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public linkAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ldagger/internal/Linker;->assertLockHeld()V

    .line 101
    iget-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/internal/Binding;

    .line 105
    .local v1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v1}, Ldagger/internal/Binding;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v1    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_1
    goto :goto_0

    .line 109
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Ldagger/internal/Linker;->linkRequested()V

    .line 110
    iget-object v0, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    .line 111
    iget-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0
.end method

.method public linkRequested()V
    .locals 8

    .line 130
    invoke-direct {p0}, Ldagger/internal/Linker;->assertLockHeld()V

    .line 132
    :goto_0
    iget-object v0, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    move-object v1, v0

    .local v1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v0, :cond_5

    .line 133
    instance-of v0, v1, Ldagger/internal/Linker$DeferredBinding;

    if-eqz v0, :cond_3

    .line 134
    move-object v0, v1

    check-cast v0, Ldagger/internal/Linker$DeferredBinding;

    .line 135
    .local v0, "deferred":Ldagger/internal/Linker$DeferredBinding;
    iget-object v2, v0, Ldagger/internal/Linker$DeferredBinding;->deferredKey:Ljava/lang/String;

    .line 136
    .local v2, "key":Ljava/lang/String;
    iget-boolean v3, v0, Ldagger/internal/Linker$DeferredBinding;->mustHaveInjections:Z

    .line 137
    .local v3, "mustHaveInjections":Z
    iget-object v4, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    goto :goto_0

    .line 141
    :cond_0
    :try_start_0
    iget-object v4, v1, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    iget-object v5, v0, Ldagger/internal/Linker$DeferredBinding;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v2, v4, v5, v3}, Ldagger/internal/Linker;->createBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;

    move-result-object v4

    .line 143
    .local v4, "resolvedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v1}, Ldagger/internal/Binding;->library()Z

    move-result v5

    invoke-virtual {v4, v5}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 144
    invoke-virtual {v1}, Ldagger/internal/Binding;->dependedOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ldagger/internal/Binding;->setDependedOn(Z)V

    .line 146
    iget-object v5, v4, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create binding for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "deferred":Ldagger/internal/Linker$DeferredBinding;
    .end local v1    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "mustHaveInjections":Z
    throw v5

    .line 150
    .restart local v0    # "deferred":Ldagger/internal/Linker$DeferredBinding;
    .restart local v1    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "mustHaveInjections":Z
    :cond_2
    :goto_1
    invoke-static {v4}, Ldagger/internal/Linker;->scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v5

    .line 151
    .local v5, "scopedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    iget-object v6, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v5}, Ldagger/internal/Linker;->putBinding(Ldagger/internal/Binding;)V
    :try_end_0
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "resolvedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v5    # "scopedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    goto/16 :goto_2

    .line 164
    :catch_0
    move-exception v4

    .line 165
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 162
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 163
    .local v4, "e":Ljava/lang/RuntimeException;
    throw v4

    .line 159
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v4

    .line 160
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " required by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldagger/internal/Linker;->addError(Ljava/lang/String;)V

    .line 161
    iget-object v5, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v6, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 156
    :catch_3
    move-exception v4

    .line 157
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " required by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldagger/internal/Linker;->addError(Ljava/lang/String;)V

    .line 158
    iget-object v5, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v6, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_2

    .line 153
    :catch_4
    move-exception v4

    .line 154
    .local v4, "e":Ldagger/internal/Binding$InvalidBindingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Ldagger/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " required by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldagger/internal/Linker;->addError(Ljava/lang/String;)V

    .line 155
    iget-object v5, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v6, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v4    # "e":Ldagger/internal/Binding$InvalidBindingException;
    :goto_2
    nop

    .line 167
    .end local v0    # "deferred":Ldagger/internal/Linker$DeferredBinding;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "mustHaveInjections":Z
    goto/16 :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldagger/internal/Linker;->attachSuccess:Z

    .line 172
    invoke-virtual {v1, p0}, Ldagger/internal/Binding;->attach(Ldagger/internal/Linker;)V

    .line 173
    iget-boolean v0, p0, Ldagger/internal/Linker;->attachSuccess:Z

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {v1}, Ldagger/internal/Binding;->setLinked()V

    goto/16 :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_5
    :try_start_1
    iget-object v0, p0, Ldagger/internal/Linker;->errorHandler:Ldagger/internal/Linker$ErrorHandler;

    iget-object v2, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0, v2}, Ldagger/internal/Linker$ErrorHandler;->handleErrors(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    iget-object v0, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v0

    iget-object v2, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v0

    return-void
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 250
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mustHaveInjections"    # Z
    .param p5, "library"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "ZZ)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Ldagger/internal/Linker;->assertLockHeld()V

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    move-object v1, p0

    .local v1, "linker":Ldagger/internal/Linker;
    :goto_0
    if-eqz v1, :cond_2

    .line 278
    iget-object v2, v1, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ldagger/internal/Binding;

    .line 279
    if-eqz v0, :cond_1

    .line 280
    if-eq v1, p0, :cond_2

    invoke-virtual {v0}, Ldagger/internal/Binding;->isLinked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 277
    :cond_1
    iget-object v1, v1, Ldagger/internal/Linker;->base:Ldagger/internal/Linker;

    goto :goto_0

    .line 285
    .end local v1    # "linker":Ldagger/internal/Linker;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 287
    new-instance v2, Ldagger/internal/Linker$DeferredBinding;

    invoke-direct {v2, p1, p3, p2, p4}, Ldagger/internal/Linker$DeferredBinding;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)V

    .line 289
    .local v2, "deferredBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v2, p5}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 290
    invoke-virtual {v2, v1}, Ldagger/internal/Binding;->setDependedOn(Z)V

    .line 291
    iget-object v1, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldagger/internal/Linker;->attachSuccess:Z

    .line 293
    const/4 v1, 0x0

    return-object v1

    .line 296
    .end local v2    # "deferredBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_3
    invoke-virtual {v0}, Ldagger/internal/Binding;->isLinked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    iget-object v2, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_4
    invoke-virtual {v0, p5}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 301
    invoke-virtual {v0, v1}, Ldagger/internal/Binding;->setDependedOn(Z)V

    .line 302
    return-object v0
.end method
