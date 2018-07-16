.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/accloud/cloudservice/ACDeviceActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receive"
.end annotation


# instance fields
.field private Password:Ljava/lang/String;

.field private SERVERPORT:I

.field private SSID:Ljava/lang/String;

.field private TimeOut:I

.field datagramSocket:Ljava/net/DatagramSocket;

.field private isMatching:Z

.field private physicalId:Ljava/lang/String;

.field final synthetic this$0:Lcom/accloud/cloudservice/ACDeviceActivator;


# direct methods
.method public constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "TimeOut"    # I
    .param p3, "SSID"    # Ljava/lang/String;
    .param p4, "Password"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/16 v0, 0x21f1

    iput v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SERVERPORT:I

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    .line 454
    iput p2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->TimeOut:I

    .line 455
    iput-object p3, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    .line 456
    iput-object p4, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->isMatching:Z

    .line 458
    return-void
.end method

.method public constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "physicalId"    # Ljava/lang/String;
    .param p3, "TimeOut"    # I
    .param p4, "SSID"    # Ljava/lang/String;
    .param p5, "Password"    # Ljava/lang/String;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/16 v0, 0x21f1

    iput v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SERVERPORT:I

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    .line 461
    iput p3, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->TimeOut:I

    .line 462
    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->physicalId:Ljava/lang/String;

    .line 463
    iput-object p4, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    .line 464
    iput-object p5, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->isMatching:Z

    .line 466
    return-void
.end method

