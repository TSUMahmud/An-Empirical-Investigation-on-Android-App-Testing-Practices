.class Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;
.super Ljava/lang/Object;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/WebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PdfAndroidJavascriptBridge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;
    }
.end annotation


# instance fields
.field private mCallback:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

.field private mFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mFile:Ljava/io/File;

    .line 670
    iput-object p2, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mCallback:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

    .line 671
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mHandler:Landroid/os/Handler;

    .line 672
    return-void
.end method

.method public static synthetic lambda$onFailure$1(Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;)V
    .locals 1

    .line 710
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mCallback:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;->onFailure()V

    return-void
.end method

.method public static synthetic lambda$onLoad$0(Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mCallback:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;->onLoad()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .line 716
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_0
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 727
    :try_start_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 730
    nop

    .line 731
    return-void

    .line 729
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 730
    throw v0
.end method

.method public getChunk(JJ)Ljava/lang/String;
    .locals 3
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 677
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mFile:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 680
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 681
    sub-long v0, p3, p1

    long-to-int v1, v0

    .line 682
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 683
    .local v0, "data":[B
    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 684
    iget-object v2, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 685
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 687
    .end local v0    # "data":[B
    .end local v1    # "bufferSize":I
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v1, ""

    return-object v1
.end method

.method public getSize()J
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 697
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public onFailure()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 709
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mCallback:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$PdfAndroidJavascriptBridge$Bmz4_BTAkdNzXmPXalh62IuDiyI;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$PdfAndroidJavascriptBridge$Bmz4_BTAkdNzXmPXalh62IuDiyI;-><init>(Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 702
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mCallback:Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge$Callbacks;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$PdfAndroidJavascriptBridge$BbsP9N2BVTNqwIU-iM4BtrMrMRs;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$WebFragment$PdfAndroidJavascriptBridge$BbsP9N2BVTNqwIU-iM4BtrMrMRs;-><init>(Lio/github/hidroh/materialistic/WebFragment$PdfAndroidJavascriptBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    :cond_0
    return-void
.end method
