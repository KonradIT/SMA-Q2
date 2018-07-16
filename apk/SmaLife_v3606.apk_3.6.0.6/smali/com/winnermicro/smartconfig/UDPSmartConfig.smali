.class public Lcom/winnermicro/smartconfig/UDPSmartConfig;
.super Ljava/lang/Object;
.source "UDPSmartConfig.java"

# interfaces
.implements Lcom/winnermicro/smartconfig/ISmartConfig;


# static fields
.field private static final PACKAGE_SIZE:I = 0x4

.field private static final SLEEP_TIME:I = 0x1


# instance fields
.field private clientSocket:Ljava/net/DatagramSocket;

.field private context:Landroid/content/Context;

.field private isFirst:Z

.field private isWorking:Z

.field private pConfig:Lcom/winnermicro/smartconfig/PestConfig;

.field private property:Lcom/winnermicro/smartconfig/ConfigProperty;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->clientSocket:Ljava/net/DatagramSocket;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isFirst:Z

    .line 20
    iput-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    .line 21
    iput-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 22
    iput-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->context:Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isWorking:Z

    .line 25
    iput-object p1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->context:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/winnermicro/smartconfig/PestConfig;

    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/winnermicro/smartconfig/PestConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    .line 27
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-virtual {v0}, Lcom/winnermicro/smartconfig/PestConfig;->getProperty()Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 28
    return-void
.end method

