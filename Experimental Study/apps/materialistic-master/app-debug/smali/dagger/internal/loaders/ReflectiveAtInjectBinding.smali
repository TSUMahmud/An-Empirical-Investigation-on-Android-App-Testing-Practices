.class public final Ldagger/internal/loaders/ReflectiveAtInjectBinding;
.super Ldagger/internal/Binding;
.source "ReflectiveAtInjectBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/Binding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final fieldBindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation
.end field

.field private final fields:[Ljava/lang/reflect/Field;

.field private final keys:[Ljava/lang/String;

.field private final loader:Ljava/lang/ClassLoader;

.field private final parameterBindings:[Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation
.end field

.field private final supertype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private supertypeBinding:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;ILjava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p1, "provideKey"    # Ljava/lang/String;
    .param p2, "membersKey"    # Ljava/lang/String;
    .param p3, "singleton"    # Z
    .param p5, "fields"    # [Ljava/lang/reflect/Field;
    .param p7, "parameterCount"    # I
    .param p9, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local p8, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 60
    iput-object p6, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    .line 62
    iput-object p8, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertype:Ljava/lang/Class;

    .line 63
    iput-object p9, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    .line 64
    new-array v0, p7, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    .line 65
    array-length v0, p5

    new-array v0, v0, [Ldagger/internal/Binding;

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    .line 66
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    .line 67
    return-void
.end method

.method public static create(Ljava/lang/Class;Z)Ldagger/internal/Binding;
    .locals 20
    .param p1, "mustHaveInjections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ldagger/internal/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v11, p0

    const-class v0, Ljavax/inject/Singleton;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    .line 146
    .local v12, "singleton":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 149
    .local v13, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 150
    .local v14, "injectedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 152
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Ljavax/inject/Inject;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    goto :goto_2

    .line 155
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    .line 158
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-static {v6, v7, v5}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t inject private field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 167
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v0, 0x0

    .line 168
    .local v0, "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-static/range {p0 .. p0}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->getConstructorsForType(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v3, v1

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    move-object v5, v0

    .end local v0    # "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v4    # "i$":I
    .local v5, "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_3
    if-ge v4, v3, :cond_7

    aget-object v0, v1, v4

    .line 169
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const-class v6, Ljavax/inject/Inject;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 170
    goto :goto_4

    .line 172
    :cond_5
    if-nez v5, :cond_6

    .line 175
    move-object v5, v0

    .line 168
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 173
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_6
    new-instance v2, Ldagger/internal/Binding$InvalidBindingException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "has too many injectable constructors"

    invoke-direct {v2, v6, v7}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 177
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v1    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_7
    if-nez v5, :cond_a

    .line 178
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 180
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v5    # "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local v0, "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    goto :goto_6

    .line 181
    .end local v0    # "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v5    # "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v0

    .line 182
    goto :goto_5

    .line 183
    :cond_8
    if-nez p1, :cond_9

    goto :goto_5

    .line 184
    :cond_9
    new-instance v0, Ldagger/internal/Binding$InvalidBindingException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "has no injectable members. Do you want to add an injectable constructor?"

    invoke-direct {v0, v1, v2}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_a
    :goto_5
    move-object v0, v5

    .end local v5    # "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v0    # "injectedConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_6
    if-eqz v0, :cond_d

    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_c

    .line 196
    invoke-static/range {p0 .. p0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "provideKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 199
    .local v2, "types":[Ljava/lang/reflect/Type;
    array-length v3, v2

    .line 200
    .local v3, "parameterCount":I
    if-eqz v3, :cond_b

    .line 201
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 202
    .local v4, "annotations":[[Ljava/lang/annotation/Annotation;
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_7
    array-length v6, v2

    if-ge v5, v6, :cond_b

    .line 203
    aget-object v6, v2, v5

    aget-object v7, v4, v5

    invoke-static {v6, v7, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 206
    .end local v2    # "types":[Ljava/lang/reflect/Type;
    .end local v4    # "annotations":[[Ljava/lang/annotation/Annotation;
    .end local v5    # "p":I
    :cond_b
    move-object/from16 v16, v1

    move v15, v3

    goto :goto_8

    .line 193
    .end local v1    # "provideKey":Ljava/lang/String;
    .end local v3    # "parameterCount":I
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t inject private constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_d
    const/4 v1, 0x0

    .line 208
    .restart local v1    # "provideKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 209
    .local v2, "parameterCount":I
    if-nez v12, :cond_10

    move-object/from16 v16, v1

    move v15, v2

    .line 215
    .end local v1    # "provideKey":Ljava/lang/String;
    .end local v2    # "parameterCount":I
    .local v15, "parameterCount":I
    .local v16, "provideKey":Ljava/lang/String;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 216
    .local v1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    if-eqz v1, :cond_f

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/Keys;->isPlatformType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 218
    const/4 v1, 0x0

    move-object/from16 v17, v1

    goto :goto_9

    .line 220
    :cond_e
    invoke-static {v1}, Ldagger/internal/Keys;->getMembersKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_f
    move-object/from16 v17, v1

    .end local v1    # "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    .local v17, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :goto_9
    invoke-static/range {p0 .. p0}, Ldagger/internal/Keys;->getMembersKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    .line 225
    .local v18, "membersKey":Ljava/lang/String;
    new-instance v19, Ldagger/internal/loaders/ReflectiveAtInjectBinding;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v14, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/reflect/Field;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Ljava/lang/String;

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move v4, v12

    move-object/from16 v5, p0

    move-object v7, v0

    move v8, v15

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v10}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;ILjava/lang/Class;[Ljava/lang/String;)V

    return-object v19

    .line 210
    .end local v15    # "parameterCount":I
    .end local v16    # "provideKey":Ljava/lang/String;
    .end local v17    # "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    .end local v18    # "membersKey":Ljava/lang/String;
    .local v1, "provideKey":Ljava/lang/String;
    .restart local v2    # "parameterCount":I
    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No injectable constructor on @Singleton "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    return-void
.end method

.method private static getConstructorsForType(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 232
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    return-object v0
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 8
    .param p1, "linker"    # Ldagger/internal/Linker;

    .line 71
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 73
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    .line 74
    iget-object v4, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v2, v2, v1

    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v4, v2, v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v2

    aput-object v2, v3, v1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3

    .line 79
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 80
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    .line 81
    iget-object v3, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v4, v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v3

    aput-object v3, v2, v1

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertype:Ljava/lang/Class;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    if-nez v1, :cond_4

    .line 87
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->keys:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v4, p0, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    iget-object v5, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->loader:Ljava/lang/ClassLoader;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v1

    iput-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    .line 90
    :cond_4
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 98
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v1, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 113
    invoke-virtual {p0, v1}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->injectMembers(Ljava/lang/Object;)V

    .line 114
    return-object v1

    .line 110
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 111
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 109
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 103
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 104
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 105
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    throw v4

    .line 94
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    return-void
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    .local p1, "get":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembers":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->parameterBindings:[Ldagger/internal/Binding;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    invoke-static {p2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fields:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    iget-object v2, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->fieldBindings:[Ldagger/internal/Binding;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->supertypeBinding:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    nop

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 141
    .local p0, "this":Ldagger/internal/loaders/ReflectiveAtInjectBinding;, "Ldagger/internal/loaders/ReflectiveAtInjectBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
