.class public Lcom/xlwtech/util/XlwDeviceCheck;
.super Ljava/lang/Object;
.source "XlwDeviceCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;,
        Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;
    }
.end annotation


# static fields
.field private static final DISCOVER_INTERVAL:I = 0x64

.field private static final MAX_CHECK_COUNT:I = 0x14

.field private static final MSG_LOCAL_OFFLINE:I = 0x623e

.field private static final MSG_LOCAL_ONLINE:I = 0x623f

.field public static final STATUS_LOCAL_OFFLINE:I = 0xa

.field public static final STATUS_LOCAL_ONLINE:I = 0xb

.field public static final STATUS_OFFLINE:I = 0x1

.field public static final STATUS_ONLINE:I = 0x2

.field private static instance:Lcom/xlwtech/util/XlwDeviceCheck;

.field private static service:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field public m_checkInerval:I

.field public m_devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;",
            ">;"
        }
    .end annotation
.end field

.field private m_handler:Landroid/os/Handler;

.field private m_listener:Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

.field public m_runFlag:Z

.field private m_sn:I

.field private m_socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->instance:Lcom/xlwtech/util/XlwDeviceCheck;

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->service:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/xlwtech/util/XlwDeviceCheck$1;

    invoke-direct {v0, p0}, Lcom/xlwtech/util/XlwDeviceCheck$1;-><init>(Lcom/xlwtech/util/XlwDeviceCheck;)V

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_handler:Landroid/os/Handler;

    .line 77
    iput-boolean v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_runFlag:Z

    .line 78
    iput v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_checkInerval:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    .line 81
    iput-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_listener:Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    .line 82
    iput-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_socket:Ljava/net/DatagramSocket;

    .line 83
    iput v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    .line 86
    iput-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 89
    return-void
.end method

