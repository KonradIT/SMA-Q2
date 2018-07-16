.class public Lyhq/jad/easysdk/UdpSocket;
.super Ljava/lang/Object;
.source "UdpSocket.java"


# instance fields
.field udp_Socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 128
    return-void
.end method

.method public Connect(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 33
    const/4 v2, 0x1

    .line 36
    .local v2, "temp":Z
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 38
    .local v1, "socketadd":Ljava/net/SocketAddress;
    iget-object v3, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "socketadd":Ljava/net/SocketAddress;
    :goto_0
    return v2

    .line 39
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Read()[B
    .locals 7

    .prologue
    const/16 v4, 0x4b0

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "data":[B
    new-instance v2, Ljava/net/DatagramPacket;

    new-array v3, v4, [B

    invoke-direct {v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 111
    .local v2, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v3, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 112
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    new-array v0, v3, [B

    .line 115
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 116
    array-length v6, v0

    .line 115
    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Send([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 65
    const/4 v2, 0x1

    .line 66
    .local v2, "temp":Z
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v3, p1

    invoke-direct {v1, p1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 69
    .local v1, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v3, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Send([BI)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 79
    const/4 v2, 0x1

    .line 80
    .local v2, "temp":Z
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 84
    .local v1, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v3, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return v2

    .line 85
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Send([BLjava/lang/String;I)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 48
    const/4 v2, 0x1

    .line 49
    .local v2, "temp":Z
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v3, p1

    invoke-direct {v1, p1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 52
    .local v1, "packet":Ljava/net/DatagramPacket;
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 53
    invoke-virtual {v1, p3}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 54
    iget-object v3, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTimeout(I)Z
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 97
    .local v0, "boo":Z
    :try_start_0
    iget-object v1, p0, Lyhq/jad/easysdk/UdpSocket;->udp_Socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method
