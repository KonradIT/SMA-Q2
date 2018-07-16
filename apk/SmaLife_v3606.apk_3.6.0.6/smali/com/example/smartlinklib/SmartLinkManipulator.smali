.class public Lcom/example/smartlinklib/SmartLinkManipulator;
.super Ljava/lang/Object;
.source "SmartLinkManipulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEVICE_COUNT_MULTIPLE:I = -0x1

.field public static final DEVICE_COUNT_ONE:I = 0x1

.field private static me:Lcom/example/smartlinklib/SmartLinkManipulator;


# instance fields
.field private CONTENT_CHECKSUM_BEFORE_DELAY_TIME:I

.field private CONTENT_COUNT:I

.field private CONTENT_GROUP_DELAY_TIME:I

.field private CONTENT_PACKAGE_DELAY_TIME:I

.field private HEADER_CAPACITY:I

.field private HEADER_COUNT:I

.field private HEADER_PACKAGE_DELAY_TIME:I

.field private final RET_KEY:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private broadCastIP:Ljava/lang/String;

.field private callback:Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

.field private dataPacket:Ljava/net/DatagramPacket;

.field findThread:Ljava/lang/Runnable;

.field private gateWay:Ljava/lang/String;

.field private inetAddressbroadcast:Ljava/net/InetAddress;

.field public isConnecting:Z

.field private isfinding:Z

.field private packetToSendbroadcast:Ljava/net/DatagramPacket;

.field private packetToSendgateway:Ljava/net/DatagramPacket;

.field private port:I

.field private pswd:Ljava/lang/String;

