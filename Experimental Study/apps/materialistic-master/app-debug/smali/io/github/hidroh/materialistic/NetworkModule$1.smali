.class Lio/github/hidroh/materialistic/NetworkModule$1;
.super Ljavax/net/SocketFactory;
.source "NetworkModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/NetworkModule;->provideCallFactory(Landroid/content/Context;)Lokhttp3/Call$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDefaultFactory:Ljavax/net/SocketFactory;

.field final synthetic this$0:Lio/github/hidroh/materialistic/NetworkModule;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/NetworkModule;)V
    .locals 1
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/NetworkModule;

    .line 61
    iput-object p1, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->this$0:Lio/github/hidroh/materialistic/NetworkModule;

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 62
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->mDefaultFactory:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->mDefaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 67
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 68
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->mDefaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 74
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 75
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->mDefaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 81
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 82
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->mDefaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 88
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 89
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/github/hidroh/materialistic/NetworkModule$1;->mDefaultFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 95
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 96
    return-object v0
.end method
