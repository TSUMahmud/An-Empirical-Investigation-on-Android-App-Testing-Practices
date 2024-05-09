.class final Lretrofit2/ServiceMethod$Builder;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field callAdapter:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field contentType:Lokhttp3/MediaType;

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lokhttp3/Headers;

.field httpMethod:Ljava/lang/String;

.field isFormEncoded:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field responseType:Ljava/lang/reflect/Type;

.field final retrofit:Lretrofit2/Retrofit;


# direct methods
.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "retrofit"    # Lretrofit2/Retrofit;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 153
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 155
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 157
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 158
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    .line 159
    return-void
.end method

.method private createCallAdapter()Lretrofit2/CallAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/CallAdapter<",
            "TT;TR;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 225
    .local v0, "returnType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 229
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 235
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_0
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v4, v0, v1}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 236
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/lang/RuntimeException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "Unable to create call adapter for %s"

    invoke-direct {p0, v4, v3, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 230
    .end local v1    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Service methods cannot return void."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 226
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private createResponseConverter()Lretrofit2/Converter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .line 734
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 736
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_0
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    const-string v3, "Unable to create converter for %s"

    invoke-direct {p0, v1, v3, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 743
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 747
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    for method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 750
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 752
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 748
    return-object v0
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p1, "p"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 761
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "p"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 757
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 10
    .param p1, "headers"    # [Ljava/lang/String;

    .line 310
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 311
    .local v0, "builder":Lokhttp3/Headers$Builder;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 312
    .local v4, "header":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 313
    .local v5, "colon":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    .line 317
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "headerName":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "headerValue":Ljava/lang/String;
    const-string v9, "Content-Type"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 320
    invoke-static {v8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    .line 321
    .local v9, "type":Lokhttp3/MediaType;
    if-eqz v9, :cond_0

    .line 324
    iput-object v9, p0, Lretrofit2/ServiceMethod$Builder;->contentType:Lokhttp3/MediaType;

    .line 325
    .end local v9    # "type":Lokhttp3/MediaType;
    goto :goto_1

    .line 322
    .restart local v9    # "type":Lokhttp3/MediaType;
    :cond_0
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v2

    const-string v2, "Malformed content type: %s"

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 326
    .end local v9    # "type":Lokhttp3/MediaType;
    :cond_1
    invoke-virtual {v0, v6, v8}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 311
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "colon":I
    .end local v6    # "headerName":Ljava/lang/String;
    .end local v8    # "headerValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    .restart local v4    # "header":Ljava/lang/String;
    .restart local v5    # "colon":I
    :cond_2
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 329
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "colon":I
    :cond_3
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "hasBody"    # Z

    .line 282
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 286
    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    .line 287
    iput-boolean p3, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    .line 289
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    return-void

    .line 294
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 295
    .local v0, "question":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    .line 297
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "queryParams":Ljava/lang/String;
    sget-object v4, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 299
    .local v4, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-direct {p0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 305
    .end local v3    # "queryParams":Ljava/lang/String;
    .end local v4    # "queryParamMatcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    .line 306
    invoke-static {p2}, Lretrofit2/ServiceMethod;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    .line 307
    return-void

    .line 283
    .end local v0    # "question":I
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    const-string v0, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-direct {p0, v0, v3}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .locals 4
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .line 242
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    instance-of v0, p1, Lretrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "DELETE"

    move-object v2, p1

    check-cast v2, Lretrofit2/http/DELETE;

    invoke-interface {v2}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 244
    :cond_0
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "GET"

    move-object v2, p1

    check-cast v2, Lretrofit2/http/GET;

    invoke-interface {v2}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 246
    :cond_1
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_3

    .line 247
    const-string v0, "HEAD"

    move-object v2, p1

    check-cast v2, Lretrofit2/http/HEAD;

    invoke-interface {v2}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    const-class v0, Ljava/lang/Void;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 249
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "HEAD method must use Void as response type."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 251
    :cond_3
    instance-of v0, p1, Lretrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 252
    const-string v0, "PATCH"

    move-object v1, p1

    check-cast v1, Lretrofit2/http/PATCH;

    invoke-interface {v1}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 253
    :cond_4
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_5

    .line 254
    const-string v0, "POST"

    move-object v1, p1

    check-cast v1, Lretrofit2/http/POST;

    invoke-interface {v1}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 255
    :cond_5
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_6

    .line 256
    const-string v0, "PUT"

    move-object v1, p1

    check-cast v1, Lretrofit2/http/PUT;

    invoke-interface {v1}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 257
    :cond_6
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_7

    .line 258
    const-string v0, "OPTIONS"

    move-object v2, p1

    check-cast v2, Lretrofit2/http/OPTIONS;

    invoke-interface {v2}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 259
    :cond_7
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_8

    .line 260
    move-object v0, p1

    check-cast v0, Lretrofit2/http/HTTP;

    .line 261
    .local v0, "http":Lretrofit2/http/HTTP;
    invoke-interface {v0}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    .end local v0    # "http":Lretrofit2/http/HTTP;
    goto :goto_0

    :cond_8
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_a

    .line 263
    move-object v0, p1

    check-cast v0, Lretrofit2/http/Headers;

    invoke-interface {v0}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "headersToParse":[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_9

    .line 267
    invoke-direct {p0, v0}, Lretrofit2/ServiceMethod$Builder;->parseHeaders([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lretrofit2/ServiceMethod$Builder;->headers:Lokhttp3/Headers;

    .line 268
    .end local v0    # "headersToParse":[Ljava/lang/String;
    goto :goto_0

    .line 265
    .restart local v0    # "headersToParse":[Ljava/lang/String;
    :cond_9
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@Headers annotation is empty."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 268
    .end local v0    # "headersToParse":[Ljava/lang/String;
    :cond_a
    instance-of v0, p1, Lretrofit2/http/Multipart;

    if-eqz v0, :cond_c

    .line 269
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_b

    .line 272
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    goto :goto_0

    .line 270
    :cond_b
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Only one encoding annotation is allowed."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 273
    :cond_c
    instance-of v0, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_e

    .line 274
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_d

    .line 277
    iput-boolean v2, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    goto :goto_0

    .line 275
    :cond_d
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Only one encoding annotation is allowed."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 279
    :cond_e
    :goto_0
    return-void
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .locals 6
    .param p1, "p"    # I
    .param p2, "parameterType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    const/4 v0, 0x0

    .line 335
    .local v0, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    array-length v1, p3

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .end local v0    # "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    .local v3, "result":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v4, p3, v0

    .line 336
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, p2, p3, v4}, Lretrofit2/ServiceMethod$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v5

    .line 339
    .local v5, "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    if-nez v5, :cond_0

    .line 340
    goto :goto_1

    .line 343
    :cond_0
    if-nez v3, :cond_1

    .line 347
    move-object v3, v5

    .line 335
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .restart local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multiple Retrofit annotations found, only one allowed."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 350
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationAction":Lretrofit2/ParameterHandler;, "Lretrofit2/ParameterHandler<*>;"
    :cond_2
    if-eqz v3, :cond_3

    .line 354
    return-object v3

    .line 351
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "No Retrofit annotation found."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    return-void
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .locals 9
    .param p1, "p"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    instance-of v0, p4, Lretrofit2/http/Url;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 360
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_5

    .line 363
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotPath:Z

    if-nez v0, :cond_4

    .line 366
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v0, :cond_3

    .line 369
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 373
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    .line 375
    const-class v0, Lokhttp3/HttpUrl;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/net/URI;

    if-eq p2, v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string v0, "android.net.Uri"

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 379
    :cond_1
    :goto_0
    new-instance v0, Lretrofit2/ParameterHandler$RelativeUrl;

    invoke-direct {v0}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>()V

    return-object v0

    .line 370
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 367
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "A @Url parameter must not come after a @Query"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 364
    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@Path parameters may not be used with @Url."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 361
    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multiple @Url method annotations found."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 385
    :cond_6
    instance-of v0, p4, Lretrofit2/http/Path;

    if-eqz v0, :cond_a

    .line 386
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v0, :cond_9

    .line 389
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_8

    .line 392
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 395
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotPath:Z

    .line 397
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Path;

    .line 398
    .local v0, "path":Lretrofit2/http/Path;
    invoke-interface {v0}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lretrofit2/ServiceMethod$Builder;->validatePathName(ILjava/lang/String;)V

    .line 401
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v2, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 402
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v3, Lretrofit2/ParameterHandler$Path;

    invoke-interface {v0}, Lretrofit2/http/Path;->encoded()Z

    move-result v4

    invoke-direct {v3, v1, v2, v4}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v3

    .line 393
    .end local v0    # "path":Lretrofit2/http/Path;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_7
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 390
    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@Path parameters may not be used with @Url."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 387
    :cond_9
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "A @Path parameter must not come after a @Query."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 404
    :cond_a
    instance-of v0, p4, Lretrofit2/http/Query;

    if-eqz v0, :cond_e

    .line 405
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Query;

    .line 406
    .local v0, "query":Lretrofit2/http/Query;
    invoke-interface {v0}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Lretrofit2/http/Query;->encoded()Z

    move-result v4

    .line 409
    .local v4, "encoded":Z
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 410
    .local v5, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 411
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 412
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    .line 418
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 419
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 420
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 421
    invoke-virtual {v6, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 422
    .local v6, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v7, v3, v6, v4}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 413
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must include generic type (e.g., "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<String>)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 413
    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 423
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 424
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 425
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 426
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 427
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v6, v3, v2, v4}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v6}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object v6

    return-object v6

    .line 429
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_d
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 430
    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 431
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v2, v3, v1, v4}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v2

    .line 434
    .end local v0    # "query":Lretrofit2/http/Query;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "encoded":Z
    .end local v5    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    instance-of v0, p4, Lretrofit2/http/QueryName;

    if-eqz v0, :cond_12

    .line 435
    move-object v0, p4

    check-cast v0, Lretrofit2/http/QueryName;

    .line 436
    .local v0, "query":Lretrofit2/http/QueryName;
    invoke-interface {v0}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v3

    .line 438
    .local v3, "encoded":Z
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 439
    .local v4, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 440
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 441
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_f

    .line 447
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 448
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 449
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 450
    invoke-virtual {v5, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 451
    .local v5, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v6, v5, v3}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v6}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v6

    return-object v6

    .line 442
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must include generic type (e.g., "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<String>)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 442
    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 452
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 453
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 454
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 455
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 456
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v5, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v5, v2, v3}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {v5}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object v5

    return-object v5

    .line 458
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_11
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 459
    invoke-virtual {v1, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 460
    .local v1, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v2, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v1, v3}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/Converter;Z)V

    return-object v2

    .line 463
    .end local v0    # "query":Lretrofit2/http/QueryName;
    .end local v1    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v3    # "encoded":Z
    .end local v4    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    instance-of v0, p4, Lretrofit2/http/QueryMap;

    if-eqz v0, :cond_16

    .line 464
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 468
    const-class v3, Ljava/util/Map;

    invoke-static {p2, v0, v3}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 469
    .local v3, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_14

    .line 472
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 473
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 474
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_13

    .line 477
    invoke-static {v1, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 478
    .local v1, "valueType":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 479
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 481
    .local v2, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$QueryMap;

    move-object v7, p4

    check-cast v7, Lretrofit2/http/QueryMap;

    invoke-interface {v7}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v7

    invoke-direct {v6, v2, v7}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Lretrofit2/Converter;Z)V

    return-object v6

    .line 475
    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .end local v2    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@QueryMap keys must be of type String: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 470
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_14
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Map must include generic types (e.g., Map<String, String>)"

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 466
    .end local v3    # "mapType":Ljava/lang/reflect/Type;
    :cond_15
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "@QueryMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 483
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    instance-of v0, p4, Lretrofit2/http/Header;

    if-eqz v0, :cond_1a

    .line 484
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Header;

    .line 485
    .local v0, "header":Lretrofit2/http/Header;
    invoke-interface {v0}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "name":Ljava/lang/String;
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 488
    .local v3, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 489
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_17

    .line 495
    move-object v4, p2

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 496
    .restart local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 497
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 498
    invoke-virtual {v5, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 499
    .local v5, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v6, v1, v5}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v6}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v6

    return-object v6

    .line 490
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must include generic type (e.g., "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<String>)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 490
    invoke-direct {p0, p1, v4, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 500
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 501
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 502
    .local v2, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 503
    invoke-virtual {v4, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    .line 504
    .local v4, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v5, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v5, v1, v4}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v5}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object v5

    return-object v5

    .line 506
    .end local v2    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_19
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 507
    invoke-virtual {v2, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 508
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v4, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v4, v1, v2}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    return-object v4

    .line 511
    .end local v0    # "header":Lretrofit2/http/Header;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v3    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    instance-of v0, p4, Lretrofit2/http/HeaderMap;

    if-eqz v0, :cond_1e

    .line 512
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 513
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 516
    const-class v3, Ljava/util/Map;

    invoke-static {p2, v0, v3}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 517
    .local v3, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1c

    .line 520
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 521
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 522
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_1b

    .line 525
    invoke-static {v1, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 526
    .local v1, "valueType":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 527
    invoke-virtual {v2, v1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 529
    .local v2, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$HeaderMap;

    invoke-direct {v6, v2}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Lretrofit2/Converter;)V

    return-object v6

    .line 523
    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    .end local v2    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@HeaderMap keys must be of type String: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 518
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_1c
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Map must include generic types (e.g., Map<String, String>)"

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 514
    .end local v3    # "mapType":Ljava/lang/reflect/Type;
    :cond_1d
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "@HeaderMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 531
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    instance-of v0, p4, Lretrofit2/http/Field;

    if-eqz v0, :cond_23

    .line 532
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_22

    .line 535
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Field;

    .line 536
    .local v0, "field":Lretrofit2/http/Field;
    invoke-interface {v0}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Lretrofit2/http/Field;->encoded()Z

    move-result v4

    .line 539
    .local v4, "encoded":Z
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    .line 541
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 542
    .local v1, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 543
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1f

    .line 549
    move-object v5, p2

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 550
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v5}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 551
    .local v2, "iterableType":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 552
    invoke-virtual {v6, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 553
    .restart local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v7, v3, v6, v4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 544
    .end local v2    # "iterableType":Ljava/lang/reflect/Type;
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must include generic type (e.g., "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<String>)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 544
    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 554
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 555
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 556
    .local v2, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 557
    invoke-virtual {v5, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v5

    .line 558
    .local v5, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v6, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v6, v3, v5, v4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v6}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object v6

    return-object v6

    .line 560
    .end local v2    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_21
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 561
    invoke-virtual {v2, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 562
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    new-instance v5, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v5, v3, v2, v4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object v5

    .line 533
    .end local v0    # "field":Lretrofit2/http/Field;
    .end local v1    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "encoded":Z
    :cond_22
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@Field parameters can only be used with form encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 565
    :cond_23
    instance-of v0, p4, Lretrofit2/http/FieldMap;

    if-eqz v0, :cond_28

    .line 566
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_27

    .line 569
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 570
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 573
    const-class v3, Ljava/util/Map;

    invoke-static {p2, v0, v3}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 574
    .local v3, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_25

    .line 578
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 579
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 580
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_24

    .line 583
    invoke-static {v1, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 584
    .local v2, "valueType":Ljava/lang/reflect/Type;
    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 585
    invoke-virtual {v6, v2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v6

    .line 587
    .local v6, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    .line 588
    new-instance v1, Lretrofit2/ParameterHandler$FieldMap;

    move-object v7, p4

    check-cast v7, Lretrofit2/http/FieldMap;

    invoke-interface {v7}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v7

    invoke-direct {v1, v6, v7}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Lretrofit2/Converter;Z)V

    return-object v1

    .line 581
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    .end local v6    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Ljava/lang/String;>;"
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@FieldMap keys must be of type String: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 575
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_25
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Map must include generic types (e.g., Map<String, String>)"

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 571
    .end local v3    # "mapType":Ljava/lang/reflect/Type;
    :cond_26
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "@FieldMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 567
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_27
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@FieldMap parameters can only be used with form encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 590
    :cond_28
    instance-of v0, p4, Lretrofit2/http/Part;

    if-eqz v0, :cond_37

    .line 591
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_36

    .line 594
    move-object v0, p4

    check-cast v0, Lretrofit2/http/Part;

    .line 595
    .local v0, "part":Lretrofit2/http/Part;
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 597
    invoke-interface {v0}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "partName":Ljava/lang/String;
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 599
    .local v4, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 600
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 601
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2a

    .line 607
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 608
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 609
    .local v5, "iterableType":Ljava/lang/reflect/Type;
    const-class v6, Lokhttp3/MultipartBody$Part;

    invoke-static {v5}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 613
    sget-object v2, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v2}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v2

    return-object v2

    .line 610
    :cond_29
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    invoke-direct {p0, p1, v6, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 602
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "iterableType":Ljava/lang/reflect/Type;
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must include generic type (e.g., "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<String>)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 602
    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 614
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 615
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 616
    .local v1, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 620
    sget-object v2, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v2}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object v2

    return-object v2

    .line 617
    :cond_2c
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 621
    .end local v1    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2d
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 622
    sget-object v1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    return-object v1

    .line 624
    :cond_2e
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 628
    :cond_2f
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "Content-Transfer-Encoding"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    .line 630
    invoke-interface {v0}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 629
    invoke-static {v5}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    .line 632
    .local v1, "headers":Lokhttp3/Headers;
    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 633
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_31

    .line 639
    move-object v5, p2

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 640
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v5}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 641
    .local v6, "iterableType":Ljava/lang/reflect/Type;
    const-class v7, Lokhttp3/MultipartBody$Part;

    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 645
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v7, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 646
    invoke-virtual {v2, v6, p3, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 647
    .local v2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v7, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v7, v1, v2}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v7}, Lretrofit2/ParameterHandler;->iterable()Lretrofit2/ParameterHandler;

    move-result-object v7

    return-object v7

    .line 642
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_30
    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    invoke-direct {p0, p1, v7, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 634
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "iterableType":Ljava/lang/reflect/Type;
    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must include generic type (e.g., "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<String>)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 634
    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 648
    :cond_32
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 649
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lretrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 650
    .local v5, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 654
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 655
    invoke-virtual {v2, v5, p3, v6}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 656
    .restart local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v6, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v6, v1, v2}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v6}, Lretrofit2/ParameterHandler;->array()Lretrofit2/ParameterHandler;

    move-result-object v6

    return-object v6

    .line 651
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_33
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    invoke-direct {p0, p1, v6, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 657
    .end local v5    # "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_34
    const-class v5, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 661
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 662
    invoke-virtual {v2, p2, p3, v5}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 663
    .restart local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    new-instance v5, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v5, v1, v2}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    return-object v5

    .line 658
    .end local v2    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :cond_35
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    invoke-direct {p0, p1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 592
    .end local v0    # "part":Lretrofit2/http/Part;
    .end local v1    # "headers":Lokhttp3/Headers;
    .end local v3    # "partName":Ljava/lang/String;
    .end local v4    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@Part parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 667
    :cond_37
    instance-of v0, p4, Lretrofit2/http/PartMap;

    if-eqz v0, :cond_3d

    .line 668
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_3c

    .line 671
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 672
    invoke-static {p2}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 673
    .local v0, "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 676
    const-class v3, Ljava/util/Map;

    invoke-static {p2, v0, v3}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 677
    .local v3, "mapType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3a

    .line 680
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 682
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v2, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 683
    .local v5, "keyType":Ljava/lang/reflect/Type;
    const-class v6, Ljava/lang/String;

    if-ne v6, v5, :cond_39

    .line 687
    invoke-static {v1, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 688
    .local v1, "valueType":Ljava/lang/reflect/Type;
    const-class v6, Lokhttp3/MultipartBody$Part;

    invoke-static {v1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 693
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v6, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 694
    invoke-virtual {v2, v1, p3, v6}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 696
    .local v2, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    move-object v6, p4

    check-cast v6, Lretrofit2/http/PartMap;

    .line 697
    .local v6, "partMap":Lretrofit2/http/PartMap;
    new-instance v7, Lretrofit2/ParameterHandler$PartMap;

    invoke-interface {v6}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lretrofit2/ParameterHandler$PartMap;-><init>(Lretrofit2/Converter;Ljava/lang/String;)V

    return-object v7

    .line 689
    .end local v2    # "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    .end local v6    # "partMap":Lretrofit2/http/PartMap;
    :cond_38
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-direct {p0, p1, v6, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 684
    .end local v1    # "valueType":Ljava/lang/reflect/Type;
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@PartMap keys must be of type String: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 678
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "keyType":Ljava/lang/reflect/Type;
    :cond_3a
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Map must include generic types (e.g., Map<String, String>)"

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 674
    .end local v3    # "mapType":Ljava/lang/reflect/Type;
    :cond_3b
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "@PartMap parameter type must be Map."

    invoke-direct {p0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 669
    .end local v0    # "rawParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3c
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@PartMap parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 699
    :cond_3d
    instance-of v0, p4, Lretrofit2/http/Body;

    if-eqz v0, :cond_40

    .line 700
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_3f

    .line 704
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v0, :cond_3e

    .line 710
    :try_start_0
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->retrofit:Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .local v0, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    nop

    .line 715
    iput-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    .line 716
    new-instance v1, Lretrofit2/ParameterHandler$Body;

    invoke-direct {v1, v0}, Lretrofit2/ParameterHandler$Body;-><init>(Lretrofit2/Converter;)V

    return-object v1

    .line 711
    .end local v0    # "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<*Lokhttp3/RequestBody;>;"
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/RuntimeException;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string v2, "Unable to create @Body converter for %s"

    invoke-direct {p0, v0, p1, v2, v1}, Lretrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 705
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3e
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multiple @Body method annotations found."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 701
    :cond_3f
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 719
    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 4
    .param p1, "p"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 723
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    sget-object v0, Lretrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    return-void

    .line 729
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 724
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lretrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 725
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    .line 724
    const-string v1, "@Path parameter name must match %s. Found: %s"

    invoke-direct {p0, p1, v1, v0}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public build()Lretrofit2/ServiceMethod;
    .locals 7

    .line 162
    .local p0, "this":Lretrofit2/ServiceMethod$Builder;, "Lretrofit2/ServiceMethod$Builder<TT;TR;>;"
    invoke-direct {p0}, Lretrofit2/ServiceMethod$Builder;->createCallAdapter()Lretrofit2/CallAdapter;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->callAdapter:Lretrofit2/CallAdapter;

    .line 163
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v0}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 164
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    const-class v1, Lretrofit2/Response;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const-class v1, Lokhttp3/Response;

    if-eq v0, v1, :cond_10

    .line 169
    invoke-direct {p0}, Lretrofit2/ServiceMethod$Builder;->createResponseConverter()Lretrofit2/Converter;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->responseConverter:Lretrofit2/Converter;

    .line 171
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 172
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v4}, Lretrofit2/ServiceMethod$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    .line 171
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 179
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v0, :cond_3

    .line 180
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_2

    .line 184
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 185
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 181
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 190
    :cond_3
    :goto_1
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 191
    .local v0, "parameterCount":I
    new-array v1, v0, [Lretrofit2/ParameterHandler;

    iput-object v1, p0, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    .line 192
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_2
    const/4 v3, 0x1

    if-ge v1, v0, :cond_6

    .line 193
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    .line 194
    .local v4, "parameterType":Ljava/lang/reflect/Type;
    invoke-static {v4}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 199
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    .line 200
    .local v3, "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v3, :cond_4

    .line 204
    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    invoke-direct {p0, v1, v4, v3}, Lretrofit2/ServiceMethod$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v6

    aput-object v6, v5, v1

    .line 192
    .end local v3    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v4    # "parameterType":Ljava/lang/reflect/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    .restart local v3    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v4    # "parameterType":Ljava/lang/reflect/Type;
    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "No Retrofit annotation found."

    invoke-direct {p0, v1, v5, v2}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 195
    .end local v3    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_5
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v1, v2, v3}, Lretrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 207
    .end local v1    # "p":I
    .end local v4    # "parameterType":Ljava/lang/reflect/Type;
    :cond_6
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-eqz v1, :cond_7

    goto :goto_3

    .line 208
    :cond_7
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 210
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v1, :cond_9

    goto :goto_4

    .line 211
    :cond_9
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 213
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotField:Z

    if-eqz v1, :cond_b

    goto :goto_5

    .line 214
    :cond_b
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 216
    :cond_c
    :goto_5
    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lretrofit2/ServiceMethod$Builder;->gotPart:Z

    if-eqz v1, :cond_d

    goto :goto_6

    .line 217
    :cond_d
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-direct {p0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 220
    :cond_e
    :goto_6
    new-instance v1, Lretrofit2/ServiceMethod;

    invoke-direct {v1, p0}, Lretrofit2/ServiceMethod;-><init>(Lretrofit2/ServiceMethod$Builder;)V

    return-object v1

    .line 176
    .end local v0    # "parameterCount":I
    :cond_f
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-direct {p0, v1, v0}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 165
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 166
    invoke-static {v1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 165
    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    return-void
.end method
