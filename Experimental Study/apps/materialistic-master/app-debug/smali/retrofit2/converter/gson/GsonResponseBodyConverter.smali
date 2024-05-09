.class final Lretrofit2/converter/gson/GsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lokhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lretrofit2/converter/gson/GsonResponseBodyConverter;, "Lretrofit2/converter/gson/GsonResponseBodyConverter<TT;>;"
    .local p2, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 31
    iput-object p2, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    .local p0, "this":Lretrofit2/converter/gson/GsonResponseBodyConverter;, "Lretrofit2/converter/gson/GsonResponseBodyConverter<TT;>;"
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/converter/gson/GsonResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    .local p0, "this":Lretrofit2/converter/gson/GsonResponseBodyConverter;, "Lretrofit2/converter/gson/GsonResponseBodyConverter<TT;>;"
    iget-object v0, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v0

    .line 37
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    :try_start_0
    iget-object v1, p0, Lretrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 37
    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw v1
.end method