.method private DeviceIndexGet(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 376
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 374
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v1, v1, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->mac:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DoCheckResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xb

    .line 328
    const-string v7, ":"

    invoke-static {p2, v7}, Lcom/xlwtech/util/XlwString;->StrGetHeadAndCut(Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 329
    .local v5, "ret":Lcom/xlwtech/util/XlwString$StrRet;
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "rsp_search"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 333
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "sn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 334
    :cond_2
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "mac"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 335
    iget-object v3, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 336
    .local v3, "mac":Ljava/lang/String;
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 338
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    iget-object v6, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 340
    .local v6, "ver":Ljava/lang/String;
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v8, "="

    const-string v9, ","

    invoke-static {v7, v8, v9}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v5

    .line 341
    iget-object v7, v5, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v8, "cap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    iget-object v1, v5, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 344
    .local v1, "cap":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIndexGet(Ljava/lang/String;)I

    move-result v2

    .line 345
    .local v2, "index":I
    if-gez v2, :cond_3

    .line 347
    invoke-virtual {p0, v3, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickCheck:J

    .line 352
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickSend:J

    .line 353
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    const/4 v8, 0x0

    iput v8, v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    .line 354
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput-object p1, v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    .line 356
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget v7, v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    if-eq v7, v10, :cond_0

    .line 358
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput v10, v7, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    .line 359
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 360
    .local v4, "msg":Landroid/os/Message;
    const/16 v7, 0x623f

    iput v7, v4, Landroid/os/Message;->what:I

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "mac"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 364
    iget-object v7, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private SocketUdpClose(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 205
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    const/4 p1, 0x0

    .line 209
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SocketUdpInit()Ljava/net/DatagramSocket;
    .locals 2

    .prologue
    .line 191
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 192
    .local v0, "aSocket":Ljava/net/DatagramSocket;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "aSocket":Ljava/net/DatagramSocket;
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 198
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
    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xlwtech/util/XlwDeviceCheck;->SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z

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

    .line 215
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return v2

    .line 216
    :cond_0
    :try_start_0
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 217
    .local v1, "peerAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p2, p3, v1, p5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 218
    .local v0, "aPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v2, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "aPacket":Ljava/net/DatagramPacket;
    .end local v1    # "peerAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwDeviceCheck;)Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_listener:Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xlwtech/util/XlwDeviceCheck;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/xlwtech/util/XlwDeviceCheck;->checkStatus()V

    return-void
.end method

.method private checkStatus()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 255
    .local v0, "buff_recv":[B
    new-instance v9, Ljava/net/DatagramPacket;

    const/16 v10, 0x400

    invoke-direct {v9, v0, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 257
    .local v9, "packet":Ljava/net/DatagramPacket;
    const-wide/16 v6, 0x0

    .line 260
    .local v6, "iTickSearch":J
    const/4 v10, 0x0

    iput v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    .line 261
    invoke-direct {p0}, Lcom/xlwtech/util/XlwDeviceCheck;->SocketUdpInit()Ljava/net/DatagramSocket;

    move-result-object v10

    iput-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_socket:Ljava/net/DatagramSocket;

    .line 262
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_runFlag:Z

    if-nez v10, :cond_1

    .line 317
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_socket:Ljava/net/DatagramSocket;

    invoke-direct {p0, v10}, Lcom/xlwtech/util/XlwDeviceCheck;->SocketUdpClose(Ljava/net/DatagramSocket;)V

    .line 318
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_runFlag:Z

    .line 319
    return-void

    .line 264
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 265
    .local v4, "iTickNow":J
    iget v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_checkInerval:I

    if-lez v10, :cond_2

    .line 267
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 307
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 310
    .local v3, "iRecvLen":I
    :try_start_0
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_socket:Ljava/net/DatagramSocket;

    invoke-virtual {v10, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 311
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 314
    :goto_2
    if-lez v3, :cond_0

    .line 315
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v10, v11}, Lcom/xlwtech/util/XlwDeviceCheck;->DoCheckResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v3    # "iRecvLen":I
    .restart local v2    # "i":I
    :cond_3
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-wide v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickCheck:J

    sub-long v10, v4, v10

    iget v12, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_checkInerval:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    .line 267
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    :cond_5
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-wide v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickSend:J

    sub-long v10, v4, v10

    const-wide/16 v12, 0x64

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    .line 272
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_7

    .line 274
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 275
    iget-object v11, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_socket:Ljava/net/DatagramSocket;

    const-string v10, "req_search:sn=%d,"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    const/16 v13, 0x61a8

    invoke-direct {p0, v11, v12, v10, v13}, Lcom/xlwtech/util/XlwDeviceCheck;->SocketUdpSend(Ljava/net/DatagramSocket;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 276
    iget v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    .line 277
    iget v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    const/16 v11, 0x100

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    iput v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    .line 278
    :cond_6
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput-wide v4, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickCheck:J

    goto :goto_3

    .line 282
    :cond_7
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    const/16 v11, 0x14

    if-le v10, v11, :cond_8

    .line 284
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    const/16 v11, 0xa

    iput v11, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    .line 285
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 286
    .local v8, "msg":Landroid/os/Message;
    const/16 v10, 0x623e

    iput v10, v8, Landroid/os/Message;->what:I

    .line 287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "mac"

    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->mac:Ljava/lang/String;

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 290
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_handler:Landroid/os/Handler;

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 294
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_8
    iget-object v11, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_socket:Ljava/net/DatagramSocket;

    const-string v10, "req_search:sn=%d,"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v10, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    const/16 v13, 0x61a8

    invoke-direct {p0, v11, v12, v10, v13}, Lcom/xlwtech/util/XlwDeviceCheck;->SocketUdpSend(Ljava/net/DatagramSocket;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 295
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput-wide v4, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickSend:J

    .line 296
    iget-object v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v11, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget v11, v11, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    .line 297
    iget v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    .line 298
    iget v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    const/16 v11, 0x100

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    iput v10, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_sn:I

    goto/16 :goto_3

    .line 313
    .end local v2    # "i":I
    .restart local v3    # "iRecvLen":I
    :catch_0
    move-exception v10

    goto/16 :goto_2
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwDeviceCheck;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->instance:Lcom/xlwtech/util/XlwDeviceCheck;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwDeviceCheck;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->instance:Lcom/xlwtech/util/XlwDeviceCheck;

    .line 99
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->instance:Lcom/xlwtech/util/XlwDeviceCheck;

    return-object v0
.end method


# virtual methods
.method public DeviceClear()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public DeviceCountGet()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public DeviceDel(Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIndexGet(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    :cond_0
    return-void
.end method

.method public DeviceIpGet(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v0, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public DeviceIpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIndexGet(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "index":I
    if-gez v0, :cond_0

    const-string v1, ""

    .line 141
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v1, v1, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    goto :goto_0
.end method

.method public DeviceMacGet(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget-object v0, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public DeviceStatusGet(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIndexGet(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "index":I
    if-gez v0, :cond_0

    const/16 v1, 0xa

    .line 147
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget v1, v1, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    goto :goto_0
.end method

.method public DeviceUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/16 v3, 0xb

    const/4 v6, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwDeviceCheck;->DeviceIndexGet(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput-object p2, v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput v3, v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    .line 156
    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickCheck:J

    .line 157
    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput-wide v8, v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickSend:J

    .line 158
    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iput v6, v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    .line 159
    const-string v3, "xlw"

    const-string v4, "index=%d, mac=%s, status=%d"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    iget v2, v2, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;

    invoke-direct {v0, p0}, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;-><init>(Lcom/xlwtech/util/XlwDeviceCheck;)V

    .line 164
    .local v0, "dev":Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;
    iput-object p1, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->mac:Ljava/lang/String;

    .line 165
    iput-object p2, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    .line 166
    iput v3, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->status:I

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickCheck:J

    .line 168
    iput-wide v8, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickSend:J

    .line 169
    iput v6, v0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    .line 170
    iget-object v2, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public DoInit()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-void
.end method

.method public SetDeviceCheckListener(Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_listener:Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    return-void
.end method

.method public SocketUdpRecv(Ljava/net/DatagramSocket;[BLjava/lang/StringBuffer;)I
    .locals 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "data"    # [B
    .param p3, "host"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x0

    .line 238
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return v1

    .line 239
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p2

    invoke-direct {v0, p2, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 240
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 241
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 244
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_runFlag:Z

    .line 130
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 132
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_runFlag:Z

    .line 110
    sget-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xlwtech/util/XlwDeviceCheck$2;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDeviceCheck$2;-><init>(Lcom/xlwtech/util/XlwDeviceCheck;)V

    .line 119
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 120
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 184
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xlwtech/util/XlwDeviceCheck;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 185
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwDeviceCheck;->m_runFlag:Z

    .line 125
    return-void
.end method
