.class public Lcom/xlwtech/util/UdpConnector;
.super Ljava/lang/Object;
.source "UdpConnector.java"


# static fields
.field public static wanThreadFlag:Z


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private currentPlayThread:Ljava/lang/Thread;

.field private host:Ljava/lang/String;

.field private port:I

.field private receiveBuffer:[B

.field private receivePacket:Ljava/net/DatagramPacket;

.field private tag:Ljava/lang/String;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xlwtech/util/UdpConnector;->wanThreadFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/16 v3, 0x400

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->receiveBuffer:[B

    .line 23
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/xlwtech/util/UdpConnector;->receiveBuffer:[B

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->receivePacket:Ljava/net/DatagramPacket;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->currentPlayThread:Ljava/lang/Thread;

    .line 28
    const-string v1, "UdpConnector"

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->tag:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xlwtech/util/UdpConnector;->host:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/xlwtech/util/UdpConnector;->port:I

    .line 34
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->address:Ljava/net/InetSocketAddress;

    .line 36
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    .line 40
    iget-object v1, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    const/16 v3, 0x400

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->receiveBuffer:[B

    .line 23
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/xlwtech/util/UdpConnector;->receiveBuffer:[B

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->receivePacket:Ljava/net/DatagramPacket;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->currentPlayThread:Ljava/lang/Thread;

    .line 28
    const-string v1, "UdpConnector"

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->tag:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/xlwtech/util/UdpConnector;->address:Ljava/net/InetSocketAddress;

    .line 48
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->host:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Lcom/xlwtech/util/UdpConnector;->port:I

    .line 51
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    .line 55
    iget-object v1, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xlwtech/util/UdpConnector;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xlwtech/util/UdpConnector;)Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->receivePacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xlwtech/util/UdpConnector;)[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->receiveBuffer:[B

    return-object v0
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/xlwtech/util/UdpConnector;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/xlwtech/util/UdpConnector;->port:I

    return v0
.end method

.method public getUdpSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public declared-synchronized reconnectAndSend([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xlwtech/util/UdpConnector;->connect()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/xlwtech/util/UdpConnector;->sendBroadCasetBuffer([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendBroadCasetBuffer([B)V
    .locals 3
    .param p1, "sendBuffer"    # [B

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/xlwtech/util/UdpConnector;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    invoke-direct {v1, p1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 83
    .local v1, "sendPacket":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v2, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "sendPacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v1    # "sendPacket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xlwtech/util/UdpConnector;->host:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/xlwtech/util/UdpConnector;->port:I

    .line 170
    return-void
.end method

.method public setUdpSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "udp"    # Ljava/net/DatagramSocket;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/xlwtech/util/UdpConnector;->udpSocket:Ljava/net/DatagramSocket;

    .line 178
    return-void
.end method

.method public wanReceiver()V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/xlwtech/util/UdpConnector;->wanThreadFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xlwtech/util/UdpConnector;->wanThreadFlag:Z

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xlwtech/util/UdpConnector$1;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/UdpConnector$1;-><init>(Lcom/xlwtech/util/UdpConnector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xlwtech/util/UdpConnector;->currentPlayThread:Ljava/lang/Thread;

    .line 128
    iget-object v0, p0, Lcom/xlwtech/util/UdpConnector;->currentPlayThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    :cond_0
    return-void
.end method
