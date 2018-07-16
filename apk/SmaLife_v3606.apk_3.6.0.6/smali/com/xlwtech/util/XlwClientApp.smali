.class public Lcom/xlwtech/util/XlwClientApp;
.super Ljava/lang/Thread;
.source "XlwClientApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;,
        Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;,
        Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/xlwtech/util/XlwClientApp;


# instance fields
.field private m_bRunning:Ljava/lang/Boolean;

.field private m_cmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;",
            ">;"
        }
    .end annotation
.end field

.field private m_devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;",
            ">;"
        }
    .end annotation
.end field

.field private m_interval:I

.field private m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

.field public m_sendTimerout:I

.field public m_server:Ljava/lang/String;

.field private m_sn:I

.field private m_socket:Ljava/net/DatagramSocket;

.field private myTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/xlwtech/util/XlwClientApp;->instance:Lcom/xlwtech/util/XlwClientApp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_bRunning:Ljava/lang/Boolean;

    .line 56
    iput-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_socket:Ljava/net/DatagramSocket;

    .line 57
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_interval:I

    .line 58
    const-string v0, "appsrv.xlwtech.com"

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_server:Ljava/lang/String;

    .line 59
    const/16 v0, 0x2710

    iput v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_sendTimerout:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    .line 26
    invoke-direct {p0}, Lcom/xlwtech/util/XlwClientApp;->MySetTimer()V

    return-void
.end method

