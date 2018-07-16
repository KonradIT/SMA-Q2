.class public Lcom/xlwtech/util/XlwUdp;
.super Ljava/lang/Thread;
.source "XlwUdp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwUdp$XlwUdpListener;
    }
.end annotation


# instance fields
.field private m_bRunning:Ljava/lang/Boolean;

.field private m_listener:Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

.field private m_localPort:I

.field private m_socketUdp:Ljava/net/DatagramSocket;

.field private m_tempStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_listener:Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

    .line 25
    iput-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_bRunning:Ljava/lang/Boolean;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwUdp;->m_localPort:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_tempStr:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private BindPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/xlwtech/util/XlwUdp;->m_localPort:I

    invoke-direct {p0}, Lcom/xlwtech/util/XlwUdp;->SocketClose()V

    return-void
.end method

.method private SocketClose()V
    .locals 1

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SocketOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 37
    :cond_0
    iget v2, p0, Lcom/xlwtech/util/XlwUdp;->m_localPort:I

    if-nez v2, :cond_1

    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 45
    :goto_1
    return v1

    .line 38
    :cond_1
    new-instance v2, Ljava/net/DatagramSocket;

    iget v3, p0, Lcom/xlwtech/util/XlwUdp;->m_localPort:I

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v2, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/xlwtech/util/XlwUdp;->SocketClose()V

    .line 45
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public SetRunning(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xlwtech/util/XlwUdp;->m_bRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public SetXlwUdpListener(Lcom/xlwtech/util/XlwUdp$XlwUdpListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xlwtech/util/XlwUdp;->m_listener:Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

    return-void
.end method

.method public SocketSend(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .param p3, "cmd"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xlwtech/util/XlwUdp;->SocketSend(Ljava/lang/String;I[BI)Z

    move-result v0

    return v0
.end method

.method public SocketSend(Ljava/lang/String;I[BI)Z
    .locals 4
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I
    .param p3, "data"    # [B
    .param p4, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/xlwtech/util/XlwUdp;->SocketOpen()Z

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    if-nez v3, :cond_1

    .line 72
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 64
    .local v1, "peerAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p3, p4, v1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 66
    .local v0, "aPacket":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "aPacket":Ljava/net/DatagramPacket;
    .end local v1    # "peerAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0x800

    .line 81
    new-array v0, v5, [B

    .line 82
    .local v0, "bufferRecv":[B
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 86
    .local v2, "packet":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/xlwtech/util/XlwUdp;->m_bRunning:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/xlwtech/util/XlwUdp;->SocketClose()V

    .line 108
    return-void

    .line 88
    :cond_1
    iget-object v5, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xlwtech/util/XlwUdp;->m_listener:Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

    if-nez v5, :cond_3

    .line 90
    :cond_2
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 95
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/xlwtech/util/XlwUdp;->m_socketUdp:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 96
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "peerHost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    .line 99
    .local v4, "peerPort":I
    iget-object v5, p0, Lcom/xlwtech/util/XlwUdp;->m_listener:Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/xlwtech/util/XlwUdp;->m_listener:Lcom/xlwtech/util/XlwUdp$XlwUdpListener;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-interface {v5, v3, v4, v0, v6}, Lcom/xlwtech/util/XlwUdp$XlwUdpListener;->onReceive(Ljava/lang/String;I[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v3    # "peerHost":Ljava/lang/String;
    .end local v4    # "peerPort":I
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/xlwtech/util/XlwUdp;->SocketClose()V

    .line 104
    invoke-direct {p0}, Lcom/xlwtech/util/XlwUdp;->SocketOpen()Z

    goto :goto_0
.end method
