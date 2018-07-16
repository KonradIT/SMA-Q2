.class public Lcom/xlwtech/util/XlwDeviceSearch;
.super Ljava/lang/Object;
.source "XlwDeviceSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;,
        Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;
    }
.end annotation


# static fields
.field private static final INTERVAL_SEARCH:I = 0xea60

.field private static final INTERVAL_SEND:I = 0xa

.field private static final MAX_CHECK_COUNT:I = 0xa

.field private static final MSG_SEARCH_FOUND:I = 0x622a

.field private static final SEARCH_INTERVAL:I = 0x64

.field private static instance:Lcom/xlwtech/util/XlwDeviceSearch;

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

.field public m_countNeedSearch:I

.field public m_devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;",
            ">;"
        }
    .end annotation
.end field

.field private m_handler:Landroid/os/Handler;

.field private m_listener:Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

.field public m_runFlag:Z

.field private m_sn:I

.field private m_socket:Ljava/net/DatagramSocket;

.field public m_tickNeedSearch:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->instance:Lcom/xlwtech/util/XlwDeviceSearch;

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->service:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/xlwtech/util/XlwDeviceSearch$1;

    invoke-direct {v0, p0}, Lcom/xlwtech/util/XlwDeviceSearch$1;-><init>(Lcom/xlwtech/util/XlwDeviceSearch;)V

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_handler:Landroid/os/Handler;

    .line 68
    iput-boolean v2, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_runFlag:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_tickNeedSearch:J

    .line 70
    iput v2, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_countNeedSearch:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_devices:Ljava/util/ArrayList;

    .line 74
    iput-object v3, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_listener:Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

    .line 75
    iput-object v3, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_socket:Ljava/net/DatagramSocket;

    .line 76
    iput v2, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    .line 79
    iput-object v3, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    return-void
.end method

