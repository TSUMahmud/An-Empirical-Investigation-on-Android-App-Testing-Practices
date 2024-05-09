.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

.field private final synthetic f$1:Lokhttp3/Call;

.field private final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;->f$0:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;->f$1:Lokhttp3/Call;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;->f$0:Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;->f$1:Lokhttp3/Call;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$FileDownloader$1$FSSIMy-9c_ZbMXgcgsnloJk-j2g;->f$2:Ljava/io/IOException;

    invoke-static {v0, v1, v2}, Lio/github/hidroh/materialistic/data/FileDownloader$1;->lambda$onFailure$0(Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method
