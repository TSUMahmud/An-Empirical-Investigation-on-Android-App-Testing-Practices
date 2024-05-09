.class public interface abstract Lio/github/hidroh/materialistic/data/FileDownloader$FileDownloaderCallback;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/FileDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileDownloaderCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
