.class public Lcom/espressif/iot/esptouch/task/__EsptouchTask;
.super Ljava/lang/Object;
.source "__EsptouchTask.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/task/__IEsptouchTask;


# static fields
.field private static final ONE_DATA_LEN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EsptouchTask"


# instance fields
.field private final mApBssid:Ljava/lang/String;

.field private final mApPassword:Ljava/lang/String;

.field private final mApSsid:Ljava/lang/String;

.field private volatile mBssidTaskSucCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mEsptouchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/espressif/iot/esptouch/IEsptouchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsExecuted:Z

.field private volatile mIsInterrupt:Z

.field private final mIsSsidHidden:Z

.field private volatile mIsSuc:Z

.field private mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

.field private final mSocketClient:Lcom/espressif/iot/esptouch/udp/UDPSocketClient;

.field private final mSocketServer:Lcom/espressif/iot/esptouch/udp/UDPSocketServer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;Z)V
    .locals 3
    .param p1, "apSsid"    # Ljava/lang/String;
    .param p2, "apBssid"    # Ljava/lang/String;
    .param p3, "apPassword"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "parameter"    # Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;
    .param p6, "isSsidHidden"    # Z

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsSuc:Z

    .line 34
    iput-boolean v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsInterrupt:Z

    .line 35
    iput-boolean v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsExecuted:Z

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the apSsid should be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-nez p3, :cond_1

    .line 54
    const-string p3, ""

    .line 56
    :cond_1
    iput-object p4, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApSsid:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApBssid:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApPassword:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;

    invoke-direct {v0}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;-><init>()V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketClient:Lcom/espressif/iot/esptouch/udp/UDPSocketClient;

    .line 62
    iput-object p5, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    .line 63
    new-instance v0, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;

    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v1}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getPortListening()I

    move-result v1

    iget-object v2, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getWaitUdpTotalMillisecond()I

    move-result v2

    invoke-direct {v0, v1, v2, p4}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;-><init>(IILandroid/content/Context;)V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketServer:Lcom/espressif/iot/esptouch/udp/UDPSocketServer;

    .line 66
    iput-boolean p6, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsSsidHidden:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mBssidTaskSucCountMap:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private __checkTaskValid()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsExecuted:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the Esptouch task could be executed only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsExecuted:Z

    .line 275
    return-void
.end method