.method static synthetic access$400(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeSocket()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 812
    const-string v0, "ACDeviceActivator"

    const-string v1, "C: Socket close."

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 815
    :cond_0
    return-void
.end method

.method public run()V
    .locals 40

    .prologue
    .line 471
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$000(Lcom/accloud/cloudservice/ACDeviceActivator;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 472
    const-string v5, "ACDeviceActivator"

    const-string v6, "startAbleLink..."

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$000(Lcom/accloud/cloudservice/ACDeviceActivator;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 738
    :cond_1
    :goto_0
    const-string v5, "ACDeviceActivator"

    const-string v6, "C: Connecting..."

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    if-nez v5, :cond_2

    .line 741
    new-instance v5, Ljava/net/DatagramSocket;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    .line 742
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    new-instance v6, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SERVERPORT:I

    invoke-direct {v6, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 745
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->TimeOut:I

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 747
    const/16 v5, 0x50

    new-array v13, v5, [B

    .line 748
    .local v13, "buf":[B
    new-instance v19, Ljava/net/DatagramPacket;

    array-length v5, v13

    move-object/from16 v0, v19

    invoke-direct {v0, v13, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 751
    .local v19, "headPacket":Ljava/net/DatagramPacket;
    :cond_3
    :goto_1
    const-string v5, "ACDeviceActivator"

    const-string v6, "C: Receiving..."

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->datagramSocket:Ljava/net/DatagramSocket;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 753
    invoke-static {v13}, Lcom/accloud/service/ACMessage;->getUDPZMessage([B)Lcom/accloud/service/ACMessage;

    move-result-object v23

    .line 754
    .local v23, "message":Lcom/accloud/service/ACMessage;
    if-eqz v23, :cond_3

    .line 757
    invoke-virtual/range {v23 .. v23}, Lcom/accloud/service/ACMessage;->getMessageHead()Lcom/accloud/service/ACMessageHead;

    move-result-object v27

    .line 758
    .local v27, "msgHead":Lcom/accloud/service/ACMessageHead;
    const-string v5, "ACDeviceActivator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C: Received:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/accloud/service/ACMessageHead;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {v27 .. v27}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/accloud/service/ACMessageHead;->getMsgCode()S

    move-result v5

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_3

    .line 763
    invoke-virtual/range {v23 .. v23}, Lcom/accloud/service/ACMessage;->getMsgPayload()[B

    move-result-object v29

    .line 764
    .local v29, "payload":[B
    const-wide/16 v24, 0x0

    .line 765
    .local v24, "majorDomainId":J
    const-wide/16 v34, 0x0

    .line 766
    .local v34, "subDomainId":J
    const/4 v5, 0x0

    aget-byte v5, v29, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x28

    const/4 v6, 0x1

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x20

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    const/4 v6, 0x5

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-long v0, v5

    move-wide/from16 v24, v0

    .line 768
    const/4 v5, 0x6

    aget-byte v5, v29, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x7

    aget-byte v6, v29, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-long v0, v5

    move-wide/from16 v34, v0

    .line 769
    const-string v5, "ACDeviceActivator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C: majorDomainId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   subDomainId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {v27 .. v27}, Lcom/accloud/service/ACMessageHead;->getVersion()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 772
    new-instance v30, Ljava/lang/String;

    const/16 v5, 0x8

    const/16 v6, 0x10

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 776
    .local v30, "physicalDeviceId":Ljava/lang/String;
    :goto_2
    const-string v5, "ACDeviceActivator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C: physicalDeviceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 778
    .local v26, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    iput v5, v0, Landroid/os/Message;->what:I

    .line 779
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->isMatching:Z

    if-eqz v5, :cond_f

    sget-wide v6, Lcom/accloud/cloudservice/AC;->majorDomainId:J

    cmp-long v5, v24, v6

    if-nez v5, :cond_f

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->physicalId:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 781
    new-instance v5, Lcom/accloud/service/ACDeviceBind;

    move-wide/from16 v0, v34

    move-object/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/accloud/service/ACDeviceBind;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 808
    .end local v13    # "buf":[B
    .end local v19    # "headPacket":Ljava/net/DatagramPacket;
    .end local v23    # "message":Lcom/accloud/service/ACMessage;
    .end local v24    # "majorDomainId":J
    .end local v26    # "msg":Landroid/os/Message;
    .end local v27    # "msgHead":Lcom/accloud/service/ACMessageHead;
    .end local v29    # "payload":[B
    .end local v30    # "physicalDeviceId":Ljava/lang/String;
    .end local v34    # "subDomainId":J
    :goto_3
    return-void

    .line 476
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$100(Lcom/accloud/cloudservice/ACDeviceActivator;)Lmediatek/android/IoTManager/IoTManagerNative;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$100(Lcom/accloud/cloudservice/ACDeviceActivator;)Lmediatek/android/IoTManager/IoTManagerNative;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    const-string v8, "FF:FF:FF:FF:FF:FF"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$200(Lcom/accloud/cloudservice/ACDeviceActivator;Ljava/lang/String;)B

    move-result v10

    invoke-virtual {v5, v6, v7, v8, v10}, Lmediatek/android/IoTManager/IoTManagerNative;->StartSmartConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 791
    :catch_0
    move-exception v18

    .line 792
    .local v18, "e":Ljava/net/SocketTimeoutException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$700(Lcom/accloud/cloudservice/ACDeviceActivator;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 794
    .restart local v26    # "msg":Landroid/os/Message;
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iput v5, v0, Landroid/os/Message;->what:I

    .line 795
    new-instance v5, Lcom/accloud/service/ACException;

    sget v6, Lcom/accloud/service/ACException;->TIMEOUT:I

    const-string v7, "time out"

    invoke-direct {v5, v6, v7}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 480
    .end local v18    # "e":Ljava/net/SocketTimeoutException;
    .end local v26    # "msg":Landroid/os/Message;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    sget-object v6, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    aput-object v11, v8, v10

    invoke-interface {v5, v6, v7, v8}, Lcom/hiflying/smartlink/ISmartLinker;->start(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    new-instance v6, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$1;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V

    invoke-interface {v5, v6}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 800
    :catch_1
    move-exception v18

    .line 801
    .local v18, "e":Ljava/net/SocketException;
    const-string v5, "ACDeviceActivator"

    invoke-virtual/range {v18 .. v18}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 499
    .end local v18    # "e":Ljava/net/SocketException;
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->elapi:Lcom/mxchip/easylink/EasyLinkAPI;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    new-instance v8, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$2;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/mxchip/easylink/EasyLinkAPI;->startFTC(Ljava/lang/String;Ljava/lang/String;Lcom/mxchip/easylink/FTCListener;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 802
    :catch_2
    move-exception v18

    .line 803
    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v26

    .line 804
    .restart local v26    # "msg":Landroid/os/Message;
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iput v5, v0, Landroid/os/Message;->what:I

    .line 805
    new-instance v5, Lcom/accloud/service/ACException;

    sget v6, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 512
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "msg":Landroid/os/Message;
    :pswitch_3
    :try_start_3
    new-instance v16, Ljava/util/zip/CRC32;

    invoke-direct/range {v16 .. v16}, Ljava/util/zip/CRC32;-><init>()V

    .line 513
    .local v16, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->reset()V

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    and-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/MARVELL/xmitterTask;->passCRC:I

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/MARVELL/xmitterTask;->passphrase:[B

    .line 517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v5, Lcom/MARVELL/xmitterTask;->passLen:I

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    iput-object v6, v5, Lcom/MARVELL/xmitterTask;->ssid:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v5, Lcom/MARVELL/xmitterTask;->ssidLen:I

    .line 521
    new-instance v17, Ljava/util/zip/CRC32;

    invoke-direct/range {v17 .. v17}, Ljava/util/zip/CRC32;-><init>()V

    .line 522
    .local v17, "crc32_ssid":Ljava/util/zip/CRC32;
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/CRC32;->reset()V

    .line 523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->ssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    and-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/MARVELL/xmitterTask;->ssidCRC:I

    .line 526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    const/4 v6, 0x6

    new-array v6, v6, [C

    iput-object v6, v5, Lcom/MARVELL/xmitterTask;->mac:[C

    .line 527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    const/4 v6, 0x6

    new-array v6, v6, [C

    iput-object v6, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    const/4 v6, 0x0

    const/16 v7, 0x45

    aput-char v7, v5, v6

    .line 530
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    const/4 v6, 0x1

    const/16 v7, 0x5a

    aput-char v7, v5, v6

    .line 531
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    const/4 v6, 0x2

    const/16 v7, 0x50

    aput-char v7, v5, v6

    .line 532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    const/4 v6, 0x3

    const/16 v7, 0x52

    aput-char v7, v5, v6

    .line 533
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    const/4 v6, 0x4

    const/16 v7, 0x32

    aput-char v7, v5, v6

    .line 534
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->preamble:[C

    const/4 v6, 0x5

    const/16 v7, 0x32

    aput-char v7, v5, v6

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v39

    .line 537
    .local v39, "wifiInf":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 538
    .local v22, "macParts":[Ljava/lang/String;
    const-string v5, "MRVL"

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    const/4 v5, 0x6

    move/from16 v0, v20

    if-ge v0, v5, :cond_4

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    iget-object v5, v5, Lcom/MARVELL/xmitterTask;->mac:[C

    aget-object v6, v22, v20

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v5, v20

    .line 539
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 541
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    invoke-virtual {v5}, Lcom/MARVELL/xmitterTask;->resetStateMachine()V

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/MARVELL/xmitterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 545
    .end local v16    # "crc32":Ljava/util/zip/CRC32;
    .end local v17    # "crc32_ssid":Ljava/util/zip/CRC32;
    .end local v20    # "i":I
    .end local v22    # "macParts":[Ljava/lang/String;
    .end local v39    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sniffer:Lcom/wukoon/api/Sniffer;

    if-eqz v5, :cond_1

    .line 546
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sniffer:Lcom/wukoon/api/Sniffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/wukoon/api/Sniffer;->startSniffer(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :pswitch_5
    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    new-instance v8, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$3;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V

    invoke-static {v5, v6, v7, v8}, Lcom/MURATA/smartConfig;->startConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/MURATA/UdpCallBackIf;)V

    goto/16 :goto_0

    .line 561
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->iSmartConfig:Lcom/winnermicro/smartconfig/ISmartConfig;

    if-eqz v5, :cond_1

    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 563
    const-string v32, "\"%s\""

    .line 564
    .local v32, "ssidFormat":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 565
    .local v33, "ssidf":Ljava/lang/String;
    const/16 v28, -0x1

    .line 566
    .local v28, "nId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/net/wifi/WifiConfiguration;

    .line 567
    .local v37, "wifiConf":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 568
    move-object/from16 v0, v37

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v28, v0

    .line 572
    .end local v37    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    if-lez v28, :cond_7

    .line 573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    const/4 v6, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 576
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v28    # "nId":I
    .end local v32    # "ssidFormat":Ljava/lang/String;
    .end local v33    # "ssidf":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->iSmartConfig:Lcom/winnermicro/smartconfig/ISmartConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/winnermicro/smartconfig/ISmartConfig;->startConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 580
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sdk:Lyhq/jad/easysdk/EasySdk;

    if-eqz v5, :cond_1

    .line 581
    const/16 v31, 0x0

    .line 582
    .local v31, "psk_data":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    .line 583
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    aput-byte v6, v31, v5

    .line 584
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sdk:Lyhq/jad/easysdk/EasySdk;

    move-object/from16 v0, v31

    array-length v6, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0, v6}, Lyhq/jad/easysdk/EasySdk;->Start([BI)V

    goto/16 :goto_0

    .line 588
    .end local v31    # "psk_data":[B
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v5

    iget v0, v5, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v20, v0

    .line 589
    .restart local v20    # "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v6, v20, 0x18

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v20, 0x10

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v20, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    and-int/lit16 v6, v0, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "gateway":Ljava/lang/String;
    new-instance v4, Lcom/integrity_project/smartconfiglib/SmartConfig;

    new-instance v5, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$4;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V

    const/4 v6, 0x3

    new-array v6, v6, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    invoke-direct/range {v4 .. v12}, Lcom/integrity_project/smartconfiglib/SmartConfig;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    .line 599
    .local v4, "smartConfig":Lcom/integrity_project/smartconfiglib/SmartConfig;
    invoke-virtual {v4}, Lcom/integrity_project/smartconfiglib/SmartConfig;->transmitSettings()V

    goto/16 :goto_0

    .line 602
    .end local v4    # "smartConfig":Lcom/integrity_project/smartconfiglib/SmartConfig;
    .end local v9    # "gateway":Ljava/lang/String;
    .end local v20    # "i":I
    :pswitch_9
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 611
    :pswitch_a
    const/16 v14, 0xc8

    .line 614
    .local v14, "connect_count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v5}, Lcom/realtek/simpleconfiglib/SCLibrary;->WifiGetIpInt()I

    move-result v38

    .line 616
    .local v38, "wifiIP":I
    :goto_5
    if-lez v14, :cond_8

    if-nez v38, :cond_8

    .line 617
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v5}, Lcom/realtek/simpleconfiglib/SCLibrary;->WifiGetIpInt()I

    move-result v38

    .line 618
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 620
    :cond_8
    if-nez v38, :cond_9

    .line 621
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Allocating IP, please wait a moment"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 623
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v5}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_reset()V

    .line 624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_set_default_pin(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_set_pin(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_set_ssid(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_set_password(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_set_ip(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v5}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_build_profile()V

    .line 632
    const v5, 0x1d4c0

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->ProfileSendTimeMillis:I

    .line 636
    const/16 v5, 0x32

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->ProfileSendTimeIntervalMs:I

    .line 638
    const/4 v5, 0x0

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    .line 640
    const/4 v5, 0x1

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->EachPacketSendCounts:I

    .line 642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->TimesupFlag_cfg:Z

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$600(Lcom/accloud/cloudservice/ACDeviceActivator;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v5}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_start()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 648
    const/16 v36, 0x0

    .line 651
    .local v36, "watchCount":I
    :cond_a
    const-wide/16 v6, 0x3e8

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 652
    move/from16 v0, v36

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v36, v0

    .line 653
    move-object/from16 v0, p0

    iget v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->TimeOut:I

    move/from16 v0, v36

    if-lt v0, v5, :cond_b

    .line 654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->TimesupFlag_cfg:Z

    .line 655
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-boolean v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->TimesupFlag_cfg:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v5, :cond_c

    const/16 v5, 0x7530

    move/from16 v0, v36

    if-lt v0, v5, :cond_a

    .line 660
    :cond_c
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-boolean v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->TimesupFlag_cfg:Z

    if-nez v5, :cond_1

    .line 661
    const/4 v15, 0x0

    .line 663
    .local v15, "count":I
    const/16 v5, 0xc8

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->ProfileSendTimeIntervalMs:I

    .line 665
    const/16 v5, 0xa

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    .line 667
    const/4 v5, 0x1

    sput v5, Lcom/realtek/simpleconfiglib/SCLibrary;->EachPacketSendCounts:I
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 671
    :cond_d
    const-wide/16 v6, 0x3e8

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 672
    add-int/lit8 v15, v15, 0x1

    .line 673
    move-object/from16 v0, p0

    iget v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->TimeOut:I

    add-int/lit16 v5, v5, -0x7530

    div-int/lit16 v5, v5, 0x3e8
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    sub-int/2addr v5, v15

    if-gez v5, :cond_d

    .line 678
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v5}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_stop()V

    goto/16 :goto_0

    .line 682
    .end local v14    # "connect_count":I
    .end local v15    # "count":I
    .end local v36    # "watchCount":I
    .end local v38    # "wifiIP":I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    if-nez v5, :cond_1

    .line 683
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    new-instance v6, Lcom/AI6060H/SendUdpThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-static {v10}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v10

    invoke-direct {v6, v7, v8, v10}, Lcom/AI6060H/SendUdpThread;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v6, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    .line 684
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/AI6060H/SendUdpThread;->setExitProcess(Z)V

    .line 685
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    invoke-virtual {v5}, Lcom/AI6060H/SendUdpThread;->start()V

    goto/16 :goto_0

    .line 689
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xlwDevice:Lcom/xlwtech/util/XlwDevice;

    new-instance v6, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$6;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V

    invoke-virtual {v5, v6}, Lcom/xlwtech/util/XlwDevice;->SetXlwDeviceListener(Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->xlwDevice:Lcom/xlwtech/util/XlwDevice;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->Password:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->TimeOut:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/xlwtech/util/XlwDevice;->SmartConfigStart(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 774
    .restart local v13    # "buf":[B
    .restart local v19    # "headPacket":Ljava/net/DatagramPacket;
    .restart local v23    # "message":Lcom/accloud/service/ACMessage;
    .restart local v24    # "majorDomainId":J
    .restart local v27    # "msgHead":Lcom/accloud/service/ACMessageHead;
    .restart local v29    # "payload":[B
    .restart local v34    # "subDomainId":J
    :cond_e
    new-instance v30, Ljava/lang/String;

    const/16 v5, 0x8

    invoke-virtual/range {v27 .. v27}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .restart local v30    # "physicalDeviceId":Ljava/lang/String;
    goto/16 :goto_2

    .line 785
    .restart local v26    # "msg":Landroid/os/Message;
    :cond_f
    sget-wide v6, Lcom/accloud/cloudservice/AC;->majorDomainId:J

    cmp-long v5, v24, v6

    if-nez v5, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/accloud/cloudservice/ACDeviceActivator;->access$702(Lcom/accloud/cloudservice/ACDeviceActivator;Z)Z

    .line 787
    new-instance v5, Lcom/accloud/service/ACDeviceBind;

    move-wide/from16 v0, v34

    move-object/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/accloud/service/ACDeviceBind;-><init>(JLjava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v5, v5, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 798
    .end local v13    # "buf":[B
    .end local v19    # "headPacket":Ljava/net/DatagramPacket;
    .end local v23    # "message":Lcom/accloud/service/ACMessage;
    .end local v24    # "majorDomainId":J
    .end local v26    # "msg":Landroid/os/Message;
    .end local v27    # "msgHead":Lcom/accloud/service/ACMessageHead;
    .end local v29    # "payload":[B
    .end local v30    # "physicalDeviceId":Ljava/lang/String;
    .end local v34    # "subDomainId":J
    .local v18, "e":Ljava/net/SocketTimeoutException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-virtual {v5}, Lcom/accloud/cloudservice/ACDeviceActivator;->stopAbleLink()V

    goto/16 :goto_3

    .line 676
    .end local v18    # "e":Ljava/net/SocketTimeoutException;
    .restart local v14    # "connect_count":I
    .restart local v15    # "count":I
    .restart local v36    # "watchCount":I
    .restart local v38    # "wifiIP":I
    :catch_3
    move-exception v5

    goto/16 :goto_7

    .line 656
    .end local v15    # "count":I
    :catch_4
    move-exception v5

    goto/16 :goto_6

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