.method private DeviceAdd(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;-><init>(Lcom/xlwtech/util/XlwClientApp;Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;)V

    .line 254
    .local v0, "dev":Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;
    iput-object p1, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;->mac:Ljava/lang/String;

    .line 255
    const/4 v1, 0x0

    iput v1, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;->snRecv:I

    .line 256
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private DeviceGet(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 249
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 247
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;

    iget-object v1, v1, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;->mac:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DoServerResponse([BI)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x18

    const/4 v12, 0x0

    .line 203
    aget-byte v0, p1, v12

    and-int/lit16 v8, v0, 0xff

    .line 204
    .local v8, "iMsg":I
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v9, v0, 0xff

    .line 205
    .local v9, "iSn":I
    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/xlwtech/util/XlwString;->Bin2HexStr([BII)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, "mac":Ljava/lang/String;
    const/16 v0, 0x400

    new-array v6, v0, [B

    .line 211
    .local v6, "buffer":[B
    if-ne v8, v3, :cond_3

    .line 213
    const/16 v0, 0x19

    aput-byte v0, p1, v12

    .line 214
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Lcom/xlwtech/util/XlwClientApp;->m_server:Ljava/lang/String;

    const/16 v5, 0x6590

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/xlwtech/util/XlwClientApp;->SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z

    .line 215
    invoke-direct {p0, v11}, Lcom/xlwtech/util/XlwClientApp;->DeviceGet(Ljava/lang/String;)I

    move-result v10

    .line 216
    .local v10, "index":I
    if-gez v10, :cond_0

    invoke-direct {p0, v11}, Lcom/xlwtech/util/XlwClientApp;->DeviceAdd(Ljava/lang/String;)I

    move-result v10

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;

    iget v0, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;->snRecv:I

    if-ne v0, v9, :cond_2

    .line 239
    .end local v10    # "index":I
    :cond_1
    return-void

    .line 218
    .restart local v10    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;

    iput v9, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;->snRecv:I

    .line 220
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    if-eqz v0, :cond_3

    .line 222
    add-int/lit8 v0, p2, -0x18

    invoke-static {p1, v3, v6, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    add-int/lit8 v1, p2, -0x18

    invoke-interface {v0, v11, v6, v1}, Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;->onReceive(Ljava/lang/String;[BI)V

    .line 227
    .end local v10    # "index":I
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget-object v0, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->mac:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget v0, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->sn:I

    if-ne v0, v9, :cond_5

    .line 231
    const/16 v0, 0x1a

    if-ne v8, v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    const/16 v1, -0xb

    invoke-interface {v0, v11, v9, v1}, Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;->onSendError(Ljava/lang/String;II)V

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    add-int/lit8 v7, v7, -0x1

    .line 227
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private MySetTimer()V
    .locals 6

    .prologue
    .line 270
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->myTimer:Ljava/util/Timer;

    .line 271
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->myTimer:Ljava/util/Timer;

    new-instance v1, Lcom/xlwtech/util/XlwClientApp$1;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwClientApp$1;-><init>(Lcom/xlwtech/util/XlwClientApp;)V

    .line 287
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    .line 271
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 288
    return-void
.end method

.method private SocketUdpInit()Ljava/net/DatagramSocket;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 106
    .local v0, "aSocket":Ljava/net/DatagramSocket;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "aSocket":Ljava/net/DatagramSocket;
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SocketUdpSend(Ljava/net/DatagramSocket;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xlwtech/util/XlwClientApp;->SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z
    .locals 4
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    const/4 v2, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return v2

    .line 129
    :cond_0
    :try_start_0
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 130
    .local v1, "peerAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p2, p3, v1, p5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 131
    .local v0, "aPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v2, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "aPacket":Ljava/net/DatagramPacket;
    .end local v1    # "peerAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private SocketUpdClose(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwClientApp;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xlwtech/util/XlwClientApp;)Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwClientApp;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xlwtech/util/XlwClientApp;->instance:Lcom/xlwtech/util/XlwClientApp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xlwtech/util/XlwClientApp;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwClientApp;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwClientApp;->instance:Lcom/xlwtech/util/XlwClientApp;

    .line 29
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwClientApp;->instance:Lcom/xlwtech/util/XlwClientApp;

    return-object v0
.end method


# virtual methods
.method public DoInit()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    .line 66
    return-void
.end method

.method public DoSend(Ljava/lang/String;[BI)I
    .locals 9
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v2, -0x2

    .line 97
    :goto_0
    return v2

    .line 73
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 80
    iget v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    .line 81
    iget v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2

    iput v8, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    .line 83
    :cond_2
    new-instance v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    invoke-direct {v0, p0}, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;-><init>(Lcom/xlwtech/util/XlwClientApp;)V

    .line 84
    .local v0, "cmd":Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;
    iput-object p1, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->mac:Ljava/lang/String;

    .line 85
    iget v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    iput v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->sn:I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->tickReq:J

    .line 87
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->tickSnd:J

    .line 89
    iget-object v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    const/16 v3, 0x14

    aput-byte v3, v2, v7

    .line 90
    iget-object v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    iget v3, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    .line 91
    iget-object v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    invoke-static {p1, v2, v4}, Lcom/xlwtech/util/XlwString;->HexString2Bytes(Ljava/lang/String;[BI)V

    .line 92
    iget-object v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    const/16 v3, 0x18

    invoke-static {p2, v7, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int/lit8 v2, p3, 0x18

    iput v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req_len:I

    .line 95
    const-string v2, "xlw"

    const-string v3, "req len=%d, data=%s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req_len:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    iget v6, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req_len:I

    invoke-static {v5, v7, v6}, Lcom/xlwtech/util/XlwString;->Bin2HexStr([BII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_sn:I

    goto :goto_0

    .line 75
    .end local v0    # "cmd":Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;
    :cond_3
    iget-object v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget-object v2, v2, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->mac:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto/16 :goto_0

    .line 73
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public SetAppClientListener(Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientApp;->m_listener:Lcom/xlwtech/util/XlwClientApp$XlwClientAppListener;

    return-void
.end method

.method public SetRunning(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientApp;->m_bRunning:Ljava/lang/Boolean;

    return-void
.end method

.method public SocketUdpRecv(Ljava/net/DatagramSocket;[B)I
    .locals 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return v1

    .line 151
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p2

    invoke-direct {v0, p2, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 152
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 153
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 155
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 168
    const/16 v0, 0x400

    new-array v6, v0, [B

    .line 169
    .local v6, "buff_recv":[B
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    .local v7, "host":Ljava/lang/StringBuffer;
    const-wide/16 v12, 0x0

    .line 172
    .local v12, "iTickSend":J
    invoke-direct {p0}, Lcom/xlwtech/util/XlwClientApp;->SocketUdpInit()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_socket:Ljava/net/DatagramSocket;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_bRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_socket:Ljava/net/DatagramSocket;

    invoke-direct {p0, v0}, Lcom/xlwtech/util/XlwClientApp;->SocketUpdClose(Ljava/net/DatagramSocket;)V

    .line 198
    return-void

    .line 176
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 177
    .local v10, "iTickNow":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_socket:Ljava/net/DatagramSocket;

    invoke-virtual {p0, v0, v6}, Lcom/xlwtech/util/XlwClientApp;->SocketUdpRecv(Ljava/net/DatagramSocket;[B)I

    move-result v9

    .line 188
    .local v9, "iLen":I
    if-gtz v9, :cond_3

    .line 190
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 179
    .end local v9    # "iLen":I
    :cond_1
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget-wide v0, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->tickSnd:J

    sub-long v0, v10, v0

    iget v2, p0, Lcom/xlwtech/util/XlwClientApp;->m_interval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iput-wide v10, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->tickSnd:J

    .line 183
    iget-object v1, p0, Lcom/xlwtech/util/XlwClientApp;->m_socket:Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget-object v2, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    iget-object v0, p0, Lcom/xlwtech/util/XlwClientApp;->m_cmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;

    iget v3, v0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req_len:I

    iget-object v4, p0, Lcom/xlwtech/util/XlwClientApp;->m_server:Ljava/lang/String;

    const/16 v5, 0x6590

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xlwtech/util/XlwClientApp;->SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z

    .line 177
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 193
    .restart local v9    # "iLen":I
    :cond_3
    invoke-direct {p0, v6, v9}, Lcom/xlwtech/util/XlwClientApp;->DoServerResponse([BI)V

    goto :goto_0
.end method
