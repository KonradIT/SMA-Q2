.class public Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;
.super Ljava/lang/Object;
.source "SnifferSmartLinkerSendAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private CONTENT_CHECKSUM_BEFORE_DELAY_TIME:I

.field private CONTENT_COUNT:I

.field private CONTENT_GROUP_DELAY_TIME:I

.field private CONTENT_PACKAGE_DELAY_TIME:I

.field private HEADER_CAPACITY:I

.field private HEADER_COUNT:I

.field private HEADER_PACKAGE_DELAY_TIME:I

.field private mBroadcastInetAddress:Ljava/net/InetAddress;

.field private mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

.field private mSocket:Ljava/net/DatagramSocket;

.field private mSsid:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/DatagramSocket;Lcom/hiflying/smartlink/ISmartLinker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .param p3, "smartLinker"    # Lcom/hiflying/smartlink/ISmartLinker;
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xc8

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->HEADER_COUNT:I

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->HEADER_PACKAGE_DELAY_TIME:I

    .line 18
    const/16 v0, 0x4c

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->HEADER_CAPACITY:I

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_COUNT:I

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_PACKAGE_DELAY_TIME:I

    .line 21
    const/16 v0, 0x64

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_CHECKSUM_BEFORE_DELAY_TIME:I

    .line 22
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_GROUP_DELAY_TIME:I

    .line 24
    const v0, 0xc34f

    iput v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->port:I

    .line 34
    iput-object p1, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSocket:Ljava/net/DatagramSocket;

    .line 36
    iput-object p3, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    .line 37
    iput-object p4, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSsid:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->getBroadcastAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mBroadcastInetAddress:Ljava/net/InetAddress;

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params socket is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    if-nez p3, :cond_2

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params smartLinker is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    if-nez p5, :cond_3

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params password is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    return-void
.end method

.method private genPackageContents(I)[B
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 142
    new-array v0, p1, [B

    .line 143
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 146
    return-object v0

    .line 144
    :cond_0
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getBroadcastAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    .line 72
    .line 73
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 74
    .local v1, "cm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 75
    .local v4, "myDhcpInfo":Landroid/net/DhcpInfo;
    if-nez v4, :cond_0

    .line 76
    const-string v6, "255.255.255.255"

    .line 88
    :goto_0
    return-object v6

    .line 80
    :cond_0
    iget v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    iget v7, v4, Landroid/net/DhcpInfo;->netmask:I

    and-int/2addr v6, v7

    .line 81
    iget v7, v4, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v7, v7, -0x1

    .line 80
    or-int v0, v6, v7

    .line 82
    .local v0, "broadcast":I
    new-array v5, v8, [B

    .line 83
    .local v5, "quads":[B
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-lt v3, v8, :cond_1

    .line 86
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 84
    :cond_1
    mul-int/lit8 v6, v3, 0x8

    shr-int v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "255.255.255.255"

    goto :goto_0
.end method

.method private send([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSocket:Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, p1

    iget-object v4, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mBroadcastInetAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->port:I

    invoke-direct {v2, p1, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendContents()V
    .locals 10

    .prologue
    const/4 v7, 0x3

    .line 94
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->HEADER_CAPACITY:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->genPackageContents(I)[B

    move-result-object v4

    .line 95
    .local v4, "header":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v8}, Lcom/hiflying/smartlink/ISmartLinker;->isSmartLinking()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->HEADER_COUNT:I

    if-lt v5, v8, :cond_2

    .line 100
    :cond_0
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    new-array v2, v8, [I

    .line 101
    .local v2, "content":[I
    const/4 v8, 0x0

    const/16 v9, 0x59

    aput v9, v2, v8

    .line 102
    const/4 v5, 0x0

    :goto_1
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 105
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x56

    aput v9, v2, v8

    .line 107
    const/4 v3, 0x1

    .local v3, "count":I
    :goto_2
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v8}, Lcom/hiflying/smartlink/ISmartLinker;->isSmartLinking()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_COUNT:I

    if-le v3, v8, :cond_4

    .line 139
    :cond_1
    return-void

    .line 96
    .end local v2    # "content":[I
    .end local v3    # "count":I
    :cond_2
    invoke-direct {p0, v4}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->send([B)V

    .line 97
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->HEADER_PACKAGE_DELAY_TIME:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sleep(I)V

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .restart local v2    # "content":[I
    :cond_3
    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, 0x4c

    aput v9, v2, v8

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 109
    .restart local v3    # "count":I
    :cond_4
    const/4 v5, 0x0

    :goto_3
    array-length v8, v2

    if-lt v5, v8, :cond_6

    .line 123
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_CHECKSUM_BEFORE_DELAY_TIME:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sleep(I)V

    .line 127
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x100

    add-int/lit8 v1, v8, 0x4c

    .line 129
    .local v1, "checkLength":I
    const/4 v5, 0x0

    :goto_4
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v8}, Lcom/hiflying/smartlink/ISmartLinker;->isSmartLinking()Z

    move-result v8

    if-eqz v8, :cond_5

    if-lt v5, v7, :cond_d

    .line 137
    :cond_5
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_GROUP_DELAY_TIME:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sleep(I)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 111
    .end local v1    # "checkLength":I
    :cond_6
    if-eqz v5, :cond_7

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_a

    :cond_7
    move v0, v7

    .line 112
    .local v0, "_count":I
    :goto_5
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    iget-object v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v8}, Lcom/hiflying/smartlink/ISmartLinker;->isSmartLinking()Z

    move-result v8

    if-eqz v8, :cond_8

    if-lt v6, v0, :cond_b

    .line 118
    :cond_8
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-eq v5, v8, :cond_9

    .line 119
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_PACKAGE_DELAY_TIME:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sleep(I)V

    .line 109
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 111
    .end local v0    # "_count":I
    .end local v6    # "j":I
    :cond_a
    const/4 v0, 0x1

    goto :goto_5

    .line 113
    .restart local v0    # "_count":I
    .restart local v6    # "j":I
    :cond_b
    aget v8, v2, v5

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->genPackageContents(I)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->send([B)V

    .line 114
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-eq v5, v8, :cond_c

    .line 115
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_PACKAGE_DELAY_TIME:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sleep(I)V

    .line 112
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 130
    .end local v0    # "_count":I
    .end local v6    # "j":I
    .restart local v1    # "checkLength":I
    :cond_d
    invoke-direct {p0, v1}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->genPackageContents(I)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->send([B)V

    .line 131
    const/4 v8, 0x2

    if-ge v5, v8, :cond_e

    .line 132
    iget v8, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->CONTENT_PACKAGE_DELAY_TIME:I

    invoke-direct {p0, v8}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sleep(I)V

    .line 129
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private sleep(I)V
    .locals 4
    .param p1, "millseconds"    # I

    .prologue
    .line 65
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v0}, Lcom/hiflying/smartlink/ISmartLinker;->isSmartLinking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/hiflying/smartlink/v3/SnifferSmartLinkerSendAction;->sendContents()V

    goto :goto_0
.end method
