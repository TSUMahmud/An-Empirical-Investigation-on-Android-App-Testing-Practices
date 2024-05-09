.class Ldagger/ObjectGraph$DaggerObjectGraph;
.super Ldagger/ObjectGraph;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/ObjectGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DaggerObjectGraph"
.end annotation


# instance fields
.field private final base:Ldagger/ObjectGraph$DaggerObjectGraph;

.field private final injectableTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final linker:Ldagger/internal/Linker;

.field private final plugin:Ldagger/internal/Loader;

.field private final setBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldagger/internal/SetBinding<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final staticInjections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ldagger/internal/StaticInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Linker;Ldagger/internal/Loader;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .param p1, "base"    # Ldagger/ObjectGraph$DaggerObjectGraph;
    .param p2, "linker"    # Ldagger/internal/Linker;
    .param p3, "plugin"    # Ldagger/internal/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/ObjectGraph$DaggerObjectGraph;",
            "Ldagger/internal/Linker;",
            "Ldagger/internal/Loader;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ldagger/internal/StaticInjection;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ldagger/internal/SetBinding<",
            "*>;>;)V"
        }
    .end annotation

    .line 151
    .local p4, "staticInjections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ldagger/internal/StaticInjection;>;"
    .local p5, "injectableTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .local p6, "setBindings":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/SetBinding<*>;>;"
    invoke-direct {p0}, Ldagger/ObjectGraph;-><init>()V

    .line 153
    iput-object p1, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->base:Ldagger/ObjectGraph$DaggerObjectGraph;

    .line 154
    const-string v0, "linker"

    invoke-static {p2, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ldagger/internal/Linker;

    iput-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    .line 155
    const-string v0, "plugin"

    invoke-static {p3, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ldagger/internal/Loader;

    iput-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->plugin:Ldagger/internal/Loader;

    .line 156
    const-string v0, "staticInjections"

    invoke-static {p4, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->staticInjections:Ljava/util/Map;

    .line 157
    const-string v0, "injectableTypes"

    invoke-static {p5, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->injectableTypes:Ljava/util/Map;

    .line 158
    const-string v0, "setBindings"

    invoke-static {p6, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->setBindings:Ljava/util/List;

    .line 159
    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 162
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 163
    return-object p0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInjectableTypeBinding(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ldagger/internal/Binding;
    .locals 9
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "injectableKey"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .local v1, "graph":Ldagger/ObjectGraph$DaggerObjectGraph;
    :goto_0
    if-eqz v1, :cond_1

    .line 298
    iget-object v2, v1, Ldagger/ObjectGraph$DaggerObjectGraph;->injectableTypes:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    .line 299
    if-eqz v0, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    iget-object v1, v1, Ldagger/ObjectGraph$DaggerObjectGraph;->base:Ldagger/ObjectGraph$DaggerObjectGraph;

    goto :goto_0

    .line 301
    .end local v1    # "graph":Ldagger/ObjectGraph$DaggerObjectGraph;
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 306
    iget-object v1, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v2, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p3

    move-object v4, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v2

    move-object v8, v2

    .line 308
    .local v8, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ldagger/internal/Binding;->isLinked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 309
    :cond_2
    iget-object v2, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-virtual {v2}, Ldagger/internal/Linker;->linkRequested()V

    .line 310
    iget-object v2, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p3

    move-object v4, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v2

    move-object v8, v2

    .line 312
    :cond_3
    monitor-exit v1

    return-object v8

    .line 313
    .end local v8    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 302
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No inject registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". You must explicitly add it to the \'injects\' option in one of your modules."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private linkEverything()Ljava/util/Map;
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

    .line 234
    iget-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-virtual {v0}, Ldagger/internal/Linker;->fullyLinkedBindings()Ljava/util/Map;

    move-result-object v0

    .line 235
    .local v0, "bindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    if-eqz v0, :cond_0

    .line 236
    return-object v0

    .line 238
    :cond_0
    iget-object v1, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v2, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-virtual {v2}, Ldagger/internal/Linker;->fullyLinkedBindings()Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    .line 240
    monitor-exit v1

    return-object v0

    .line 242
    :cond_1
    invoke-direct {p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->linkStaticInjections()V

    .line 243
    invoke-direct {p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->linkInjectableTypes()V

    .line 244
    iget-object v2, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-virtual {v2}, Ldagger/internal/Linker;->linkAll()Ljava/util/Map;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private linkInjectableTypes()V
    .locals 8

    .line 219
    iget-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->injectableTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 220
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v2, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    .line 222
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    goto :goto_0

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private linkStaticInjections()V
    .locals 5

    .line 208
    iget-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->staticInjections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ldagger/internal/StaticInjection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/internal/StaticInjection;

    .line 210
    .local v2, "staticInjection":Ldagger/internal/StaticInjection;
    if-nez v2, :cond_0

    .line 211
    iget-object v3, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->plugin:Ldagger/internal/Loader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ldagger/internal/Loader;->getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;

    move-result-object v2

    .line 212
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    iget-object v3, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-virtual {v2, v3}, Ldagger/internal/StaticInjection;->attach(Ldagger/internal/Linker;)V

    .line 215
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ldagger/internal/StaticInjection;>;"
    .end local v2    # "staticInjection":Ldagger/internal/StaticInjection;
    goto :goto_0

    .line 216
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method static varargs makeGraph(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Loader;[Ljava/lang/Object;)Ldagger/ObjectGraph;
    .locals 16
    .param p0, "base"    # Ldagger/ObjectGraph$DaggerObjectGraph;
    .param p1, "plugin"    # Ldagger/internal/Loader;
    .param p2, "modules"    # [Ljava/lang/Object;

    .line 167
    move-object/from16 v8, p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v0

    .line 168
    .local v9, "injectableTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, v0

    .line 170
    .local v10, "staticInjections":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ldagger/internal/StaticInjection;>;"
    if-nez v8, :cond_0

    new-instance v0, Ldagger/ObjectGraph$StandardBindings;

    invoke-direct {v0}, Ldagger/ObjectGraph$StandardBindings;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ldagger/ObjectGraph$StandardBindings;

    iget-object v1, v8, Ldagger/ObjectGraph$DaggerObjectGraph;->setBindings:Ljava/util/List;

    invoke-direct {v0, v1}, Ldagger/ObjectGraph$StandardBindings;-><init>(Ljava/util/List;)V

    :goto_0
    move-object v11, v0

    .line 172
    .local v11, "baseBindings":Ldagger/ObjectGraph$StandardBindings;
    new-instance v0, Ldagger/ObjectGraph$OverridesBindings;

    invoke-direct {v0}, Ldagger/ObjectGraph$OverridesBindings;-><init>()V

    move-object v12, v0

    .line 174
    .local v12, "overrideBindings":Ldagger/internal/BindingsGroup;
    invoke-static/range {p1 .. p2}, Ldagger/internal/Modules;->loadModules(Ldagger/internal/Loader;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    .line 175
    .local v13, "loadedModules":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 176
    .local v3, "loadedModule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldagger/internal/ModuleAdapter;

    .line 177
    .local v4, "moduleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, v4, Ldagger/internal/ModuleAdapter;->injectableTypes:[Ljava/lang/String;

    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 178
    aget-object v5, v5, v0

    iget-object v6, v4, Ldagger/internal/ModuleAdapter;->moduleClass:Ljava/lang/Class;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v5, v4, Ldagger/internal/ModuleAdapter;->staticInjections:[Ljava/lang/Class;

    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 181
    aget-object v5, v5, v0

    invoke-interface {v10, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 184
    .end local v0    # "i":I
    :cond_2
    :try_start_0
    iget-boolean v0, v4, Ldagger/internal/ModuleAdapter;->overrides:Z

    if-eqz v0, :cond_3

    move-object v0, v12

    goto :goto_4

    :cond_3
    move-object v0, v11

    .line 185
    .local v0, "addTo":Ldagger/internal/BindingsGroup;
    :goto_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ldagger/internal/ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "addTo":Ldagger/internal/BindingsGroup;
    nop

    .line 190
    .end local v3    # "loadedModule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    .end local v4    # "moduleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<Ljava/lang/Object;>;"
    goto :goto_1

    .line 186
    .restart local v3    # "loadedModule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    .restart local v4    # "moduleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Ldagger/internal/ModuleAdapter;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 193
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "loadedModule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    .end local v4    # "moduleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<Ljava/lang/Object;>;"
    :cond_4
    new-instance v0, Ldagger/internal/Linker;

    if-eqz v8, :cond_5

    iget-object v2, v8, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    :cond_5
    new-instance v1, Ldagger/internal/ThrowingErrorHandler;

    invoke-direct {v1}, Ldagger/internal/ThrowingErrorHandler;-><init>()V

    move-object/from16 v14, p1

    invoke-direct {v0, v2, v14, v1}, Ldagger/internal/Linker;-><init>(Ldagger/internal/Linker;Ldagger/internal/Loader;Ldagger/internal/Linker$ErrorHandler;)V

    .line 195
    .local v0, "linker":Ldagger/internal/Linker;
    invoke-virtual {v0, v11}, Ldagger/internal/Linker;->installBindings(Ldagger/internal/BindingsGroup;)V

    .line 196
    invoke-virtual {v0, v12}, Ldagger/internal/Linker;->installBindings(Ldagger/internal/BindingsGroup;)V

    .line 198
    new-instance v15, Ldagger/ObjectGraph$DaggerObjectGraph;

    invoke-static {v11}, Ldagger/ObjectGraph$StandardBindings;->access$000(Ldagger/ObjectGraph$StandardBindings;)Ljava/util/List;

    move-result-object v7

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p1

    move-object v5, v10

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Ldagger/ObjectGraph$DaggerObjectGraph;-><init>(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Linker;Ldagger/internal/Loader;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-object v15
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 266
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ldagger/internal/Keys;->getMembersKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "injectableTypeKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 270
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v2, v1, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->getInjectableTypeBinding(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ldagger/internal/Binding;

    move-result-object v3

    .line 272
    .local v3, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public inject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 276
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Keys;->getMembersKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "membersKey":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 279
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v1, v0, v0}, Ldagger/ObjectGraph$DaggerObjectGraph;->getInjectableTypeBinding(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ldagger/internal/Binding;

    move-result-object v2

    .line 281
    .local v2, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    invoke-virtual {v2, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 282
    return-object p1
.end method

.method public injectStatics()V
    .locals 3

    .line 254
    iget-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    monitor-enter v0

    .line 255
    :try_start_0
    invoke-direct {p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->linkStaticInjections()V

    .line 256
    iget-object v1, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->linker:Ldagger/internal/Linker;

    invoke-virtual {v1}, Ldagger/internal/Linker;->linkRequested()V

    .line 257
    invoke-direct {p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->linkStaticInjections()V

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->staticInjections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 261
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ldagger/internal/StaticInjection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/internal/StaticInjection;

    invoke-virtual {v2}, Ldagger/internal/StaticInjection;->inject()V

    .line 262
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ldagger/internal/StaticInjection;>;"
    goto :goto_0

    .line 263
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 258
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void
.end method

.method public varargs plus([Ljava/lang/Object;)Ldagger/ObjectGraph;
    .locals 1
    .param p1, "modules"    # [Ljava/lang/Object;

    .line 203
    invoke-direct {p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->linkEverything()Ljava/util/Map;

    .line 204
    iget-object v0, p0, Ldagger/ObjectGraph$DaggerObjectGraph;->plugin:Ldagger/internal/Loader;

    invoke-static {p0, v0, p1}, Ldagger/ObjectGraph$DaggerObjectGraph;->makeGraph(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Loader;[Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 3

    .line 226
    invoke-direct {p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->linkEverything()Ljava/util/Map;

    move-result-object v0

    .line 227
    .local v0, "allBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ldagger/internal/Binding<*>;>;"
    new-instance v1, Ldagger/internal/ProblemDetector;

    invoke-direct {v1}, Ldagger/internal/ProblemDetector;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldagger/internal/ProblemDetector;->detectProblems(Ljava/util/Collection;)V

    .line 228
    return-void
.end method
