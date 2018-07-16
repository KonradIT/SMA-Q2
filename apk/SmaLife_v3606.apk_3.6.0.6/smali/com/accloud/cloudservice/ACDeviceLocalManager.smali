.class public Lcom/accloud/cloudservice/ACDeviceLocalManager;
.super Ljava/lang/Object;
.source "ACDeviceLocalManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/accloud/cloudservice/ACDeviceLocalManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/accloud/cloudservice/ACDeviceLocalManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static controlDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 17
    .param p0, "physicalDeviceId"    # Ljava/lang/String;
    .param p1, "aesKey"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "deviceMsg"    # Lcom/accloud/service/ACDeviceMsg;
    .param p4, "TimeOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACDeviceMsg;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDeviceMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p5, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACDeviceMsg;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/accloud/service/ACDeviceMsg;->getContent()[B

    move-result-object v15

    .line 87
    .local v15, "payload":[B
    new-instance v14, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v14, v4, v0, v1, v2}, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;-><init>(Landroid/os/Looper;Lcom/accloud/cloudservice/PayloadCallback;Lcom/accloud/service/ACDeviceMsg;Ljava/lang/String;)V

    .line 146
    .local v14, "handler":Landroid/os/Handler;
    new-instance v16, Lcom/accloud/service/ACSecHead;

    invoke-direct/range {v16 .. v16}, Lcom/accloud/service/ACSecHead;-><init>()V

    .line 147
    .local v16, "zSecHead":Lcom/accloud/service/ACSecHead;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACSecHead;->setResver(B)V

    .line 148
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/accloud/service/ACSecHead;->setSecType(B)V

    .line 151
    if-eqz v15, :cond_0

    .line 152
    array-length v8, v15

    .line 155
    .local v8, "payloadLen":I
    :goto_0
    new-instance v3, Lcom/accloud/service/ACMessageHead;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/accloud/service/ACDeviceMsg;->getCode()I

    move-result v6

    int-to-short v6, v6

    const/4 v7, 0x0

    invoke-static {v15, v8}, Lcom/accloud/utils/Crc16Util;->GetCrc16([BI)I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/accloud/service/ACMessageHead;-><init>(SSSSII)V

    .line 156
    .local v3, "zMessageHead":Lcom/accloud/service/ACMessageHead;
    new-instance v12, Lcom/accloud/service/ACMessage;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v3, v4, v15}, Lcom/accloud/service/ACMessage;-><init>(Lcom/accloud/service/ACSecHead;Lcom/accloud/service/ACMessageHead;Ljava/util/List;[B)V

    .line 158
    .local v12, "zMessage":Lcom/accloud/service/ACMessage;
    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/accloud/cloudservice/ACDeviceLocalControl;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcom/accloud/cloudservice/ACDeviceLocalControl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACMessage;ILandroid/os/Handler;)V

    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 159
    return-void

    .line 154
    .end local v3    # "zMessageHead":Lcom/accloud/service/ACMessageHead;
    .end local v8    # "payloadLen":I
    .end local v12    # "zMessage":Lcom/accloud/service/ACMessage;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "payloadLen":I
    goto :goto_0
.end method