.method private DeviceAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;

    invoke-direct {v0, p0}, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;-><init>(Lcom/xlwtech/util/XlwDeviceSearch;)V

    .line 281
    .local v0, "dev":Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;
    iput-object p1, v0, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;->mac:Ljava/lang/String;

    .line 282
    iput-object p2, v0, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;->ip:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method private DeviceIndexGet(Ljava/lang/String;)I
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 276
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 274
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;

    iget-object v1, v1, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;->mac:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DoSearch()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    new-array v0, v5, [B

    .line 194
    .local v0, "buff_recv":[B
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 196
    .local v4, "packet":Ljava/net/DatagramPacket;
    iput v9, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    .line 197
    invoke-direct {p0}, Lcom/xlwtech/util/XlwDeviceSearch;->SocketUdpInit()Ljava/net/DatagramSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_socket:Ljava/net/DatagramSocket;

    .line 198
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_runFlag:Z

    if-nez v5, :cond_1

    .line 226
    iget-object v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_socket:Ljava/net/DatagramSocket;

    invoke-direct {p0, v5}, Lcom/xlwtech/util/XlwDeviceSearch;->SocketUdpClose(Ljava/net/DatagramSocket;)V

    .line 227
    iput-boolean v9, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_runFlag:Z

    .line 228
    return-void

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 201
    .local v2, "iTickNow":J
    iget v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_countNeedSearch:I

    if-lez v5, :cond_3

    iget-wide v6, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_tickNeedSearch:J

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 203
    iget v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    .line 204
    iget v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    const/16 v6, 0x100

    if-ne v5, v6, :cond_2

    iput v10, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    .line 205
    :cond_2
    iget-object v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_socket:Ljava/net/DatagramSocket;

    const-string v6, "req_search:sn=%d,"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "255.255.255.255"

    const/16 v8, 0x61a8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/xlwtech/util/XlwDeviceSearch;->SocketUdpSend(Ljava/net/DatagramSocket;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 206
    iget v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_countNeedSearch:I

    if-le v5, v10, :cond_4

    .line 208
    const-wide/16 v6, 0xa

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_tickNeedSearch:J

    .line 209
    iget v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_countNeedSearch:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_countNeedSearch:I

    .line 216
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 219
    .local v1, "iRecvLen":I
    :try_start_0
    iget-object v5, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_socket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 220
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_2
    if-lez v1, :cond_0

    .line 224
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v9, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v5, v6}, Lcom/xlwtech/util/XlwDeviceSearch;->DoSearchResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v1    # "iRecvLen":I
    :cond_4
    const-wide/32 v6, 0xea60

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_tickNeedSearch:J

    goto :goto_1

    .line 222
    .restart local v1    # "iRecvLen":I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private DoSearchResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string v8, ":"

    invoke-static {p2, v8}, Lcom/xlwtech/util/XlwString;->StrGetHeadAndCut(Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v6

    .line 238
    .local v6, "ret":Lcom/xlwtech/util/XlwString$StrRet;
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v9, "rsp_search"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v9, "="

    const-string v10, ","

    invoke-static {v8, v9, v10}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v6

    .line 242
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v9, "sn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v9, "="

    const-string v10, ","

    invoke-static {v8, v9, v10}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v6

    .line 243
    :cond_2
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v9, "mac"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    iget-object v4, v6, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 245
    .local v4, "mac":Ljava/lang/String;
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v9, "="

    const-string v10, ","

    invoke-static {v8, v9, v10}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v6

    .line 246
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v9, "ver"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    iget-object v7, v6, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 248
    .local v7, "ver":Ljava/lang/String;
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    const-string v9, "="

    const-string v10, ","

    invoke-static {v8, v9, v10}, Lcom/xlwtech/util/XlwString;->StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;

    move-result-object v6

    .line 250
    iget-object v8, v6, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    const-string v9, "cap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 251
    iget-object v1, v6, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 252
    .local v1, "cap":Ljava/lang/String;
    iget-object v2, v6, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    .line 253
    .local v2, "ext":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/xlwtech/util/XlwDeviceSearch;->DeviceIndexGet(Ljava/lang/String;)I

    move-result v3

    .line 254
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 255
    invoke-direct {p0, v4, p1}, Lcom/xlwtech/util/XlwDeviceSearch;->DeviceAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 258
    .local v5, "msg":Landroid/os/Message;
    const/16 v8, 0x622a

    iput v8, v5, Landroid/os/Message;->what:I

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "ip"

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v8, "mac"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v8, "ver"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v8, "cap"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v8, "ext"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 266
    iget-object v8, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_handler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private SocketUdpClose(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    const/4 p1, 0x0

    .line 148
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SocketUdpInit()Ljava/net/DatagramSocket;
    .locals 2

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 131
    .local v0, "aSocket":Ljava/net/DatagramSocket;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "aSocket":Ljava/net/DatagramSocket;
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 137
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
    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xlwtech/util/XlwDeviceSearch;->SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private SocketUdpSend(Ljava/net/DatagramSocket;[BILjava/lang/String;I)Z
    .locals 9
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return v2

    .line 155
    :cond_0
    :try_start_0
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 156
    .local v1, "peerAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p2, p3, v1, p5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 157
    .local v0, "aPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 158
    const-string v4, "xlw"

    const-string v5, "send %s, %d message, len=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p4, v6, v7

    const/4 v7, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 159
    goto :goto_0

    .line 161
    .end local v0    # "aPacket":Ljava/net/DatagramPacket;
    .end local v1    # "peerAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xlwtech/util/XlwDeviceSearch;)Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_listener:Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xlwtech/util/XlwDeviceSearch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/xlwtech/util/XlwDeviceSearch;->DoSearch()V

    return-void
.end method

.method public static getInstance()Lcom/xlwtech/util/XlwDeviceSearch;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->instance:Lcom/xlwtech/util/XlwDeviceSearch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xlwtech/util/XlwDeviceSearch;

    invoke-direct {v0}, Lcom/xlwtech/util/XlwDeviceSearch;-><init>()V

    sput-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->instance:Lcom/xlwtech/util/XlwDeviceSearch;

    .line 86
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->instance:Lcom/xlwtech/util/XlwDeviceSearch;

    return-object v0
.end method


# virtual methods
.method public DeviceClear()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public DoInit()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_sn:I

    .line 93
    return-void
.end method

.method public SetDeviceSearchListener(Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;)V
    .locals 0
    .param p1, "value"    # Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_listener:Lcom/xlwtech/util/XlwDeviceSearch$DeviceSearchListener;

    return-void
.end method

.method public SocketUdpRecv(Ljava/net/DatagramSocket;[BLjava/lang/StringBuffer;)I
    .locals 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "data"    # [B
    .param p3, "host"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return v1

    .line 178
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p2

    invoke-direct {v0, p2, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 179
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 180
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 183
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_runFlag:Z

    .line 115
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 117
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_runFlag:Z

    .line 98
    sget-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xlwtech/util/XlwDeviceSearch$2;

    invoke-direct {v1, p0}, Lcom/xlwtech/util/XlwDeviceSearch$2;-><init>(Lcom/xlwtech/util/XlwDeviceSearch;)V

    .line 104
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 105
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 123
    :cond_0
    sget-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xlwtech/util/XlwDeviceSearch;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 124
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xlwtech/util/XlwDeviceSearch;->m_runFlag:Z

    .line 110
    return-void
.end method
