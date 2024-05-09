.class Lio/github/hidroh/materialistic/data/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/data/FileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/data/FileDownloader;

.field final synthetic val$callback:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

.field final synthetic val$outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/FileDownloader;Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/FileDownloader;

    .line 45
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->this$0:Lio/github/hidroh/materialistic/data/FileDownloader;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->val$callback:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->val$outputFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFailure$0(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p0, "callback"    # Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 48
    invoke-interface {p0, p1, p2}, Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic lambda$onResponse$1(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V
    .locals 1
    .param p0, "callback"    # Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->this$0:Lio/github/hidroh/materialistic/data/FileDownloader;

    iget-object v0, v0, Lio/github/hidroh/materialistic/data/FileDownloader;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->val$callback:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;

    invoke-direct {v2, v1, p1, p2}, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;-><init>(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Lokhttp3/Call;Ljava/io/IOException;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 54
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->val$outputFile:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 55
    .local v0, "sink":Lokio/BufferedSink;
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 56
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 57
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->this$0:Lio/github/hidroh/materialistic/data/FileDownloader;

    iget-object v1, v1, Lio/github/hidroh/materialistic/data/FileDownloader;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->val$callback:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/FileDownloader$1;->val$outputFile:Ljava/io/File;

    new-instance v4, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$X2AUVJEet_iIKgJF-o3327V3ddY;

    invoke-direct {v4, v2, v3}, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$X2AUVJEet_iIKgJF-o3327V3ddY;-><init>(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    .end local v0    # "sink":Lokio/BufferedSink;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v0}, Lio/github/hidroh/materialistic/data/FileDownloader$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
