.class public final Ldagger/internal/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectIncludedModulesRecursively(Ldagger/internal/Loader;Ldagger/internal/ModuleAdapter;Ljava/util/Map;)V
    .locals 5
    .param p0, "plugin"    # Ldagger/internal/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Loader;",
            "Ldagger/internal/ModuleAdapter<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ldagger/internal/ModuleAdapter<",
            "*>;>;)V"
        }
    .end annotation

    .line 74
    .local p1, "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    .local p2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ldagger/internal/ModuleAdapter<*>;>;"
    iget-object v0, p1, Ldagger/internal/ModuleAdapter;->includes:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 75
    .local v3, "include":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    invoke-virtual {p0, v3}, Ldagger/internal/Loader;->getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v4

    .line 77
    .local v4, "includedModuleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p0, v4, p2}, Ldagger/internal/Modules;->collectIncludedModulesRecursively(Ldagger/internal/Loader;Ldagger/internal/ModuleAdapter;Ljava/util/Map;)V

    .line 74
    .end local v3    # "include":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "includedModuleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public static loadModules(Ldagger/internal/Loader;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .param p0, "loader"    # Ldagger/internal/Loader;
    .param p1, "seedModulesOrClasses"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Loader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ldagger/internal/ModuleAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 38
    .local v0, "seedAdapters":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 39
    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 40
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ldagger/internal/Loader;->getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v2

    .line 41
    .local v2, "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-virtual {v2}, Ldagger/internal/ModuleAdapter;->newModule()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v2    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    goto :goto_1

    .line 43
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ldagger/internal/Loader;->getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v2

    .line 44
    .restart local v2    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    aget-object v3, p1, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v2    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 54
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v2, "transitiveInclusions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ldagger/internal/ModuleAdapter<*>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldagger/internal/ModuleAdapter;

    .line 57
    .local v4, "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-static {p0, v4, v2}, Ldagger/internal/Modules;->collectIncludedModulesRecursively(Ldagger/internal/Loader;Ldagger/internal/ModuleAdapter;Ljava/util/Map;)V

    .line 58
    .end local v4    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    goto :goto_2

    .line 60
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldagger/internal/ModuleAdapter;

    .line 61
    .local v4, "dependency":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 62
    invoke-virtual {v4}, Ldagger/internal/ModuleAdapter;->newModule()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v4    # "dependency":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_3
    goto :goto_3

    .line 65
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    return-object v1
.end method