.method private getAndroidSDKVersion()I
    .locals 4

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "version":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private preparePack(BLjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "sign"    # B
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/winnermicro/smartconfig/PackManager;

    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    invoke-direct {v0, v1}, Lcom/winnermicro/smartconfig/PackManager;-><init>(Lcom/winnermicro/smartconfig/ConfigProperty;)V

    .line 90
    .local v0, "packM":Lcom/winnermicro/smartconfig/PackManager;
    invoke-virtual {v0, p2}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->preparePack(B[B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private preparePack(B[B)Ljava/util/List;
    .locals 12
    .param p1, "sign"    # B
    .param p2, "byteArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v5, Lcom/winnermicro/smartconfig/PackManager;

    iget-object v9, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    invoke-direct {v5, v9}, Lcom/winnermicro/smartconfig/PackManager;-><init>(Lcom/winnermicro/smartconfig/ConfigProperty;)V

    .line 94
    .local v5, "packM":Lcom/winnermicro/smartconfig/PackManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v2, p2

    .line 96
    .local v2, "len":I
    rem-int/lit8 v9, v2, 0x4

    if-nez v9, :cond_0

    if-lez v2, :cond_0

    div-int/lit8 v9, v2, 0x4

    :goto_0
    and-int/lit8 v8, v9, 0x1f

    .line 97
    .local v8, "sum":I
    mul-int/lit8 v9, p1, 0x10

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    int-to-byte v4, v9

    .line 98
    .local v4, "pack0":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v8, :cond_1

    .line 112
    return-object v6

    .line 96
    .end local v0    # "i":I
    .end local v4    # "pack0":B
    .end local v8    # "sum":I
    :cond_0
    div-int/lit8 v9, v2, 0x4

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 99
    .restart local v0    # "i":I
    .restart local v4    # "pack0":B
    .restart local v8    # "sum":I
    :cond_1
    mul-int/lit8 v9, v0, 0x4

    sub-int v7, v2, v9

    .line 100
    .local v7, "size":I
    const/4 v9, 0x4

    if-le v7, v9, :cond_2

    .line 101
    const/4 v7, 0x4

    .line 103
    :cond_2
    add-int/lit8 v9, v7, 0x3

    new-array v3, v9, [B

    .line 104
    .local v3, "pack":[B
    const/4 v9, 0x0

    aput-byte v4, v3, v9

    .line 105
    const/4 v9, 0x1

    mul-int/lit8 v10, v0, 0x10

    and-int/lit8 v11, v7, 0xf

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 106
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, v7, :cond_3

    .line 109
    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v5, v3, v10}, Lcom/winnermicro/smartconfig/PackManager;->calCRC8([BI)B

    move-result v10

    aput-byte v10, v3, v9

    .line 110
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_3
    add-int/lit8 v9, v1, 0x2

    mul-int/lit8 v10, v0, 0x4

    add-int/2addr v10, v1

    aget-byte v10, p2, v10

    aput-byte v10, v3, v9

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private sendByte(B)Z
    .locals 6
    .param p1, "bSend"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v2, 0x1

    .line 128
    .local v2, "i":I
    const/4 v1, 0x0

    .line 129
    .local v1, "blen":I
    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 130
    .local v0, "IPAddress":Ljava/net/InetAddress;
    :goto_0
    if-gez v2, :cond_0

    .line 141
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 131
    :cond_0
    mul-int/lit8 v5, v2, 0x4

    shr-int v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v1, v5, 0x2

    .line 132
    new-array v4, v1, [B

    .line 133
    .local v4, "sendData":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v1, :cond_1

    .line 136
    invoke-direct {p0, v4, v0}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->sendData([BLjava/net/InetAddress;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    const/4 v5, 0x0

    goto :goto_1

    .line 134
    :cond_1
    const/16 v5, 0x41

    aput-byte v5, v4, v3

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 139
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 129
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
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
    .line 156
    :goto_0
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget-boolean v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    if-lez v1, :cond_3

    .line 168
    new-instance v1, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v2, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v1, v2}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v1

    .line 157
    :cond_0
    iget-boolean v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isWorking:Z

    if-nez v1, :cond_1

    .line 159
    const/4 v1, 0x0

    .line 177
    :goto_1
    return v1

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    if-lez v1, :cond_2

    .line 162
    new-instance v1, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v2, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v1, v2}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v1

    .line 164
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "UDP Waiting SCAN END"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 171
    :cond_3
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    const/16 v2, 0x2694

    invoke-direct {v0, p1, v1, p2, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 172
    .local v0, "sendPacket":Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "sendPacket":Ljava/net/DatagramPacket;
    :goto_2
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 177
    const/4 v1, 0x1

    goto :goto_1

    .line 173
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private sendPack([B)V
    .locals 6
    .param p1, "pack"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x14

    .line 115
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->sendPause(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "user stopped!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 119
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    return-void

    .line 119
    :cond_1
    aget-byte v0, p1, v1

    .line 120
    .local v0, "send":B
    invoke-direct {p0, v0}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->sendByte(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "user stopped!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendPause(I)Z
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "i":I
    const-string v3, "1"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 146
    .local v2, "sendData":[B
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 147
    .local v0, "IPAddress":Ljava/net/InetAddress;
    :goto_0
    if-lt v1, p1, :cond_0

    .line 153
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 148
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->sendData([BLjava/net/InetAddress;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    const/4 v3, 0x0

    goto :goto_1

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public sendData(Ljava/lang/String;)Z
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v6, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->context:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 192
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v5

    .line 195
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 199
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, "packs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x2

    :try_start_0
    invoke-direct {p0, v5, p1}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->preparePack(BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-boolean v5, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isFirst:Z

    if-eqz v5, :cond_2

    .line 206
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isFirst:Z

    .line 207
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->clientSocket:Ljava/net/DatagramSocket;

    .line 210
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 216
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 210
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 211
    .local v1, "pack":[B
    invoke-direct {p0, v1}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->sendPack([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    .end local v1    # "pack":[B
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public startConfig(Ljava/lang/String;)Z
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winnermicro/smartconfig/OneShotException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    iput-boolean v10, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isWorking:Z

    .line 32
    iget-object v11, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iput v9, v11, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 33
    iget-object v11, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->context:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 34
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v8, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v9

    .line 37
    :cond_1
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 38
    iget-object v9, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v10, 0x65

    iput v10, v9, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 39
    new-instance v9, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v10, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v10, v10, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v9, v10}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v9

    .line 41
    :cond_2
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 42
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v7, :cond_3

    .line 43
    iget-object v9, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v10, 0x66

    iput v10, v9, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 44
    new-instance v9, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v10, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v10, v10, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v9, v10}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v9

    .line 46
    :cond_3
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 50
    iget-object v11, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-virtual {v11, v8, p1}, Lcom/winnermicro/smartconfig/PestConfig;->startP(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "ssid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->getAndroidSDKVersion()I

    move-result v6

    .line 53
    .local v6, "version":I
    const/16 v11, 0x10

    if-le v6, v11, :cond_4

    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 54
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 56
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "packs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v11, 0x1

    :try_start_0
    invoke-direct {p0, v11, p1}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->preparePack(BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-boolean v11, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isFirst:Z

    if-eqz v11, :cond_5

    .line 62
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isFirst:Z

    .line 63
    new-instance v11, Ljava/net/DatagramSocket;

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v11, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->clientSocket:Ljava/net/DatagramSocket;

    .line 66
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    move v9, v10

    .line 76
    goto/16 :goto_0

    .line 66
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 67
    .local v3, "pack":[B
    invoke-direct {p0, v3}, Lcom/winnermicro/smartconfig/UDPSmartConfig;->sendPack([B)V
    :try_end_0
    .catch Lcom/winnermicro/smartconfig/OneShotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 69
    .end local v3    # "pack":[B
    :catch_0
    move-exception v2

    .line 70
    .local v2, "one":Lcom/winnermicro/smartconfig/OneShotException;
    invoke-virtual {v2}, Lcom/winnermicro/smartconfig/OneShotException;->printStackTrace()V

    .line 71
    throw v2

    .line 72
    .end local v2    # "one":Lcom/winnermicro/smartconfig/OneShotException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public stopConfig()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isWorking:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->isFirst:Z

    .line 83
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->clientSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->clientSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/winnermicro/smartconfig/UDPSmartConfig;->pConfig:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-virtual {v0}, Lcom/winnermicro/smartconfig/PestConfig;->stopConfig()V

    .line 87
    return-void
.end method
