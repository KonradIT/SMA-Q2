.class public Lcom/MURATA/UdpBroadCastSocket;
.super Ljava/lang/Object;
.source "UdpBroadCastSocket.java"


# static fields
.field private static final PORT:I = 0x2710

.field private static Socket:Ljava/net/DatagramSocket;

.field private static beginTime:J

.field private static currentTime:J

.field private static destAddress:Ljava/net/InetAddress;

.field private static ipAddress:Ljava/net/InetAddress;

.field private static receiveData:[B

.field private static sendData:[B

.field private static udpCallback:Lcom/MURATA/UdpCallBackIf;

.field private static udpSocket:Lcom/MURATA/UdpBroadCastSocket;


# instance fields
.field receiveOkFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v1, p0, Lcom/MURATA/UdpBroadCastSocket;->receiveOkFlag:Z

    .line 71
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    sput-object v1, Lcom/MURATA/UdpBroadCastSocket;->Socket:Ljava/net/DatagramSocket;

    .line 72
    sget-object v1, Lcom/MURATA/UdpBroadCastSocket;->destAddress:Ljava/net/InetAddress;

    const-string v2, "255.255.255.255"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 73
    sget-object v1, Lcom/MURATA/UdpBroadCastSocket;->Socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v1, Lcom/MURATA/UdpBroadCastSocket;->Socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->destAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$100()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->Socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$200()Lcom/MURATA/UdpCallBackIf;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->udpCallback:Lcom/MURATA/UdpCallBackIf;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 20
    sget-wide v0, Lcom/MURATA/UdpBroadCastSocket;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 20
    sput-wide p0, Lcom/MURATA/UdpBroadCastSocket;->currentTime:J

    return-wide p0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 20
    sget-wide v0, Lcom/MURATA/UdpBroadCastSocket;->beginTime:J

    return-wide v0
.end method

.method public static byteArrayToInt([B)I
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 161
    aget-byte v2, p0, v0

    or-int/2addr v1, v2

    .line 162
    shl-int/lit8 v1, v1, 0x8

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return v1
.end method

.method public static createUdp(Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/MURATA/UdpCallBackIf;)Lcom/MURATA/UdpBroadCastSocket;
    .locals 4
    .param p0, "ipAddressStr"    # Ljava/net/InetAddress;
    .param p1, "destAddressStr"    # Ljava/net/InetAddress;
    .param p2, "udpList"    # Lcom/MURATA/UdpCallBackIf;

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/MURATA/UdpBroadCastSocket;->beginTime:J

    .line 57
    sput-object p0, Lcom/MURATA/UdpBroadCastSocket;->ipAddress:Ljava/net/InetAddress;

    .line 58
    sput-object p1, Lcom/MURATA/UdpBroadCastSocket;->destAddress:Ljava/net/InetAddress;

    .line 59
    new-instance v1, Lcom/MURATA/UdpBroadCastSocket;

    invoke-direct {v1}, Lcom/MURATA/UdpBroadCastSocket;-><init>()V

    sput-object v1, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    .line 60
    sget-object v1, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v1, p0}, Lcom/MURATA/UdpBroadCastSocket;->setIpAddr(Ljava/net/InetAddress;)V

    .line 61
    sget-object v1, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v1, p1}, Lcom/MURATA/UdpBroadCastSocket;->setDestAddr(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    sput-object p2, Lcom/MURATA/UdpBroadCastSocket;->udpCallback:Lcom/MURATA/UdpCallBackIf;

    .line 67
    sget-object v1, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/MURATA/UdpBroadCastSocket;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    return-object v0
.end method


# virtual methods
.method declared-synchronized checkTimeout()V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/MURATA/UdpBroadCastSocket$3;

    invoke-direct {v0, p0}, Lcom/MURATA/UdpBroadCastSocket$3;-><init>(Lcom/MURATA/UdpBroadCastSocket;)V

    invoke-virtual {v0}, Lcom/MURATA/UdpBroadCastSocket$3;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeUdpSocket()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/MURATA/UdpBroadCastSocket;->udpSocket:Lcom/MURATA/UdpBroadCastSocket;

    .line 88
    :cond_0
    return-void
.end method

.method public getReceiveData()[B
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->receiveData:[B

    return-object v0
.end method

.method public getSendData()[B
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/MURATA/UdpBroadCastSocket;->sendData:[B

    return-object v0
.end method

.method declared-synchronized receive()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/MURATA/UdpBroadCastSocket$2;

    invoke-direct {v0, p0}, Lcom/MURATA/UdpBroadCastSocket$2;-><init>(Lcom/MURATA/UdpBroadCastSocket;)V

    invoke-virtual {v0}, Lcom/MURATA/UdpBroadCastSocket$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/MURATA/UdpBroadCastSocket$1;

    invoke-direct {v0, p0, p1}, Lcom/MURATA/UdpBroadCastSocket$1;-><init>(Lcom/MURATA/UdpBroadCastSocket;[B)V

    invoke-virtual {v0}, Lcom/MURATA/UdpBroadCastSocket$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDestAddr(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "ipaddr"    # Ljava/net/InetAddress;

    .prologue
    .line 51
    sput-object p1, Lcom/MURATA/UdpBroadCastSocket;->destAddress:Ljava/net/InetAddress;

    .line 52
    return-void
.end method

.method public setIpAddr(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "ipaddr"    # Ljava/net/InetAddress;

    .prologue
    .line 48
    sput-object p1, Lcom/MURATA/UdpBroadCastSocket;->ipAddress:Ljava/net/InetAddress;

    .line 49
    return-void
.end method

.method public setReceiveData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 36
    sput-object p1, Lcom/MURATA/UdpBroadCastSocket;->receiveData:[B

    .line 37
    return-void
.end method

.method public setSendData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 42
    sput-object p1, Lcom/MURATA/UdpBroadCastSocket;->sendData:[B

    .line 43
    return-void
.end method