.method public static findDevice(ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 18
    .param p0, "TimeOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceFind;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACDeviceFind;>;>;"
    new-instance v3, Lcom/accloud/cloudservice/ACDeviceLocalManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v3, v12, v0}, Lcom/accloud/cloudservice/ACDeviceLocalManager$1;-><init>(Landroid/os/Looper;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 43
    .local v3, "handler":Landroid/os/Handler;
    const/16 v12, 0x8

    new-array v8, v12, [B

    .line 44
    .local v8, "payload":[B
    sget-wide v12, Lcom/accloud/cloudservice/AC;->majorDomainId:J

    const/16 v14, 0x10

    shl-long v4, v12, v14

    .line 45
    .local v4, "id":J
    const/4 v12, 0x7

    const-wide/16 v14, 0xff

    and-long/2addr v14, v4

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 46
    const/4 v12, 0x6

    const/16 v13, 0x8

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 47
    const/4 v12, 0x5

    const/16 v13, 0x10

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 48
    const/4 v12, 0x4

    const/16 v13, 0x18

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 49
    const/4 v12, 0x3

    const/16 v13, 0x20

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 50
    const/4 v12, 0x2

    const/16 v13, 0x28

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 51
    const/4 v12, 0x1

    const/16 v13, 0x30

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 52
    const/4 v12, 0x0

    const/16 v13, 0x38

    shr-long v14, v4, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 54
    new-instance v6, Lcom/accloud/service/ACMessageHead;

    invoke-direct {v6}, Lcom/accloud/service/ACMessageHead;-><init>()V

    .line 55
    .local v6, "messageHead":Lcom/accloud/service/ACMessageHead;
    const/16 v12, 0x1e

    invoke-virtual {v6, v12}, Lcom/accloud/service/ACMessageHead;->setMsgCode(S)V

    .line 56
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/accloud/service/ACMessageHead;->setMsgId(S)V

    .line 57
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/accloud/service/ACMessageHead;->setOptNum(S)V

    .line 58
    array-length v12, v8

    invoke-virtual {v6, v12}, Lcom/accloud/service/ACMessageHead;->setPayloadLen(I)V

    .line 59
    array-length v12, v8

    invoke-static {v8, v12}, Lcom/accloud/utils/Crc16Util;->GetCrc16([BI)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/accloud/service/ACMessageHead;->setTotalMsgCrc(I)V

    .line 61
    new-instance v11, Lcom/accloud/service/ACMessage;

    invoke-direct {v11, v6, v8}, Lcom/accloud/service/ACMessage;-><init>(Lcom/accloud/service/ACMessageHead;[B)V

    .line 64
    .local v11, "zMessage":Lcom/accloud/service/ACMessage;
    const/4 v9, 0x0

    .line 65
    .local v9, "socket":Ljava/net/DatagramSocket;
    if-nez v9, :cond_0

    .line 66
    :try_start_0
    new-instance v10, Ljava/net/DatagramSocket;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v9    # "socket":Ljava/net/DatagramSocket;
    .local v10, "socket":Ljava/net/DatagramSocket;
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v10, v12}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 68
    new-instance v12, Ljava/net/InetSocketAddress;

    const/16 v13, 0x21f1

    invoke-direct {v12, v13}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 69
    const/16 v12, 0x3e8

    move/from16 v0, p0

    if-le v0, v12, :cond_1

    .line 70
    const/16 v12, 0x3e8

    invoke-virtual {v10, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 74
    .end local v10    # "socket":Ljava/net/DatagramSocket;
    .restart local v9    # "socket":Ljava/net/DatagramSocket;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/accloud/cloudservice/ACDeviceLocalFind;

    move/from16 v0, p0

    invoke-direct {v13, v9, v0, v3}, Lcom/accloud/cloudservice/ACDeviceLocalFind;-><init>(Ljava/net/DatagramSocket;ILandroid/os/Handler;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 75
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/accloud/cloudservice/ACDeviceLocalSend;

    move/from16 v0, p0

    invoke-direct {v13, v9, v11, v0}, Lcom/accloud/cloudservice/ACDeviceLocalSend;-><init>(Ljava/net/DatagramSocket;Lcom/accloud/service/ACMessage;I)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :goto_1
    return-void

    .line 72
    .end local v9    # "socket":Ljava/net/DatagramSocket;
    .restart local v10    # "socket":Ljava/net/DatagramSocket;
    :cond_1
    :try_start_3
    move/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v9, v10

    .end local v10    # "socket":Ljava/net/DatagramSocket;
    .restart local v9    # "socket":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 78
    .local v7, "msg":Landroid/os/Message;
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->what:I

    .line 79
    new-instance v12, Lcom/accloud/service/ACException;

    sget v13, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    iput-object v12, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v9    # "socket":Ljava/net/DatagramSocket;
    .restart local v10    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "socket":Ljava/net/DatagramSocket;
    .restart local v9    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2
.end method
