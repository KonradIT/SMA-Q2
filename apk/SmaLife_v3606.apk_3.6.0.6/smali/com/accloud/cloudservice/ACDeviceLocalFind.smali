.class public Lcom/accloud/cloudservice/ACDeviceLocalFind;
.super Ljava/lang/Object;
.source "ACDeviceLocalFind.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDeviceLocalFind"


# instance fields
.field private TimeOut:I

.field deviceFinds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceFind;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "TimeOut"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->socket:Ljava/net/DatagramSocket;

    .line 31
    iput p2, p0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->TimeOut:I

    .line 32
    iput-object p3, p0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->handler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->deviceFinds:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 41
    .local v24, "timestamp":J
    const/16 v26, 0x54

    :try_start_0
    move/from16 v0, v26

    new-array v5, v0, [B

    .line 43
    .local v5, "buf":[B
    new-instance v19, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 44
    .local v19, "packet":Ljava/net/DatagramPacket;
    const-string v26, "ACDeviceLocalFind"

    const-string v27, "C: Receiving Server..."

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->TimeOut:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_1

    .line 48
    new-instance v26, Ljava/net/SocketTimeoutException;

    invoke-direct/range {v26 .. v26}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v26
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v5    # "buf":[B
    .end local v19    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v7

    .line 113
    .local v7, "e":Ljava/net/SocketTimeoutException;
    const-string v26, "ACDeviceLocalFind"

    const-string v27, "C: Timeout"

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 115
    .local v17, "msg":Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->deviceFinds:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    .end local v7    # "e":Ljava/net/SocketTimeoutException;
    :goto_1
    return-void

    .line 50
    .end local v17    # "msg":Landroid/os/Message;
    .restart local v5    # "buf":[B
    .restart local v19    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->socket:Ljava/net/DatagramSocket;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :goto_2
    :try_start_2
    invoke-static {v5}, Lcom/accloud/service/ACMessage;->getUDPZMessage([B)Lcom/accloud/service/ACMessage;

    move-result-object v16

    .line 54
    .local v16, "message":Lcom/accloud/service/ACMessage;
    if-eqz v16, :cond_0

    .line 56
    invoke-virtual/range {v16 .. v16}, Lcom/accloud/service/ACMessage;->getMessageHead()Lcom/accloud/service/ACMessageHead;

    move-result-object v18

    .line 58
    .local v18, "msgHead":Lcom/accloud/service/ACMessageHead;
    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMessageHead;->getMsgCode()S

    move-result v26

    const/16 v27, 0x1f

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v26

    const/16 v27, 0x14

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 60
    invoke-virtual/range {v16 .. v16}, Lcom/accloud/service/ACMessage;->getMsgPayload()[B

    move-result-object v20

    .line 62
    .local v20, "payload":[B
    const-string v26, "ACDeviceLocalFind"

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMessageHead;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v12, ""

    .line 65
    .local v12, "ip":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_4

    .line 66
    aget-byte v13, v20, v10

    .line 67
    .local v13, "j":I
    if-gez v13, :cond_2

    .line 68
    add-int/lit16 v13, v13, 0x100

    .line 70
    :cond_2
    const/16 v26, 0x3

    move/from16 v0, v26

    if-eq v10, v0, :cond_3

    .line 71
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 65
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 73
    :cond_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 75
    .end local v13    # "j":I
    :cond_4
    const-string v26, "ACDeviceLocalFind"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "C: ip:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v4, v0, [B

    .line 77
    .local v4, "bDomainId":[B
    const/16 v21, 0x0

    .line 78
    .local v21, "physicalDeviceId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMessageHead;->getVersion()S

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 79
    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v26

    const/16 v27, 0x1c

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 82
    new-instance v21, Ljava/lang/String;

    .end local v21    # "physicalDeviceId":Ljava/lang/String;
    const/16 v26, 0x4

    const/16 v27, 0x10

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 84
    .restart local v21    # "physicalDeviceId":Ljava/lang/String;
    const/16 v26, 0x14

    const/16 v27, 0x0

    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :goto_5
    const-string v26, "ACDeviceLocalFind"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "C: physicalDeviceId:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-wide/16 v14, 0x0

    .line 93
    .local v14, "majorDomainId":J
    const-wide/16 v22, 0x0

    .line 94
    .local v22, "subDomainId":J
    const/16 v26, 0x0

    aget-byte v26, v4, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x28

    const/16 v27, 0x1

    aget-byte v27, v4, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x20

    add-int v26, v26, v27

    const/16 v27, 0x2

    aget-byte v27, v4, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x18

    add-int v26, v26, v27

    const/16 v27, 0x3

    aget-byte v27, v4, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x10

    add-int v26, v26, v27

    const/16 v27, 0x4

    aget-byte v27, v4, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int/lit8 v27, v27, 0x8

    add-int v26, v26, v27

    const/16 v27, 0x5

    aget-byte v27, v4, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v14, v0

    .line 96
    const/16 v26, 0x6

    aget-byte v26, v4, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    const/16 v27, 0x7

    aget-byte v27, v4, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 97
    const-string v26, "ACDeviceLocalFind"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "C: majorDomainId:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "   subDomainId:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-eqz v26, :cond_5

    sget-wide v26, Lcom/accloud/cloudservice/AC;->majorDomainId:J

    cmp-long v26, v14, v26

    if-nez v26, :cond_0

    .line 99
    :cond_5
    new-instance v8, Lcom/accloud/service/ACDeviceFind;

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-direct {v8, v0, v1, v12, v2}, Lcom/accloud/service/ACDeviceFind;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v8, "find":Lcom/accloud/service/ACDeviceFind;
    const/4 v9, 0x1

    .line 101
    .local v9, "flag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->deviceFinds:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/accloud/service/ACDeviceFind;

    .line 102
    .local v6, "deviceFind":Lcom/accloud/service/ACDeviceFind;
    invoke-virtual {v6, v8}, Lcom/accloud/service/ACDeviceFind;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 103
    const/4 v9, 0x0

    .line 107
    .end local v6    # "deviceFind":Lcom/accloud/service/ACDeviceFind;
    :cond_7
    if-eqz v9, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->deviceFinds:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 118
    .end local v4    # "bDomainId":[B
    .end local v5    # "buf":[B
    .end local v8    # "find":Lcom/accloud/service/ACDeviceFind;
    .end local v9    # "flag":Z
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "ip":Ljava/lang/String;
    .end local v14    # "majorDomainId":J
    .end local v16    # "message":Lcom/accloud/service/ACMessage;
    .end local v18    # "msgHead":Lcom/accloud/service/ACMessageHead;
    .end local v19    # "packet":Ljava/net/DatagramPacket;
    .end local v20    # "payload":[B
    .end local v21    # "physicalDeviceId":Ljava/lang/String;
    .end local v22    # "subDomainId":J
    :catch_1
    move-exception v7

    .line 119
    .local v7, "e":Ljava/lang/Exception;
    const-string v26, "ACDeviceLocalFind"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "C: Error:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 121
    .restart local v17    # "msg":Landroid/os/Message;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 122
    new-instance v26, Lcom/accloud/service/ACException;

    sget v27, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceLocalFind;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 87
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v17    # "msg":Landroid/os/Message;
    .restart local v4    # "bDomainId":[B
    .restart local v5    # "buf":[B
    .restart local v10    # "i":I
    .restart local v12    # "ip":Ljava/lang/String;
    .restart local v16    # "message":Lcom/accloud/service/ACMessage;
    .restart local v18    # "msgHead":Lcom/accloud/service/ACMessageHead;
    .restart local v19    # "packet":Ljava/net/DatagramPacket;
    .restart local v20    # "payload":[B
    .restart local v21    # "physicalDeviceId":Ljava/lang/String;
    :cond_8
    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v28, 0x8

    :try_start_3
    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance v21, Ljava/lang/String;

    .end local v21    # "physicalDeviceId":Ljava/lang/String;
    const/16 v26, 0xc

    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v27

    add-int/lit8 v27, v27, -0xc

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v21    # "physicalDeviceId":Ljava/lang/String;
    goto/16 :goto_5

    .line 51
    .end local v4    # "bDomainId":[B
    .end local v10    # "i":I
    .end local v12    # "ip":Ljava/lang/String;
    .end local v16    # "message":Lcom/accloud/service/ACMessage;
    .end local v18    # "msgHead":Lcom/accloud/service/ACMessageHead;
    .end local v20    # "payload":[B
    .end local v21    # "physicalDeviceId":Ljava/lang/String;
    :catch_2
    move-exception v26

    goto/16 :goto_2
.end method
