.class public Lcom/winnermicro/smartconfig/UDPMulticastConfig;
.super Ljava/lang/Object;
.source "UDPMulticastConfig.java"

# interfaces
.implements Lcom/winnermicro/smartconfig/ISmartConfig;


# static fields
.field private static final SLEEP_TIME:I = 0x1


# instance fields
.field private clientSocket:Ljava/net/DatagramSocket;

.field private context:Landroid/content/Context;

.field private isFirst:Z

.field private isWorking:Z

.field private pConfig:Lcom/winnermicro/smartconfig/PestConfig;

.field private property:Lcom/winnermicro/smartconfig/ConfigProperty;

.field private sendPerBytes:[B

.field private sendPerIndex:I

.field private totalByteCount:I

.field private totalByteIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->clientSocket:Ljava/net/DatagramSocket;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isFirst:Z

    .line 19
    iput-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    .line 20
    iput-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 21
    iput-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->context:Landroid/content/Context;

    .line 22
    iput-boolean v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isWorking:Z

    .line 23
    iput v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteCount:I

    .line 24
    iput v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerBytes:[B

    .line 52
    iput v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    .line 26
    iput-object p1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->context:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/winnermicro/smartconfig/PestConfig;

    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/winnermicro/smartconfig/PestConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    .line 28
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-virtual {v0}, Lcom/winnermicro/smartconfig/PestConfig;->getProperty()Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 29
    return-void
.end method

.method private getAndroidSDKVersion()I
    .locals 4

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "version":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendByte(B)Z
    .locals 7
    .param p1, "bSend"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    iget v4, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    if-nez v4, :cond_1

    .line 55
    iget-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerBytes:[B

    iget v4, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    aput-byte p1, v2, v4

    .line 56
    iget v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    :cond_0
    move v2, v3

    .line 67
    :goto_0
    return v2

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerBytes:[B

    iget v5, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    aput-byte p1, v4, v5

    .line 60
    iput v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    .line 61
    const-string v4, "1"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 62
    .local v1, "sendData":[B
    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, -0x11

    aput-byte v5, v4, v2

    iget v5, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerBytes:[B

    aget-byte v6, v6, v2

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerBytes:[B

    aget-byte v6, v6, v3

    aput-byte v6, v4, v5

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 63
    .local v0, "IPAddress":Ljava/net/InetAddress;
    invoke-direct {p0, v1, v0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendData([BLjava/net/InetAddress;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method private sendData([BLjava/net/InetAddress;)Z
    .locals 4
    .param p1, "sendData"    # [B
    .param p2, "IPAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    :goto_0
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget-boolean v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    if-lez v1, :cond_3

    .line 107
    new-instance v1, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v2, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v1, v2}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v1

    .line 96
    :cond_0
    iget-boolean v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isWorking:Z

    if-nez v1, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 116
    :goto_1
    return v1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    if-lez v1, :cond_2

    .line 101
    new-instance v1, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v2, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v1, v2}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v1

    .line 103
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "UDP Waiting SCAN END"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 110
    :cond_3
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    const/16 v2, 0x2694

    invoke-direct {v0, p1, v1, p2, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 111
    .local v0, "sendPacket":Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "sendPacket":Ljava/net/DatagramPacket;
    :goto_2
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    const/4 v1, 0x1

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private sendDataWithType(Ljava/lang/String;B)Z
    .locals 16
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # B

    .prologue
    .line 134
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isWorking:Z

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/4 v14, 0x0

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->context:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 137
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v12, :cond_0

    .line 138
    const/4 v13, 0x0

    .line 199
    :goto_0
    return v13

    .line 140
    :cond_0
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v14, 0x65

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 142
    new-instance v13, Lcom/winnermicro/smartconfig/OneShotException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v13, v14}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v13

    .line 144
    :cond_1
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 145
    .local v11, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v11, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v14, 0x66

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 147
    new-instance v13, Lcom/winnermicro/smartconfig/OneShotException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v13, v14}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v13

    .line 149
    :cond_2
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 151
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v12, v0, v1}, Lcom/winnermicro/smartconfig/PestConfig;->startP(Landroid/net/wifi/WifiManager;Ljava/lang/String;B)V

    .line 154
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "ssid":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->getAndroidSDKVersion()I

    move-result v10

    .line 156
    .local v10, "version":I
    const/16 v13, 0x10

    if-le v10, v13, :cond_5

    const-string v13, "\""

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "\""

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 157
    const/4 v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 159
    :cond_5
    new-instance v7, Lcom/winnermicro/smartconfig/PackManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    invoke-direct {v7, v13}, Lcom/winnermicro/smartconfig/PackManager;-><init>(Lcom/winnermicro/smartconfig/ConfigProperty;)V

    .line 160
    .local v7, "packM":Lcom/winnermicro/smartconfig/PackManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v8, "packs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v3, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_7

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v7, v9}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x4

    aput-byte v15, v13, v14

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_1
    invoke-virtual {v7, v3}, Lcom/winnermicro/smartconfig/PackManager;->preparePacks(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteCount:I

    .line 176
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isFirst:Z

    if-eqz v13, :cond_6

    .line 181
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isFirst:Z

    .line 182
    new-instance v13, Ljava/net/DatagramSocket;

    invoke-direct {v13}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->clientSocket:Ljava/net/DatagramSocket;

    .line 185
    :cond_6
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPause(I)Z

    move-result v13

    if-nez v13, :cond_9

    .line 186
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "user stopped!"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Lcom/winnermicro/smartconfig/OneShotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :catch_0
    move-exception v5

    .line 193
    .local v5, "one":Lcom/winnermicro/smartconfig/OneShotException;
    invoke-virtual {v5}, Lcom/winnermicro/smartconfig/OneShotException;->printStackTrace()V

    .line 194
    throw v5

    .line 171
    .end local v5    # "one":Lcom/winnermicro/smartconfig/OneShotException;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    aput-byte p2, v13, v14

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 177
    .local v6, "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteCount:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteCount:I

    goto :goto_2

    .line 188
    .end local v6    # "pack":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_a

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendLastByte()Z

    .line 199
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 188
    :cond_a
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 189
    .restart local v6    # "pack":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPack([B)V
    :try_end_1
    .catch Lcom/winnermicro/smartconfig/OneShotException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 195
    .end local v6    # "pack":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 196
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private sendLastByte()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    iget v4, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    if-ne v4, v3, :cond_0

    .line 71
    const-string v4, "1"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 72
    .local v1, "sendData":[B
    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, -0x11

    aput-byte v5, v4, v2

    iget v5, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerBytes:[B

    aget-byte v6, v6, v2

    aput-byte v6, v4, v5

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 73
    .local v0, "IPAddress":Ljava/net/InetAddress;
    invoke-direct {p0, v1, v0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendData([BLjava/net/InetAddress;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    .end local v0    # "IPAddress":Ljava/net/InetAddress;
    .end local v1    # "sendData":[B
    :goto_0
    return v2

    .line 77
    :cond_0
    iput v2, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendPerIndex:I

    move v2, v3

    .line 78
    goto :goto_0
.end method

.method private sendPack([B)V
    .locals 4
    .param p1, "pack"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 50
    return-void

    .line 45
    :cond_0
    aget-byte v0, p1, v1

    .line 46
    .local v0, "send":B
    invoke-direct {p0, v0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendByte(B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "user stopped!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendPause(I)Z
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "i":I
    const-string v5, "1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 83
    .local v2, "sendData":[B
    iput v3, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    .line 84
    const/4 v5, 0x4

    new-array v5, v5, [B

    const/16 v6, -0x11

    aput-byte v6, v5, v3

    iget v6, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    const/4 v6, 0x2

    const/16 v7, 0x64

    aput-byte v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteCount:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 85
    .local v0, "IPAddress":Ljava/net/InetAddress;
    :goto_0
    if-lt v1, p1, :cond_1

    .line 91
    iget v3, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->totalByteIndex:I

    move v3, v4

    .line 92
    :cond_0
    return v3

    .line 86
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendData([BLjava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public sendData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 130
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendDataWithType(Ljava/lang/String;B)Z

    move-result v0

    return v0
.end method

.method public startConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winnermicro/smartconfig/OneShotException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->sendDataWithType(Ljava/lang/String;B)Z

    move-result v0

    return v0
.end method

.method public stopConfig()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isWorking:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->isFirst:Z

    .line 39
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->clientSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-virtual {v0}, Lcom/winnermicro/smartconfig/PestConfig;->stopConfig()V

    .line 43
    return-void
.end method
