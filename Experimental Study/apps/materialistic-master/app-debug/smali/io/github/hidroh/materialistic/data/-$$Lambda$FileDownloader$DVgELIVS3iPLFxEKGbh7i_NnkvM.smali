.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

.field private final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;->f$0:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;->f$0:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$DVgELIVS3iPLFxEKGbh7i_NnkvM;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/data/FileDownloader;->lambda$downloadFile$0(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Ljava/io/File;)V

    return-void
.end method
