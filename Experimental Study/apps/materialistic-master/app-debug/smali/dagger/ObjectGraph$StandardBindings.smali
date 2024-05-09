.class final Ldagger/ObjectGraph$StandardBindings;
.super Ldagger/internal/BindingsGroup;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/ObjectGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardBindings"
.end annotation


# instance fields
.field private final setBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldagger/internal/SetBinding<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 325
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldagger/internal/SetBinding<",
            "*>;>;)V"
        }
    .end annotation

    .line 329
    .local p1, "baseSetBindings":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/SetBinding<*>;>;"
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/internal/SetBinding;

    .line 333
    .local v1, "sb":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    new-instance v2, Ldagger/internal/SetBinding;

    invoke-direct {v2, v1}, Ldagger/internal/SetBinding;-><init>(Ldagger/internal/SetBinding;)V

    .line 334
    .local v2, "child":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    iget-object v3, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v3, v2, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ldagger/internal/BindingsGroup;->put(Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/Binding;

    .line 336
    .end local v1    # "sb":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    .end local v2    # "child":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    goto :goto_0

    .line 337
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ldagger/ObjectGraph$StandardBindings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldagger/ObjectGraph$StandardBindings;

    .line 322
    iget-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldagger/internal/SetBinding;)Ldagger/internal/Binding;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldagger/internal/SetBinding<",
            "*>;)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 340
    .local p2, "value":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    iget-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-super {p0, p1, p2}, Ldagger/internal/BindingsGroup;->put(Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method
