.class public final Ldagger/internal/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# static fields
.field private static final IS_QUALIFIER_ANNOTATION:Ldagger/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Memoizer<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAZY_PREFIX:Ljava/lang/String;

.field private static final MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

.field private static final PROVIDER_PREFIX:Ljava/lang/String;

.field private static final SET_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljavax/inject/Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ldagger/MembersInjector;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->SET_PREFIX:Ljava/lang/String;

    .line 49
    new-instance v0, Ldagger/internal/Keys$1;

    invoke-direct {v0}, Ldagger/internal/Keys$1;-><init>()V

    sput-object v0, Ldagger/internal/Keys;->IS_QUALIFIER_ANNOTATION:Ldagger/internal/Memoizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 262
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 263
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 264
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 265
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 266
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 267
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 268
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 269
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 270
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class v0, Ljava/lang/Void;

    return-object v0

    .line 271
    :cond_8
    return-object p0
.end method

.method private static extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "delegatePrefix"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;
    .locals 8
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p1, "subject"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "qualifier":Ljava/lang/annotation/Annotation;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 123
    .local v4, "a":Ljava/lang/annotation/Annotation;
    sget-object v5, Ldagger/internal/Keys;->IS_QUALIFIER_ANNOTATION:Ldagger/internal/Memoizer;

    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    goto :goto_1

    .line 126
    :cond_0
    if-nez v0, :cond_1

    .line 129
    move-object v0, v4

    .line 122
    .end local v4    # "a":Ljava/lang/annotation/Annotation;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .restart local v4    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many qualifier annotations on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v4    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .line 72
    invoke-static {p0}, Ldagger/internal/Keys;->boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 73
    if-nez p1, :cond_0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "result":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p2, "subject"    # Ljava/lang/Object;

    .line 112
    invoke-static {p1, p2}, Ldagger/internal/Keys;->extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getBuiltInBindingsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 181
    invoke-static {p0}, Ldagger/internal/Keys;->startOfType(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "start":I
    sget-object v1, Ldagger/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldagger/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldagger/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    :cond_0
    sget-object v1, Ldagger/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const-string v1, "members/"

    sget-object v2, Ldagger/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldagger/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "start":I
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "members/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 251
    :cond_1
    const/16 v1, 0x3c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static getLazyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 197
    invoke-static {p0}, Ldagger/internal/Keys;->startOfType(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "start":I
    sget-object v1, Ldagger/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldagger/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldagger/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMembersKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 67
    .local p0, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "members/"

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAnnotated(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 238
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 258
    const-string v0, "java."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static startOfType(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 210
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "substring"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "topLevel"    # Z

    .line 140
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 141
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 142
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1, v1}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 144
    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    if-nez p2, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninjectable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    goto :goto_2

    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    .line 154
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 155
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 156
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 157
    .local v1, "arguments":[Ljava/lang/reflect/Type;
    const-string v3, "<"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 159
    if-eqz v3, :cond_4

    .line 160
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_4
    aget-object v4, v1, v3

    invoke-static {v4, p1, v2}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v3    # "i":I
    :cond_5
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "arguments":[Ljava/lang/reflect/Type;
    goto :goto_2

    :cond_6
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_7

    .line 166
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 167
    .local v0, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2, p1, v1}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 168
    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v0    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    nop

    .line 172
    :goto_2
    return-void

    .line 170
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uninjectable type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method
