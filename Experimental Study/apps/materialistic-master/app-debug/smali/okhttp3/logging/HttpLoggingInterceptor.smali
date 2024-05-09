.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;,
        Lokhttp3/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .locals 1
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 120
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 121
    return-void
.end method

.method private bodyEncoded(Lokhttp3/Headers;)Z
    .locals 2
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 292
    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isPlaintext(Lokio/Buffer;)Z
    .locals 7
    .param p0, "buffer"    # Lokio/Buffer;

    .line 273
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 274
    .local v2, "prefix":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    move-wide v5, v3

    .line 275
    .local v5, "byteCount":J
    :cond_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_3

    .line 277
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v3

    .line 281
    .local v3, "codePoint":I
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    .line 282
    return v0

    .line 276
    .end local v3    # "codePoint":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 286
    .end local v2    # "prefix":Lokio/Buffer;
    .end local v5    # "byteCount":J
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/EOFException;
    return v0
.end method


# virtual methods
.method public getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    .line 135
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 27
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 141
    .local v3, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 142
    .local v4, "request":Lokhttp3/Request;
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_0

    .line 143
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 147
    .local v7, "logBody":Z
    if-nez v7, :cond_3

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move v8, v0

    .line 149
    .local v8, "logHeaders":Z
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    .line 150
    .local v9, "requestBody":Lokhttp3/RequestBody;
    if-eqz v9, :cond_4

    const/4 v5, 0x1

    .line 152
    .local v5, "hasRequestBody":Z
    :cond_4
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v6

    .line 153
    .local v6, "connection":Lokhttp3/Connection;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    .line 156
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    const-string v11, ""

    :goto_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "requestStartMessage":Ljava/lang/String;
    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-byte body)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    .line 160
    :cond_6
    move-object v11, v0

    .end local v0    # "requestStartMessage":Ljava/lang/String;
    .local v11, "requestStartMessage":Ljava/lang/String;
    :goto_4
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v0, v11}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 162
    const-wide/16 v12, -0x1

    if-eqz v8, :cond_11

    .line 163
    if-eqz v5, :cond_9

    .line 166
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 169
    :cond_7
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-eqz v0, :cond_8

    .line 170
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .local v16, "requestStartMessage":Ljava/lang/String;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 169
    .end local v16    # "requestStartMessage":Ljava/lang/String;
    .restart local v11    # "requestStartMessage":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v11

    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v16    # "requestStartMessage":Ljava/lang/String;
    goto :goto_5

    .line 163
    .end local v16    # "requestStartMessage":Ljava/lang/String;
    .restart local v11    # "requestStartMessage":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v11

    .line 174
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v16    # "requestStartMessage":Ljava/lang/String;
    :goto_5
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 175
    .local v0, "headers":Lokhttp3/Headers;
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v11

    .local v11, "count":I
    :goto_6
    if-ge v10, v11, :cond_b

    .line 176
    invoke-virtual {v0, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, "name":Ljava/lang/String;
    const-string v15, "Content-Type"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, "Content-Length"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 179
    iget-object v15, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v15, v12}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 175
    .end local v14    # "name":Ljava/lang/String;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v12, -0x1

    goto :goto_6

    .line 183
    .end local v10    # "i":I
    .end local v11    # "count":I
    :cond_b
    if-eqz v7, :cond_10

    if-nez v5, :cond_c

    move v15, v5

    move-object/from16 v20, v6

    goto/16 :goto_7

    .line 185
    :cond_c
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v10

    invoke-direct {v1, v10}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 186
    iget-object v10, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--> END "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (encoded body omitted)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move v15, v5

    move-object/from16 v20, v6

    goto/16 :goto_8

    .line 188
    :cond_d
    new-instance v10, Lokio/Buffer;

    invoke-direct {v10}, Lokio/Buffer;-><init>()V

    .line 189
    .local v10, "buffer":Lokio/Buffer;
    invoke-virtual {v9, v10}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 191
    sget-object v11, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 192
    .local v11, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v12

    .line 193
    .local v12, "contentType":Lokhttp3/MediaType;
    if-eqz v12, :cond_e

    .line 194
    sget-object v13, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v11

    .line 197
    :cond_e
    iget-object v13, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v14, ""

    invoke-interface {v13, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 198
    invoke-static {v10}, Lokhttp3/logging/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 199
    iget-object v13, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v10, v11}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 200
    iget-object v13, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--> END "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    move v15, v5

    move-object/from16 v20, v6

    .end local v5    # "hasRequestBody":Z
    .end local v6    # "connection":Lokhttp3/Connection;
    .local v15, "hasRequestBody":Z
    .local v20, "connection":Lokhttp3/Connection;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-byte body)"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-interface {v13, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 203
    .end local v15    # "hasRequestBody":Z
    .end local v20    # "connection":Lokhttp3/Connection;
    .restart local v5    # "hasRequestBody":Z
    .restart local v6    # "connection":Lokhttp3/Connection;
    :cond_f
    move v15, v5

    move-object/from16 v20, v6

    .end local v5    # "hasRequestBody":Z
    .end local v6    # "connection":Lokhttp3/Connection;
    .restart local v15    # "hasRequestBody":Z
    .restart local v20    # "connection":Lokhttp3/Connection;
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--> END "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (binary "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-byte body omitted)"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-interface {v5, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 183
    .end local v10    # "buffer":Lokio/Buffer;
    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .end local v12    # "contentType":Lokhttp3/MediaType;
    .end local v15    # "hasRequestBody":Z
    .end local v20    # "connection":Lokhttp3/Connection;
    .restart local v5    # "hasRequestBody":Z
    .restart local v6    # "connection":Lokhttp3/Connection;
    :cond_10
    move v15, v5

    move-object/from16 v20, v6

    .line 184
    .end local v5    # "hasRequestBody":Z
    .end local v6    # "connection":Lokhttp3/Connection;
    .restart local v15    # "hasRequestBody":Z
    .restart local v20    # "connection":Lokhttp3/Connection;
    :goto_7
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> END "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 162
    .end local v0    # "headers":Lokhttp3/Headers;
    .end local v15    # "hasRequestBody":Z
    .end local v16    # "requestStartMessage":Ljava/lang/String;
    .end local v20    # "connection":Lokhttp3/Connection;
    .restart local v5    # "hasRequestBody":Z
    .restart local v6    # "connection":Lokhttp3/Connection;
    .local v11, "requestStartMessage":Ljava/lang/String;
    :cond_11
    move v15, v5

    move-object/from16 v20, v6

    move-object/from16 v16, v11

    .line 209
    .end local v5    # "hasRequestBody":Z
    .end local v6    # "connection":Lokhttp3/Connection;
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v15    # "hasRequestBody":Z
    .restart local v16    # "requestStartMessage":Ljava/lang/String;
    .restart local v20    # "connection":Lokhttp3/Connection;
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 212
    .local v5, "startNs":J
    :try_start_0
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v0, "response":Lokhttp3/Response;
    nop

    .line 217
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 219
    .local v10, "tookMs":J
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    .line 220
    .local v12, "responseBody":Lokhttp3/ResponseBody;
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    .line 221
    .local v13, "contentLength":J
    const-wide/16 v18, -0x1

    cmp-long v21, v13, v18

    if-eqz v21, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v18, v3

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v18, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    const-string v3, "-byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .end local v18    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    :cond_12
    move-object/from16 v18, v3

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v18    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    const-string v2, "unknown-length"

    .line 222
    .local v2, "bodySize":Ljava/lang/String;
    :goto_9
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v19, v4

    .end local v4    # "request":Lokhttp3/Request;
    .local v19, "request":Lokhttp3/Request;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v5

    .end local v5    # "startNs":J
    .local v21, "startNs":J
    const-string v5, "<-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, ""

    goto :goto_a

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_14

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " body"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_14
    const-string v5, ""

    :goto_b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-interface {v3, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 228
    if-eqz v8, :cond_1c

    .line 229
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    .line 230
    .local v3, "headers":Lokhttp3/Headers;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v5

    .local v5, "count":I
    :goto_c
    if-ge v4, v5, :cond_15

    .line 231
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v17, v2

    .end local v2    # "bodySize":Ljava/lang/String;
    .local v17, "bodySize":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v5

    .end local v5    # "count":I
    .local v23, "count":I
    invoke-virtual {v3, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    move/from16 v5, v23

    goto :goto_c

    .end local v17    # "bodySize":Ljava/lang/String;
    .end local v23    # "count":I
    .restart local v2    # "bodySize":Ljava/lang/String;
    .restart local v5    # "count":I
    :cond_15
    move-object/from16 v17, v2

    move/from16 v23, v5

    .line 234
    .end local v2    # "bodySize":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "count":I
    .restart local v17    # "bodySize":Ljava/lang/String;
    if-eqz v7, :cond_1b

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v24, v3

    move/from16 v26, v7

    goto/16 :goto_e

    .line 236
    :cond_16
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 237
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v4, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move/from16 v26, v7

    goto/16 :goto_f

    .line 239
    :cond_17
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    .line 240
    .local v2, "source":Lokio/BufferedSource;
    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 241
    invoke-interface {v2}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v4

    .line 243
    .local v4, "buffer":Lokio/Buffer;
    sget-object v5, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 244
    .local v5, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    .line 245
    .local v6, "contentType":Lokhttp3/MediaType;
    if-eqz v6, :cond_18

    .line 246
    move-object/from16 v23, v2

    .end local v2    # "source":Lokio/BufferedSource;
    .local v23, "source":Lokio/BufferedSource;
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_d

    .line 245
    .end local v23    # "source":Lokio/BufferedSource;
    .restart local v2    # "source":Lokio/BufferedSource;
    :cond_18
    move-object/from16 v23, v2

    .line 249
    .end local v2    # "source":Lokio/BufferedSource;
    .restart local v23    # "source":Lokio/BufferedSource;
    :goto_d
    invoke-static {v4}, Lokhttp3/logging/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 250
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v24, v3

    .end local v3    # "headers":Lokhttp3/Headers;
    .local v24, "headers":Lokhttp3/Headers;
    const-string v3, ""

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 251
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    .end local v6    # "contentType":Lokhttp3/MediaType;
    .local v25, "contentType":Lokhttp3/MediaType;
    const-string v6, "<-- END HTTP (binary "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v26, v7

    .end local v7    # "logBody":Z
    .local v26, "logBody":Z
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-byte body omitted)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 252
    return-object v0

    .line 255
    .end local v24    # "headers":Lokhttp3/Headers;
    .end local v25    # "contentType":Lokhttp3/MediaType;
    .end local v26    # "logBody":Z
    .restart local v3    # "headers":Lokhttp3/Headers;
    .restart local v6    # "contentType":Lokhttp3/MediaType;
    .restart local v7    # "logBody":Z
    :cond_19
    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move/from16 v26, v7

    .end local v3    # "headers":Lokhttp3/Headers;
    .end local v6    # "contentType":Lokhttp3/MediaType;
    .end local v7    # "logBody":Z
    .restart local v24    # "headers":Lokhttp3/Headers;
    .restart local v25    # "contentType":Lokhttp3/MediaType;
    .restart local v26    # "logBody":Z
    const-wide/16 v2, 0x0

    cmp-long v6, v13, v2

    if-eqz v6, :cond_1a

    .line 256
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v3, ""

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 257
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v4}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 260
    :cond_1a
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- END HTTP ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-byte body)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 234
    .end local v4    # "buffer":Lokio/Buffer;
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v23    # "source":Lokio/BufferedSource;
    .end local v24    # "headers":Lokhttp3/Headers;
    .end local v25    # "contentType":Lokhttp3/MediaType;
    .end local v26    # "logBody":Z
    .restart local v3    # "headers":Lokhttp3/Headers;
    .restart local v7    # "logBody":Z
    :cond_1b
    move-object/from16 v24, v3

    move/from16 v26, v7

    .line 235
    .end local v3    # "headers":Lokhttp3/Headers;
    .end local v7    # "logBody":Z
    .restart local v24    # "headers":Lokhttp3/Headers;
    .restart local v26    # "logBody":Z
    :goto_e
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 228
    .end local v17    # "bodySize":Ljava/lang/String;
    .end local v24    # "headers":Lokhttp3/Headers;
    .end local v26    # "logBody":Z
    .local v2, "bodySize":Ljava/lang/String;
    .restart local v7    # "logBody":Z
    :cond_1c
    move-object/from16 v17, v2

    move/from16 v26, v7

    .line 264
    .end local v2    # "bodySize":Ljava/lang/String;
    .end local v7    # "logBody":Z
    .restart local v17    # "bodySize":Ljava/lang/String;
    .restart local v26    # "logBody":Z
    :goto_f
    return-object v0

    .line 213
    .end local v0    # "response":Lokhttp3/Response;
    .end local v10    # "tookMs":J
    .end local v12    # "responseBody":Lokhttp3/ResponseBody;
    .end local v13    # "contentLength":J
    .end local v17    # "bodySize":Ljava/lang/String;
    .end local v18    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v19    # "request":Lokhttp3/Request;
    .end local v21    # "startNs":J
    .end local v26    # "logBody":Z
    .local v3, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v4, "request":Lokhttp3/Request;
    .local v5, "startNs":J
    .restart local v7    # "logBody":Z
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-wide/from16 v21, v5

    move/from16 v26, v7

    move-object v2, v0

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "startNs":J
    .end local v7    # "logBody":Z
    .restart local v18    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v19    # "request":Lokhttp3/Request;
    .restart local v21    # "startNs":J
    .restart local v26    # "logBody":Z
    move-object v0, v2

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 215
    throw v0

    return-void
.end method

.method public setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 131
    return-object p0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
