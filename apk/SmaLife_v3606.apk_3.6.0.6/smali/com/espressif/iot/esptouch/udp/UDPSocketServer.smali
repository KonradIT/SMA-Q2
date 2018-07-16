.class public Lcom/espressif/iot/esptouch/udp/UDPSocketServer;
.super Ljava/lang/Object;
.source "UDPSocketServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UDPSocketServer"


# instance fields
.field private final buffer:[B

.field private mContext:Landroid/content/Context;

.field private volatile mIsClosed:Z

.field private mLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mReceivePacket:Ljava/net/DatagramPacket;

.field private mServerSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "socketTimeout"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x40

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p3, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mContext:Landroid/content/Context;

    .line 51
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->buffer:[B

    .line 52
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->buffer:[B

    invoke-direct {v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    .line 54
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mServerSocket:Ljava/net/DatagramSocket;

    .line 55
    iget-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mServerSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mIsClosed:Z

    .line 57
    iget-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 59
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    const-string v2, "test wifi"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    iput-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 60
    const-string v2, "UDPSocketServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerSocket is created, socket read timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "manager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UDPSocketServer"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized acquireLock()V
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseLock()V
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 139
    const-string v0, "UDPSocketServer"

    const-string v1, "mServerSocket is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mServerSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 141
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->releaseLock()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 138
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
    .line 148
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->close()V

    .line 149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "UDPSocketServer"

    const-string v1, "USPSocketServer is interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->close()V

    .line 135
    return-void
.end method

.method public receiveOneByte()B
    .locals 5

    .prologue
    .line 91
    const-string v1, "UDPSocketServer"

    const-string v2, "receiveOneByte() entrance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->acquireLock()V

    .line 94
    iget-object v1, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mServerSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 95
    const-string v1, "UDPSocketServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    const/16 v1, -0x80

    goto :goto_0
.end method

.method public receiveSpecLenBytes(I)[B
    .locals 7
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 110
    const-string v4, "UDPSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveSpecLenBytes() entrance: len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->acquireLock()V

    .line 113
    iget-object v4, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mServerSocket:Ljava/net/DatagramSocket;

    iget-object v5, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 114
    iget-object v4, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    iget-object v5, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mReceivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 115
    .local v2, "recDatas":[B
    const-string v4, "UDPSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 117
    const-string v4, "UDPSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recDatas["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const-string v4, "UDPSocketServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receiveSpecLenBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    array-length v4, v2

    if-eq v4, p1, :cond_1

    .line 121
    const-string v4, "UDPSocketServer"

    const-string v5, "received len is different from specific len, return null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 129
    .end local v1    # "i":I
    .end local v2    # "recDatas":[B
    :cond_1
    :goto_1
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 129
    goto :goto_1
.end method

.method public setSoTimeout(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->mServerSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v1, 0x1

    .line 82
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method
