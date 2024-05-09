.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,82:1\n57#1,23:83\n57#1,23:106\n25#2,2:129\n*E\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n19#1,23:83\n31#1,23:106\n14#1,2:129\n*E\n"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const/4 v0, 0x0

    .line 129
    .local v0, "$i$f$emptyArray":I
    nop

    .line 130
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .end local v0    # "$i$f$emptyArray":I
    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 20
    nop

    .line 19
    const/4 v0, 0x0

    move v1, v0

    .line 83
    .local v1, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 84
    .local v2, "size$iv":I
    if-nez v2, :cond_0

    .line 21
    .local v0, "$i$a$1$toArrayImpl":I
    sget-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_2

    .line 85
    .end local v0    # "$i$a$1$toArrayImpl":I
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    .local v3, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 21
    .restart local v0    # "$i$a$1$toArrayImpl":I
    sget-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_2

    .line 87
    .end local v0    # "$i$a$1$toArrayImpl":I
    :cond_1
    move v4, v2

    .local v4, "size":I
    move v5, v0

    .line 22
    .local v5, "$i$a$2$toArrayImpl":I
    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    .end local v5    # "$i$a$2$toArrayImpl":I
    .local v4, "result$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 90
    .local v5, "i$iv":I
    :goto_0
    nop

    .line 91
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i$iv":I
    .local v6, "i$iv":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v5

    .line 92
    array-length v5, v4

    if-lt v6, v5, :cond_5

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 97
    :cond_2
    mul-int/lit8 v5, v6, 0x3

    add-int/lit8 v5, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1

    .line 98
    .local v5, "newSize$iv":I
    if-gt v5, v6, :cond_4

    .line 99
    const v7, 0x7ffffffd

    if-ge v6, v7, :cond_3

    .line 100
    const v5, 0x7ffffffd

    goto :goto_1

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 102
    :cond_4
    :goto_1
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Arrays.copyOf(result, newSize)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v7

    goto :goto_3

    .line 104
    .end local v5    # "newSize$iv":I
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v4

    .local v5, "result":[Ljava/lang/Object;
    move v7, v6

    .line 23
    .local v0, "$i$a$3$toArrayImpl":I
    .local v7, "size":I
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Arrays.copyOf(result, size)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .line 24
    .end local v0    # "$i$a$3$toArrayImpl":I
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v3    # "iter$iv":Ljava/util/Iterator;
    .end local v4    # "result$iv":[Ljava/lang/Object;
    .end local v5    # "result":[Ljava/lang/Object;
    .end local v6    # "i$iv":I
    .end local v7    # "size":I
    :goto_2
    return-object v0

    .line 105
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    .restart local v3    # "iter$iv":Ljava/util/Iterator;
    .restart local v4    # "result$iv":[Ljava/lang/Object;
    .restart local v6    # "i$iv":I
    :cond_6
    :goto_3
    nop

    .line 90
    move v5, v6

    goto :goto_0
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_b

    .line 31
    nop

    .line 32
    nop

    .line 31
    const/4 v0, 0x0

    move v1, v0

    .line 106
    .local v1, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 107
    .local v2, "size$iv":I
    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v4, v0

    .line 34
    .local v4, "$i$a$4$toArrayImpl":I
    array-length v5, p1

    if-lez v5, :cond_0

    aput-object v3, p1, v0

    .line 35
    :cond_0
    :goto_0
    goto :goto_1

    .line 108
    .end local v4    # "$i$a$4$toArrayImpl":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 109
    .local v4, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v0

    .line 34
    .local v5, "$i$a$4$toArrayImpl":I
    array-length v6, p1

    if-lez v6, :cond_0

    aput-object v3, p1, v0

    goto :goto_0

    .line 113
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v5    # "$i$a$4$toArrayImpl":I
    :goto_1
    move-object v3, p1

    goto/16 :goto_6

    .line 110
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    .restart local v4    # "iter$iv":Ljava/util/Iterator;
    :cond_2
    move v5, v2

    .local v5, "size":I
    move v6, v0

    .line 38
    .local v6, "$i$a$5$toArrayImpl":I
    nop

    .line 39
    array-length v7, p1

    if-gt v5, v7, :cond_3

    move-object v7, p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    check-cast v7, [Ljava/lang/Object;

    .end local v5    # "size":I
    .end local v6    # "$i$a$5$toArrayImpl":I
    :goto_2
    move-object v5, v7

    .line 111
    .local v5, "result$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 113
    .local v6, "i$iv":I
    :goto_3
    nop

    .line 114
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i$iv":I
    .local v7, "i$iv":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v6

    .line 115
    array-length v6, v5

    if-lt v7, v6, :cond_7

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v3, v5

    goto :goto_6

    .line 120
    :cond_4
    mul-int/lit8 v6, v7, 0x3

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v6, v6, 0x1

    .line 121
    .local v6, "newSize$iv":I
    if-gt v6, v7, :cond_6

    .line 122
    const v8, 0x7ffffffd

    if-ge v7, v8, :cond_5

    .line 123
    const v6, 0x7ffffffd

    goto :goto_4

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 125
    :cond_6
    :goto_4
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Arrays.copyOf(result, newSize)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v8

    goto :goto_7

    .line 127
    .end local v6    # "newSize$iv":I
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    move-object v6, v5

    .local v6, "result":[Ljava/lang/Object;
    move v8, v7

    .line 42
    .local v0, "$i$a$6$toArrayImpl":I
    .local v8, "size":I
    if-ne v6, p1, :cond_8

    .line 43
    aput-object v3, p1, v8

    .line 44
    move-object v3, p1

    goto :goto_5

    .line 46
    :cond_8
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "Arrays.copyOf(result, size)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .end local v0    # "$i$a$6$toArrayImpl":I
    .end local v6    # "result":[Ljava/lang/Object;
    .end local v8    # "size":I
    :goto_5
    nop

    .line 46
    nop

    .line 113
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v5    # "result$iv":[Ljava/lang/Object;
    .end local v7    # "i$iv":I
    :goto_6
    return-object v3

    .line 128
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    .restart local v4    # "iter$iv":Ljava/util/Iterator;
    .restart local v5    # "result$iv":[Ljava/lang/Object;
    .restart local v7    # "i$iv":I
    :cond_9
    :goto_7
    nop

    .line 113
    move v6, v7

    goto :goto_3

    .line 39
    .end local v7    # "i$iv":I
    .local v5, "size":I
    .local v6, "$i$a$5$toArrayImpl":I
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v5    # "size":I
    .end local v6    # "$i$a$5$toArrayImpl":I
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    return-void
.end method