.method private __execute(Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;)Z
    .locals 20
    .param p1, "generator"    # Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;

    .prologue
    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 225
    .local v18, "startTime":J
    move-wide/from16 v12, v18

    .line 226
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTimeoutTotalCodeMillisecond()J

    move-result-wide v4

    sub-long v16, v12, v4

    .line 228
    .local v16, "lastTime":J
    invoke-interface/range {p1 .. p1}, Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;->getGCBytes2()[[B

    move-result-object v3

    .line 229
    .local v3, "gcBytes2":[[B
    invoke-interface/range {p1 .. p1}, Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;->getDCBytes2()[[B

    move-result-object v14

    .line 231
    .local v14, "dcBytes2":[[B
    const/4 v15, 0x0

    .line 232
    .local v15, "index":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsInterrupt:Z

    if-nez v2, :cond_3

    .line 233
    sub-long v4, v12, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTimeoutTotalCodeMillisecond()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    .line 235
    const-string v2, "EsptouchTask"

    const-string v4, "send gc code "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsInterrupt:Z

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTimeoutGuideCodeMillisecond()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketClient:Lcom/espressif/iot/esptouch/udp/UDPSocketClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v4}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTargetHostname()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v5}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTargetPort()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v6}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getIntervalGuideCodeMillisecond()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->sendData([[BLjava/lang/String;IJ)V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getWaitUdpSendingMillisecond()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 250
    :cond_2
    move-wide/from16 v16, v12

    .line 258
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 260
    sub-long v4, v12, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getWaitUdpSendingMillisecond()I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 265
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsSuc:Z

    return v2

    .line 252
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketClient:Lcom/espressif/iot/esptouch/udp/UDPSocketClient;

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTargetHostname()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTargetPort()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v2}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getIntervalDataCodeMillisecond()J

    move-result-wide v10

    move-object v5, v14

    move v6, v15

    invoke-virtual/range {v4 .. v11}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->sendData([[BIILjava/lang/String;IJ)V

    .line 256
    add-int/lit8 v2, v15, 0x3

    array-length v4, v14

    rem-int v15, v2, v4

    goto :goto_0
.end method

.method private __getEsptouchResultList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/espressif/iot/esptouch/IEsptouchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Lcom/espressif/iot/esptouch/EsptouchResult;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/espressif/iot/esptouch/EsptouchResult;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 119
    .local v0, "esptouchResultFail":Lcom/espressif/iot/esptouch/EsptouchResult;
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/espressif/iot/esptouch/EsptouchResult;->setIsCancelled(Z)V

    .line 120
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v0    # "esptouchResultFail":Lcom/espressif/iot/esptouch/EsptouchResult;
    :cond_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    monitor-exit v2

    return-object v1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized __interrupt()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsInterrupt:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsInterrupt:Z

    .line 129
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketClient:Lcom/espressif/iot/esptouch/udp/UDPSocketClient;

    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/udp/UDPSocketClient;->interrupt()V

    .line 130
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketServer:Lcom/espressif/iot/esptouch/udp/UDPSocketServer;

    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->interrupt()V

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private __listenAsyn(I)V
    .locals 1
    .param p1, "expectDataLen"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;

    invoke-direct {v0, p0, p1}, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;-><init>(Lcom/espressif/iot/esptouch/task/__EsptouchTask;I)V

    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->start()V

    .line 220
    return-void
.end method

.method private __putEsptouchResult(ZLjava/lang/String;Ljava/net/InetAddress;)V
    .locals 11
    .param p1, "isSuc"    # Z
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v7, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    monitor-enter v7

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, "isTaskSucCountEnough":Z
    :try_start_0
    iget-object v8, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mBssidTaskSucCountMap:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 78
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    const-string v8, "EsptouchTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "__putEsptouchResult(): count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v8, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mBssidTaskSucCountMap:Ljava/util/Map;

    invoke-interface {v8, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v9}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getThresholdSucBroadcastCount()I

    move-result v9

    if-lt v8, v9, :cond_1

    const/4 v5, 0x1

    .line 87
    :goto_0
    if-nez v5, :cond_2

    .line 89
    const-string v6, "EsptouchTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "__putEsptouchResult(): count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isn\'t enough"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit v7

    .line 112
    :goto_1
    return-void

    :cond_1
    move v5, v6

    .line 85
    goto :goto_0

    .line 95
    :cond_2
    const/4 v4, 0x0

    .line 96
    .local v4, "isExist":Z
    iget-object v6, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/espressif/iot/esptouch/IEsptouchResult;

    .line 97
    .local v2, "esptouchResultInList":Lcom/espressif/iot/esptouch/IEsptouchResult;
    invoke-interface {v2}, Lcom/espressif/iot/esptouch/IEsptouchResult;->getBssid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    const/4 v4, 0x1

    .line 103
    .end local v2    # "esptouchResultInList":Lcom/espressif/iot/esptouch/IEsptouchResult;
    :cond_4
    if-nez v4, :cond_5

    .line 105
    const-string v6, "EsptouchTask"

    const-string v8, "__putEsptouchResult(): put one more result"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Lcom/espressif/iot/esptouch/EsptouchResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/espressif/iot/esptouch/EsptouchResult;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 109
    .local v1, "esptouchResult":Lcom/espressif/iot/esptouch/IEsptouchResult;
    iget-object v6, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v1    # "esptouchResult":Lcom/espressif/iot/esptouch/IEsptouchResult;
    :cond_5
    monitor-exit v7

    goto :goto_1

    .end local v0    # "count":Ljava/lang/Integer;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isExist":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method static synthetic access$000(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mEsptouchResultList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;
    .locals 1
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsInterrupt:Z

    return v0
.end method

.method static synthetic access$500(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/udp/UDPSocketServer;
    .locals 1
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mSocketServer:Lcom/espressif/iot/esptouch/udp/UDPSocketServer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/espressif/iot/esptouch/task/__EsptouchTask;ZLjava/lang/String;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/net/InetAddress;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__putEsptouchResult(ZLjava/lang/String;Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$702(Lcom/espressif/iot/esptouch/task/__EsptouchTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsSuc:Z

    return p1
.end method

.method static synthetic access$800(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__interrupt()V

    return-void
.end method


# virtual methods
.method public executeForResult()Lcom/espressif/iot/esptouch/IEsptouchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->executeForResults(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/espressif/iot/esptouch/IEsptouchResult;

    return-object v0
.end method

.method public executeForResults(I)Ljava/util/List;
    .locals 9
    .param p1, "expectTaskResultCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/espressif/iot/esptouch/IEsptouchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__checkTaskValid()V

    .line 292
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v1, p1}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->setExpectTaskResultCount(I)V

    .line 295
    const-string v1, "EsptouchTask"

    const-string v2, "execute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 298
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Don\'t call the esptouch Task at Main(UI) thread directly."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/espressif/iot/esptouch/util/EspNetUtil;->getLocalInetAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v4

    .line 303
    .local v4, "localInetAddress":Ljava/net/InetAddress;
    const-string v1, "EsptouchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localInetAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;

    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApSsid:Ljava/lang/String;

    iget-object v2, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApBssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mApPassword:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsSsidHidden:Z

    invoke-direct/range {v0 .. v5}, Lcom/espressif/iot/esptouch/protocol/EsptouchGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Z)V

    .line 310
    .local v0, "generator":Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v1}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getEsptouchResultTotalLen()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__listenAsyn(I)V

    .line 311
    const/4 v8, 0x0

    .line 312
    .local v8, "isSuc":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v1}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getTotalRepeatTime()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 313
    invoke-direct {p0, v0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__execute(Lcom/espressif/iot/esptouch/task/IEsptouchGenerator;)Z

    move-result v8

    .line 314
    if-eqz v8, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__getEsptouchResultList()Ljava/util/List;

    move-result-object v1

    .line 335
    :goto_1
    return-object v1

    .line 312
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 321
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mParameter:Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    invoke-interface {v1}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getWaitUdpReceivingMillisecond()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__interrupt()V

    .line 335
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__getEsptouchResultList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 322
    :catch_0
    move-exception v6

    .line 324
    .local v6, "e":Ljava/lang/InterruptedException;
    iget-boolean v1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsSuc:Z

    if-eqz v1, :cond_3

    .line 326
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__getEsptouchResultList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__interrupt()V

    .line 331
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__getEsptouchResultList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "EsptouchTask"

    const-string v1, "interrupt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    invoke-direct {p0}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__interrupt()V

    .line 143
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
