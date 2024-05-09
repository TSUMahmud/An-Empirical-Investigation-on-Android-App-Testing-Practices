.class Lio/github/hidroh/materialistic/WebFragment$5;
.super Ljava/lang/Object;
.source "WebFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/WebFragment;->downloadFileAndRenderPdf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/WebFragment;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 612
    iput-object p1, p0, Lio/github/hidroh/materialistic/WebFragment$5;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 615
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$5;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    invoke-static {v0}, Lio/github/hidroh/materialistic/WebFragment;->access$000(Lio/github/hidroh/materialistic/WebFragment;)V

    .line 616
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$5;->this$0:Lio/github/hidroh/materialistic/WebFragment;

    const-string v1, "file:///android_asset/pdf/index.html"

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/WebFragment;->access$300(Lio/github/hidroh/materialistic/WebFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method
