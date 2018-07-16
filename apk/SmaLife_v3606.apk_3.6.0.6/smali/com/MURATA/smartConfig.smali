.class public Lcom/MURATA/smartConfig;
.super Ljava/lang/Object;
.source "smartConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/MURATA/smartConfig$eachConfigTask;
    }
.end annotation


# static fields
.field static PswdStr:Ljava/lang/String;

.field static SsidStr:Ljava/lang/String;

.field private static configTimer:Ljava/util/Timer;

.field private static config_times:I

.field private static eachConfigTask:Lcom/MURATA/smartConfig$eachConfigTask;

.field static ipaddr:Ljava/net/InetAddress;

.field static random_data:I

.field private static receiveData:[B

.field static sendData:[B

.field static udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

.field private static udpSocket:Lcom/MURATA/UdpSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/MURATA/smartConfig;->sendData:[B

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/MURATA/smartConfig;->configTimer:Ljava/util/Timer;

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/MURATA/smartConfig;->config_times:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/MURATA/smartConfig;->config_times:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/MURATA/smartConfig;->config_times:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/MURATA/smartConfig;->config_times:I

    return v0
.end method

.method static synthetic access$200()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/MURATA/smartConfig;->configTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public static byteArrayToInt([B)I
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 188
    aget-byte v2, p0, v0

    or-int/2addr v1, v2

    .line 189
    shl-int/lit8 v1, v1, 0x8

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return v1
.end method

.method public static checkReceiveData(I)Z
    .locals 1
    .param p0, "data"    # I

    .prologue
    .line 55
    sget v0, Lcom/MURATA/smartConfig;->random_data:I

    if-ne p0, v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 2
    .param p0, "ipaddr"    # Ljava/net/InetAddress;
    .param p1, "desaddr1"    # Ljava/net/InetAddress;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/MURATA/UdpSocket;->createUdp(Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/MURATA/UdpCallBackIf;)Lcom/MURATA/UdpSocket;

    move-result-object v0

    sput-object v0, Lcom/MURATA/smartConfig;->udpSocket:Lcom/MURATA/UdpSocket;

    .line 110
    sget-object v0, Lcom/MURATA/smartConfig;->udpSocket:Lcom/MURATA/UdpSocket;

    sget-object v1, Lcom/MURATA/smartConfig;->sendData:[B

    invoke-virtual {v0, v1}, Lcom/MURATA/UdpSocket;->send([B)V

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/MURATA/smartConfig;->sleep(I)V

    .line 112
    sget-object v0, Lcom/MURATA/smartConfig;->udpSocket:Lcom/MURATA/UdpSocket;

    invoke-virtual {v0}, Lcom/MURATA/UdpSocket;->closeUdpSocket()V

    .line 113
    return-void
.end method

.method public static getLocalIpAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 171
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 172
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 173
    .local v0, "i":I
    invoke-static {v0}, Lcom/MURATA/smartConfig;->int2ip(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getReceiveData()[B
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/MURATA/smartConfig;->receiveData:[B

    return-object v0
.end method

.method public static int2ip(I)Ljava/lang/String;
    .locals 3
    .param p0, "ipInt"    # I

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "ipStr":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static declared-synchronized receiveData()V
    .locals 2

    .prologue
    .line 212
    const-class v1, Lcom/MURATA/smartConfig;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/MURATA/smartConfig$1;

    invoke-direct {v0}, Lcom/MURATA/smartConfig$1;-><init>()V

    invoke-virtual {v0}, Lcom/MURATA/smartConfig$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit v1

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setReceiveData([B)V
    .locals 0
    .param p0, "data"    # [B

    .prologue
    .line 204
    sput-object p0, Lcom/MURATA/smartConfig;->receiveData:[B

    .line 205
    return-void
.end method

.method public static sleep(I)V
    .locals 4
    .param p0, "time"    # I

    .prologue
    .line 32
    int-to-long v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static starConfigEach(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "etSsidStr"    # Ljava/lang/String;
    .param p1, "etPswdStr"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v3, 0x1

    .local v3, "header":I
    :goto_0
    const/4 v7, 0x6

    if-ge v3, v7, :cond_0

    .line 127
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.118."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 128
    .local v0, "desaddr1":Ljava/net/InetAddress;
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 129
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.118."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "desaddr1":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v4, v7, 0x3

    .line 134
    .local v4, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.119.6."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 135
    .restart local v0    # "desaddr1":Ljava/net/InetAddress;
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 136
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.119.6."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.120.7."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 140
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 141
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.120.7."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.120.8."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 144
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 145
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.120.8."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "payload_str":Ljava/lang/String;
    const/16 v5, 0x9

    .local v5, "payload_length":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x9

    if-ge v5, v7, :cond_1

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.120."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, -0x9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 150
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 151
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.120."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, -0x9

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.120."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/MURATA/smartConfig;->random_data:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 155
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 156
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.120."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/MURATA/smartConfig;->random_data:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    add-int/lit8 v7, v4, 0x6

    add-int/lit8 v2, v7, 0x1

    .line 159
    .local v2, "end_num":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "224.121."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".11"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 160
    sget-object v7, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    invoke-static {v7, v0}, Lcom/MURATA/smartConfig;->eachSocket(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 161
    const-string v7, "starConfigEach"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "224.121."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".11"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "desaddr1":Ljava/net/InetAddress;
    .end local v2    # "end_num":I
    .end local v4    # "length":I
    .end local v5    # "payload_length":I
    .end local v6    # "payload_str":Ljava/lang/String;
    :goto_2
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2
.end method

.method public static startConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/MURATA/UdpCallBackIf;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "etSsidStr"    # Ljava/lang/String;
    .param p2, "etPswdStr"    # Ljava/lang/String;
    .param p3, "callBackIf"    # Lcom/MURATA/UdpCallBackIf;

    .prologue
    .line 82
    :try_start_0
    sget-object v0, Lcom/MURATA/smartConfig;->sendData:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/MURATA/smartConfig;->config_times:I

    .line 84
    sput-object p1, Lcom/MURATA/smartConfig;->SsidStr:Ljava/lang/String;

    .line 85
    sput-object p2, Lcom/MURATA/smartConfig;->PswdStr:Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/MURATA/smartConfig;->random_data:I

    .line 87
    invoke-static {p0}, Lcom/MURATA/smartConfig;->getLocalIpAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    .line 89
    sget-object v0, Lcom/MURATA/smartConfig;->ipaddr:Ljava/net/InetAddress;

    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/MURATA/UdpBroadCastSocket;->createUdp(Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/MURATA/UdpCallBackIf;)Lcom/MURATA/UdpBroadCastSocket;

    move-result-object v0

    sput-object v0, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    .line 91
    sget-object v0, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    sget-object v1, Lcom/MURATA/smartConfig;->sendData:[B

    invoke-virtual {v0, v1}, Lcom/MURATA/UdpBroadCastSocket;->send([B)V

    .line 92
    sget-object v0, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v0}, Lcom/MURATA/UdpBroadCastSocket;->receive()V

    .line 93
    sget-object v0, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v0}, Lcom/MURATA/UdpBroadCastSocket;->checkTimeout()V

    .line 96
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/MURATA/smartConfig;->configTimer:Ljava/util/Timer;

    .line 97
    new-instance v0, Lcom/MURATA/smartConfig$eachConfigTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/MURATA/smartConfig$eachConfigTask;-><init>(Lcom/MURATA/smartConfig$1;)V

    sput-object v0, Lcom/MURATA/smartConfig;->eachConfigTask:Lcom/MURATA/smartConfig$eachConfigTask;

    .line 98
    sget-object v0, Lcom/MURATA/smartConfig;->configTimer:Ljava/util/Timer;

    sget-object v1, Lcom/MURATA/smartConfig;->eachConfigTask:Lcom/MURATA/smartConfig$eachConfigTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v6

    .line 103
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ACDeviceActive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MURUTA Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopConfig()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v0}, Lcom/MURATA/UdpBroadCastSocket;->closeUdpSocket()V

    .line 68
    :cond_0
    sget-object v0, Lcom/MURATA/smartConfig;->configTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/MURATA/smartConfig;->configTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 71
    :cond_1
    sget-object v0, Lcom/MURATA/smartConfig;->eachConfigTask:Lcom/MURATA/smartConfig$eachConfigTask;

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/MURATA/smartConfig;->eachConfigTask:Lcom/MURATA/smartConfig$eachConfigTask;

    invoke-virtual {v0}, Lcom/MURATA/smartConfig$eachConfigTask;->cancel()Z

    .line 77
    :cond_2
    return-void
.end method
