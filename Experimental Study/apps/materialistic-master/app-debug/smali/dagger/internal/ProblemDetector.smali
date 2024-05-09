.class public final Ldagger/internal/ProblemDetector;
.super Ljava/lang/Object;
.source "ProblemDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/ProblemDetector$ArraySet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static detectCircularDependencies(Ljava/util/Collection;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/List<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/Binding<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/internal/Binding;

    .line 54
    .local v1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v1}, Ldagger/internal/Binding;->isCycleFree()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Ldagger/internal/Binding;->isVisiting()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 60
    .local v2, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dependency cycle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 62
    .local v4, "message":Ljava/lang/StringBuilder;
    move v5, v2

    .local v5, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 63
    const-string v6, "\n    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldagger/internal/Binding;

    iget-object v6, v6, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bound by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v5    # "i":I
    :cond_1
    const-string v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    .end local v2    # "index":I
    .end local v4    # "message":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ldagger/internal/Binding;->setVisiting(Z)V

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :try_start_0
    new-instance v4, Ldagger/internal/ProblemDetector$ArraySet;

    invoke-direct {v4}, Ldagger/internal/ProblemDetector$ArraySet;-><init>()V

    .line 74
    .local v4, "dependencies":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<Ldagger/internal/Binding<*>;>;"
    invoke-virtual {v1, v4, v4}, Ldagger/internal/Binding;->getDependencies(Ljava/util/Set;Ljava/util/Set;)V

    .line 75
    invoke-static {v4, p1}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;Ljava/util/List;)V

    .line 76
    invoke-virtual {v1, v2}, Ldagger/internal/Binding;->setCycleFree(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v4    # "dependencies":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<Ldagger/internal/Binding<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1, v3}, Ldagger/internal/Binding;->setVisiting(Z)V

    .line 80
    nop

    .line 81
    .end local v1    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    goto/16 :goto_0

    .line 78
    .restart local v1    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :catchall_0
    move-exception v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1, v3}, Ldagger/internal/Binding;->setVisiting(Z)V

    throw v4

    .line 82
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public detectCircularDependencies(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 29
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;Ljava/util/List;)V

    .line 30
    return-void
.end method

.method public detectProblems(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 85
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    invoke-virtual {p0, p1}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {p0, p1}, Ldagger/internal/ProblemDetector;->detectUnusedBinding(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public detectUnusedBinding(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 33
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "unusedBindings":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/Binding;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/internal/Binding;

    .line 35
    .local v2, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v2}, Ldagger/internal/Binding;->library()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ldagger/internal/Binding;->dependedOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v2    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_0
    goto :goto_0

    .line 39
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "You have these unused @Provider methods:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 43
    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldagger/internal/Binding;

    iget-object v3, v3, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .end local v2    # "i":I
    :cond_2
    const-string v2, "\n    Set library=true in your module to disable this check."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method
