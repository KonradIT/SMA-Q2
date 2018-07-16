.class public Lcom/espressif/iot/esptouch/udp/UDPSocketClient;
.super Ljava/lang/Object;
.source "UDPSocketClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UDPSocketClient"


# instance fields
.field private volatile mIsClosed:Z

.field private volatile mIsStop:Z

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mSocket:Ljava/net/DatagramSocket;

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsStop:Z

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsClosed:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "UDPSocketClient"

    const-string v2, "SocketException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->close()V

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    return-void
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "UDPSocketClient"

    const-string v1, "USPSocketClient is interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsStop:Z

    .line 51
    return-void
.end method

.method public sendData([[BIILjava/lang/String;IJ)V
    .locals 8
    .param p1, "data"    # [[B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "targetHostName"    # Ljava/lang/String;
    .param p5, "targetPort"    # I
    .param p6, "interval"    # J

    .prologue
    const/4 v6, 0x1

    .line 99
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_2

    .line 101
    :cond_0
    const-string v3, "UDPSocketClient"

    const-string v4, "sendData(): data == null or length <= 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    move v1, p2

    .local v1, "i":I
    :goto_1
    iget-boolean v3, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsStop:Z

    if-nez v3, :cond_4

    add-int v3, p2, p3

    if-ge v1, v3, :cond_4

    .line 106
    aget-object v3, p1, v1

    array-length v3, v3

    if-nez v3, :cond_3

    .line 105
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_3
    :try_start_0
    new-instance v2, Ljava/net/DatagramPacket;

    aget-object v3, p1, v1

    aget-object v4, p1, v1

    array-length v4, v4

    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 114
    .local v2, "localDatagramPacket":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    .end local v2    # "localDatagramPacket":Ljava/net/DatagramPacket;
    :goto_3
    :try_start_1
    invoke-static {p6, p7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 134
    const-string v3, "UDPSocketClient"

    const-string v4, "sendData is Interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v6, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsStop:Z

    .line 140
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_4
    iget-boolean v3, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsStop:Z

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->close()V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "UDPSocketClient"

    const-string v4, "sendData(): UnknownHostException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 120
    iput-boolean v6, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->mIsStop:Z

    goto :goto_4

    .line 122
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "UDPSocketClient"

    const-string v4, "sendData(): IOException, but just ignore it"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public sendData([[BLjava/lang/String;IJ)V
    .locals 8
    .param p1, "data"    # [[B
    .param p2, "targetHostName"    # Ljava/lang/String;
    .param p3, "targetPort"    # I
    .param p4, "interval"    # J

    .prologue
    .line 77
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->sendData([[BIILjava/lang/String;IJ)V

    .line 78
    return-void
.end method
