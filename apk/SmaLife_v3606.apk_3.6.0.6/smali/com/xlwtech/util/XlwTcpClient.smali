.class public Lcom/xlwtech/util/XlwTcpClient;
.super Ljava/lang/Thread;
.source "XlwTcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;
    }
.end annotation


# instance fields
.field public m_aliveTick:J

.field private m_bRunning:Ljava/lang/Boolean;

.field private m_listener:Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;

.field public m_mac:Ljava/lang/String;

.field private m_peerHost:Ljava/lang/String;

.field private m_peerPort:I

.field public m_requestBuffer:[B

.field public m_requestLength:I

.field public m_requestTick:J

.field private m_socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_listener:Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_bRunning:Ljava/lang/Boolean;

    .line 24
    iput-object v1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    .line 27
    const-string v0, "192.168.2.3"

    iput-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    .line 28
    const/16 v0, 0x1388

    iput v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerPort:I

    .line 30
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestBuffer:[B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    .line 32
    iput-wide v2, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestTick:J

    .line 34
    iput-wide v2, p0, Lcom/xlwtech/util/XlwTcpClient;->m_aliveTick:J

    .line 13
    return-void
.end method

.method private SocketConnect()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    iget v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerPort:I

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    .line 57
    :cond_2
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    iget v6, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 61
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    goto :goto_0
.end method

.method private SocketRecv([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private SocketSend(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    .local v1, "iLength":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 109
    .local v0, "content":[B
    invoke-direct {p0, v0, v1}, Lcom/xlwtech/util/XlwTcpClient;->SocketSend([BI)Z

    move-result v2

    return v2
.end method

.method private SocketSend([BI)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketIsConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketConnect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return v1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    iget-object v2, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    goto :goto_0
.end method


# virtual methods
.method public SetPeer(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerPort:I

    if-ne v0, p3, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerPort:I

    .line 41
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    goto :goto_0
.end method

.method public SetRunning(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_bRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public SetXlwTcpClientListener(Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_listener:Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;

    return-void
.end method

.method public SocketClose()V
    .locals 1

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SocketIsConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xlwtech/util/XlwTcpClient;->m_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 125
    const/16 v3, 0x800

    new-array v0, v3, [B

    .line 126
    .local v0, "bufferRecv":[B
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_bRunning:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    .line 167
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketIsConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    invoke-direct {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketConnect()Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v3, "xlw"

    const-string v4, "connect success %s:%d...wait data len=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerHost:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, p0, Lcom/xlwtech/util/XlwTcpClient;->m_peerPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    iget v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    if-eqz v3, :cond_4

    .line 140
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestBuffer:[B

    iget v4, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    invoke-direct {p0, v3, v4}, Lcom/xlwtech/util/XlwTcpClient;->SocketSend([BI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    iput v8, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestLength:I

    .line 143
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xlwtech/util/XlwTcpClient;->m_requestTick:J

    .line 152
    :cond_4
    invoke-direct {p0, v0}, Lcom/xlwtech/util/XlwTcpClient;->SocketRecv([B)I

    move-result v1

    .line 153
    .local v1, "iRet":I
    if-gez v1, :cond_5

    invoke-virtual {p0}, Lcom/xlwtech/util/XlwTcpClient;->SocketClose()V

    goto :goto_0

    .line 154
    :cond_5
    if-eqz v1, :cond_0

    .line 158
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v8, v1}, Ljava/lang/String;-><init>([BII)V

    .line 159
    .local v2, "tmp":Ljava/lang/String;
    const-string v3, "xcmd_notify::event=null,\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_listener:Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xlwtech/util/XlwTcpClient;->m_listener:Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;

    iget-object v4, p0, Lcom/xlwtech/util/XlwTcpClient;->m_mac:Ljava/lang/String;

    invoke-interface {v3, v4, v0, v1}, Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;->onReceive(Ljava/lang/String;[BI)V

    goto :goto_0
.end method
