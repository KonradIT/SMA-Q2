.class public Lcom/MURATA/UdpSocket;
.super Ljava/lang/Object;
.source "UdpSocket.java"


# static fields
.field private static final PORT:I = 0x4e20

.field private static Socket:Ljava/net/DatagramSocket;

.field private static destAddress:Ljava/net/InetAddress;

.field private static ipAddress:Ljava/net/InetAddress;

.field private static receiveData:[B

.field private static sendData:[B

.field private static udpCallback:Lcom/MURATA/UdpCallBackIf;

.field private static udpSocket:Lcom/MURATA/UdpSocket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    sput-object v1, Lcom/MURATA/UdpSocket;->Socket:Ljava/net/DatagramSocket;

    .line 67
    sget-object v1, Lcom/MURATA/UdpSocket;->destAddress:Ljava/net/InetAddress;

    const-string v2, "255.255.255.255"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 68
    sget-object v1, Lcom/MURATA/UdpSocket;->Socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v1, Lcom/MURATA/UdpSocket;->Socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/MURATA/UdpSocket;->destAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$100()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/MURATA/UdpSocket;->Socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$200()Lcom/MURATA/UdpCallBackIf;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/MURATA/UdpSocket;->udpCallback:Lcom/MURATA/UdpCallBackIf;

    return-object v0
.end method

.method public static byteArrayToInt([B)I
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 129
    aget-byte v2, p0, v0

    or-int/2addr v1, v2

    .line 130
    shl-int/lit8 v1, v1, 0x8

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return v1
.end method

.method public static createUdp(Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/MURATA/UdpCallBackIf;)Lcom/MURATA/UdpSocket;
    .locals 2
    .param p0, "ipAddressStr"    # Ljava/net/InetAddress;
    .param p1, "destAddressStr"    # Ljava/net/InetAddress;
    .param p2, "udpList"    # Lcom/MURATA/UdpCallBackIf;

    .prologue
    .line 52
    :try_start_0
    sput-object p0, Lcom/MURATA/UdpSocket;->ipAddress:Ljava/net/InetAddress;

    .line 53
    sput-object p1, Lcom/MURATA/UdpSocket;->destAddress:Ljava/net/InetAddress;

    .line 54
    new-instance v1, Lcom/MURATA/UdpSocket;

    invoke-direct {v1}, Lcom/MURATA/UdpSocket;-><init>()V

    sput-object v1, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    .line 55
    sget-object v1, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    invoke-virtual {v1, p0}, Lcom/MURATA/UdpSocket;->setIpAddr(Ljava/net/InetAddress;)V

    .line 56
    sget-object v1, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    invoke-virtual {v1, p1}, Lcom/MURATA/UdpSocket;->setDestAddr(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    sput-object p2, Lcom/MURATA/UdpSocket;->udpCallback:Lcom/MURATA/UdpCallBackIf;

    .line 62
    sget-object v1, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/MURATA/UdpSocket;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    return-object v0
.end method


# virtual methods
.method public closeUdpSocket()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/MURATA/UdpSocket;->Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/MURATA/UdpSocket;->udpSocket:Lcom/MURATA/UdpSocket;

    .line 83
    :cond_0
    return-void
.end method

.method public getReceiveData()[B
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/MURATA/UdpSocket;->receiveData:[B

    return-object v0
.end method

.method public getSendData()[B
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/MURATA/UdpSocket;->sendData:[B

    return-object v0
.end method

.method declared-synchronized receive()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/MURATA/UdpSocket$2;

    invoke-direct {v0, p0}, Lcom/MURATA/UdpSocket$2;-><init>(Lcom/MURATA/UdpSocket;)V

    invoke-virtual {v0}, Lcom/MURATA/UdpSocket$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/MURATA/UdpSocket$1;

    invoke-direct {v0, p0, p1}, Lcom/MURATA/UdpSocket$1;-><init>(Lcom/MURATA/UdpSocket;[B)V

    invoke-virtual {v0}, Lcom/MURATA/UdpSocket$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDestAddr(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "ipaddr"    # Ljava/net/InetAddress;

    .prologue
    .line 47
    sput-object p1, Lcom/MURATA/UdpSocket;->destAddress:Ljava/net/InetAddress;

    .line 48
    return-void
.end method

.method public setIpAddr(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "ipaddr"    # Ljava/net/InetAddress;

    .prologue
    .line 44
    sput-object p1, Lcom/MURATA/UdpSocket;->ipAddress:Ljava/net/InetAddress;

    .line 45
    return-void
.end method

.method public setReceiveData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 32
    sput-object p1, Lcom/MURATA/UdpSocket;->receiveData:[B

    .line 33
    return-void
.end method

.method public setSendData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 38
    sput-object p1, Lcom/MURATA/UdpSocket;->sendData:[B

    .line 39
    return-void
.end method
