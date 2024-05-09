.class public Lio/github/hidroh/materialistic/data/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;
    }
.end annotation


# instance fields
.field private final mCacheDir:Ljava/lang/String;

.field private mCallFactory:Lokhttp3/Call$Factory;

.field final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/Call$Factory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FileDownloader;->mCacheDir:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FileDownloader;->mCallFactory:Lokhttp3/Call$Factory;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FileDownloader;->mMainHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic lambda$downloadFile$0(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V
    .locals 1
    .param p0, "callback"    # Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FileDownloader;->mCacheDir:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FileDownloader;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;

    invoke-direct {v2, p3, v0}, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;-><init>(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void

    .line 41
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Content-Type"

    .line 42
    invoke-virtual {v1, v2, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 45
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/FileDownloader;->mCallFactory:Lokhttp3/Call$Factory;

    invoke-interface {v2, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/data/FileDownloader$1;

    invoke-direct {v3, p0, p3, v0}, Lio/github/hidroh/materialistic/data/FileDownloader$1;-><init>(Lio/github/hidroh/materialistic/data/FileDownloader;Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 63
    return-void
.end method