.field private receiveByte:[B

.field private socket:Ljava/net/DatagramSocket;

.field private ssid:Ljava/lang/String;

.field private successMacSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/example/smartlinklib/SmartLinkManipulator;->me:Lcom/example/smartlinklib/SmartLinkManipulator;

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "HFdebug"

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->successMacSet:Ljava/util/Set;

    .line 40
    const/16 v0, 0xc8

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->HEADER_COUNT:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->HEADER_PACKAGE_DELAY_TIME:I

    .line 42
    const/16 v0, 0x4c

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->HEADER_CAPACITY:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_COUNT:I

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_PACKAGE_DELAY_TIME:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_CHECKSUM_BEFORE_DELAY_TIME:I

    .line 47
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_GROUP_DELAY_TIME:I

    .line 48
    const-string v0, "smart_config"

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->RET_KEY:Ljava/lang/String;

    .line 50
    const v0, 0xc34f

    iput v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->port:I

    .line 51
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->receiveByte:[B

    .line 56
    iput-boolean v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    .line 65
    iput-boolean v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isfinding:Z

    .line 91
    new-instance v0, Lcom/example/smartlinklib/SmartLinkManipulator$1;

    invoke-direct {v0, p0}, Lcom/example/smartlinklib/SmartLinkManipulator$1;-><init>(Lcom/example/smartlinklib/SmartLinkManipulator;)V

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->findThread:Ljava/lang/Runnable;

    .line 68
    iput-boolean v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    .line 69
    iput-boolean v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isfinding:Z

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->successMacSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/smartlinklib/SmartLinkManipulator;)Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->callback:Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/smartlinklib/SmartLinkManipulator;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isfinding:Z

    return-void
.end method

.method static synthetic access$4(Lcom/example/smartlinklib/SmartLinkManipulator;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/example/smartlinklib/SmartLinkManipulator;->connect()V

    return-void
.end method

.method static synthetic access$5(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$6(Lcom/example/smartlinklib/SmartLinkManipulator;)Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->dataPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method static synthetic access$7(Lcom/example/smartlinklib/SmartLinkManipulator;)[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->receiveByte:[B

    return-object v0
.end method

.method private connect()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 193
    iget-object v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    const-string v11, "connect"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v3, 0x1

    .line 195
    .local v3, "count":I
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->HEADER_CAPACITY:I

    invoke-direct {p0, v10}, Lcom/example/smartlinklib/SmartLinkManipulator;->getBytes(I)[B

    move-result-object v5

    .line 196
    .local v5, "header":[B
    :goto_0
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->HEADER_COUNT:I

    if-gt v3, v10, :cond_0

    iget-boolean v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v10, :cond_2

    .line 205
    :cond_0
    iget-object v8, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->pswd:Ljava/lang/String;

    .line 206
    .local v8, "pwd":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    new-array v2, v10, [I

    .line 208
    .local v2, "content":[I
    const/4 v10, 0x0

    const/16 v11, 0x59

    aput v11, v2, v10

    .line 209
    const/4 v7, 0x1

    .line 210
    .local v7, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v6, v10, :cond_3

    .line 214
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x56

    aput v11, v2, v10

    .line 216
    const/4 v3, 0x1

    .line 217
    :goto_2
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_COUNT:I

    if-gt v3, v10, :cond_1

    iget-boolean v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v10, :cond_4

    .line 278
    :cond_1
    iget-object v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    const-string v11, "connect END"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 197
    .end local v2    # "content":[I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "pwd":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/example/smartlinklib/SmartLinkManipulator;->send([B)V

    .line 199
    :try_start_0
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->HEADER_PACKAGE_DELAY_TIME:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 211
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "content":[I
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    .restart local v8    # "pwd":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, 0x4c

    aput v10, v2, v7

    .line 212
    add-int/lit8 v7, v7, 0x1

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    :cond_4
    const/4 v6, 0x0

    :goto_4
    array-length v10, v2

    if-lt v6, v10, :cond_6

    .line 247
    :try_start_1
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_CHECKSUM_BEFORE_DELAY_TIME:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 254
    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0x100

    add-int/lit8 v1, v10, 0x4c

    .line 257
    .local v1, "checkLength":I
    const/4 v9, 0x1

    .line 258
    .local v9, "t":I
    :goto_6
    if-gt v9, v12, :cond_5

    iget-boolean v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v10, :cond_d

    .line 272
    :cond_5
    :try_start_2
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_GROUP_DELAY_TIME:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 276
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 220
    .end local v1    # "checkLength":I
    .end local v9    # "t":I
    :cond_6
    const/4 v0, 0x1

    .line 221
    .local v0, "_count":I
    if-eqz v6, :cond_7

    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    if-ne v6, v10, :cond_8

    .line 222
    :cond_7
    const/4 v0, 0x3

    .line 224
    :cond_8
    const/4 v9, 0x1

    .line 225
    .restart local v9    # "t":I
    :goto_8
    if-gt v9, v0, :cond_9

    iget-boolean v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    if-nez v10, :cond_b

    .line 238
    :cond_9
    array-length v10, v2

    if-eq v6, v10, :cond_a

    .line 240
    :try_start_3
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_PACKAGE_DELAY_TIME:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    :cond_a
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 226
    :cond_b
    aget v10, v2, v6

    invoke-direct {p0, v10}, Lcom/example/smartlinklib/SmartLinkManipulator;->getBytes(I)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/example/smartlinklib/SmartLinkManipulator;->send([B)V

    .line 227
    array-length v10, v2

    if-eq v6, v10, :cond_c

    .line 229
    :try_start_4
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_PACKAGE_DELAY_TIME:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 234
    :cond_c
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 230
    :catch_1
    move-exception v4

    .line 231
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 241
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v4

    .line 242
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 248
    .end local v0    # "_count":I
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "t":I
    :catch_3
    move-exception v4

    .line 249
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 259
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "checkLength":I
    .restart local v9    # "t":I
    :cond_d
    invoke-direct {p0, v1}, Lcom/example/smartlinklib/SmartLinkManipulator;->getBytes(I)[B

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/example/smartlinklib/SmartLinkManipulator;->send([B)V

    .line 260
    if-ge v9, v12, :cond_e

    .line 262
    :try_start_5
    iget v10, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->CONTENT_PACKAGE_DELAY_TIME:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 267
    :cond_e
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 263
    :catch_4
    move-exception v4

    .line 264
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    .line 273
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v4

    .line 274
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method

.method private getBytes(I)[B
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 282
    new-array v0, p1, [B

    .line 283
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 286
    return-object v0

    .line 284
    :cond_0
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstence()Lcom/example/smartlinklib/SmartLinkManipulator;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/example/smartlinklib/SmartLinkManipulator;->me:Lcom/example/smartlinklib/SmartLinkManipulator;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/example/smartlinklib/SmartLinkManipulator;

    invoke-direct {v0}, Lcom/example/smartlinklib/SmartLinkManipulator;-><init>()V

    sput-object v0, Lcom/example/smartlinklib/SmartLinkManipulator;->me:Lcom/example/smartlinklib/SmartLinkManipulator;

    .line 76
    :cond_0
    sget-object v0, Lcom/example/smartlinklib/SmartLinkManipulator;->me:Lcom/example/smartlinklib/SmartLinkManipulator;

    return-object v0
.end method


# virtual methods
.method public Startconnection(Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;)V
    .locals 3
    .param p1, "callback"    # Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    const-string v1, "Startconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->callback:Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;

    .line 122
    iput-boolean v2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    .line 123
    invoke-virtual {p0}, Lcom/example/smartlinklib/SmartLinkManipulator;->receive()V

    .line 124
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->successMacSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/smartlinklib/SmartLinkManipulator$2;

    invoke-direct {v1, p0}, Lcom/example/smartlinklib/SmartLinkManipulator$2;-><init>(Lcom/example/smartlinklib/SmartLinkManipulator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    iget-boolean v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isfinding:Z

    if-nez v0, :cond_0

    .line 137
    iput-boolean v2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isfinding:Z

    .line 138
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->findThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    :cond_0
    return-void
.end method

.method public StopConnection()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->isConnecting:Z

    .line 144
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 147
    :cond_0
    return-void
.end method

.method public byteToChar([B)C
    .locals 3
    .param p1, "b"    # [B

    .prologue
    .line 290
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-char v0, v1

    .line 291
    .local v0, "c":C
    return v0
.end method

.method public getBroadcastAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    .line 172
    .line 173
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 174
    .local v1, "cm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 175
    .local v4, "myDhcpInfo":Landroid/net/DhcpInfo;
    if-nez v4, :cond_0

    .line 176
    const-string v6, "255.255.255.255"

    .line 188
    :goto_0
    return-object v6

    .line 180
    :cond_0
    iget v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    iget v7, v4, Landroid/net/DhcpInfo;->netmask:I

    and-int/2addr v6, v7

    .line 181
    iget v7, v4, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v7, v7, -0x1

    .line 180
    or-int v0, v6, v7

    .line 182
    .local v0, "broadcast":I
    new-array v5, v8, [B

    .line 183
    .local v5, "quads":[B
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-lt v3, v8, :cond_1

    .line 186
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 184
    :cond_1
    mul-int/lit8 v6, v3, 0x8

    shr-int v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "255.255.255.255"

    goto :goto_0
.end method

.method public receive()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    const-string v1, "start RECV"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->receiveByte:[B

    iget-object v2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->receiveByte:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->dataPacket:Ljava/net/DatagramPacket;

    .line 338
    new-instance v0, Lcom/example/smartlinklib/SmartLinkManipulator$3;

    invoke-direct {v0, p0}, Lcom/example/smartlinklib/SmartLinkManipulator$3;-><init>(Lcom/example/smartlinklib/SmartLinkManipulator;)V

    .line 372
    invoke-virtual {v0}, Lcom/example/smartlinklib/SmartLinkManipulator$3;->start()V

    .line 373
    return-void
.end method

.method public send([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 326
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    .line 327
    iget-object v3, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->inetAddressbroadcast:Ljava/net/InetAddress;

    iget v4, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->port:I

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 326
    iput-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->packetToSendbroadcast:Ljava/net/DatagramPacket;

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->packetToSendbroadcast:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendFindCmd()V
    .locals 6

    .prologue
    .line 297
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "smartlinkfind"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/net/DatagramPacket;

    .line 299
    const-string v2, "smartlinkfind"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 300
    const-string v3, "smartlinkfind"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->inetAddressbroadcast:Ljava/net/InetAddress;

    .line 301
    const v5, 0xbf03

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 298
    iput-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->packetToSendbroadcast:Ljava/net/DatagramPacket;

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->packetToSendbroadcast:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendHFA11Cmd()V
    .locals 6

    .prologue
    .line 312
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "smartlinkfind"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/net/DatagramPacket;

    .line 314
    const-string v2, "HF-A11ASSISTHREAD"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 315
    const-string v3, "HF-A11ASSISTHREAD"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->inetAddressbroadcast:Ljava/net/InetAddress;

    .line 316
    const v5, 0xbf03

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 313
    iput-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->packetToSendbroadcast:Ljava/net/DatagramPacket;

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->packetToSendbroadcast:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->ssid:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->pswd:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p3}, Lcom/example/smartlinklib/SmartLinkManipulator;->getBroadcastAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->broadCastIP:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->port:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    .line 87
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->socket:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 88
    iget-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->broadCastIP:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/example/smartlinklib/SmartLinkManipulator;->inetAddressbroadcast:Ljava/net/InetAddress;

    .line 89
    return-void
.end method
