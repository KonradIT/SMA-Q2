.class public Lcom/integrity_project/smartconfiglib/SmartConfig;
.super Ljava/lang/Object;
.source "SmartConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;
    }
.end annotation


# static fields
.field private static final FIVE_MINUTE_TIMEOUT_MS:I = 0x493e0

.field private static final LOCAL_PORT:I = 0x3a98

.field private static final defaultNumberOfSetups:I = 0x4

.field private static final defaultNumberOfSyncs:I = 0xa

.field private static final defaultSyncHString:Ljava/lang/String; = "abcdefghijklmnopqrstuvw"

.field private static final defaultSyncLString:Ljava/lang/String; = "abc"

.field private static final defaultmDnsAckString:Ljava/lang/String; = "CC3000"

.field private static final mDnsListenPort:I = 0x14e9


# instance fields
.field ackWaitThread:Ljava/lang/Thread;

.field private encryptionKey:[B

.field private freeData:[B

.field private ftcData:Lcom/integrity_project/smartconfiglib/SmartConfigEncode;

.field private group:B

.field private ip:Ljava/lang/String;

.field private isListenSocketGracefullyClosed:Z

.field private key:Ljava/lang/String;

.field listenPort:I

.field private listenSocket:Ljava/net/MulticastSocket;

.field localPort:I

.field private mDnsAckString:Ljava/lang/String;

.field private m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

.field private nSetup:I

.field sendingThread:Ljava/lang/Thread;

.field sockAddr:Ljava/net/InetSocketAddress;

.field private ssid:Ljava/lang/String;

.field private stopSending:Z

.field private syncHString:Ljava/lang/String;

.field private syncLString:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field waitForAckSocketTimeout:I


# direct methods
.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 10
    .param p1, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p2, "FreeData"    # [B
    .param p3, "Key"    # Ljava/lang/String;
    .param p4, "EncryptionKey"    # [B
    .param p5, "Ip"    # Ljava/lang/String;
    .param p6, "Ssid"    # Ljava/lang/String;
    .param p7, "Group"    # B
    .param p8, "Token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    const-string v9, "CC3000"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/integrity_project/smartconfiglib/SmartConfig;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p2, "FreeData"    # [B
    .param p3, "Key"    # Ljava/lang/String;
    .param p4, "EncryptionKey"    # [B
    .param p5, "Ip"    # Ljava/lang/String;
    .param p6, "Ssid"    # Ljava/lang/String;
    .param p7, "Group"    # B
    .param p8, "Token"    # Ljava/lang/String;
    .param p9, "ackString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    const/16 v10, 0x14e9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/integrity_project/smartconfiglib/SmartConfig;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p2, "FreeData"    # [B
    .param p3, "Key"    # Ljava/lang/String;
    .param p4, "EncryptionKey"    # [B
    .param p5, "Ip"    # Ljava/lang/String;
    .param p6, "Ssid"    # Ljava/lang/String;
    .param p7, "Group"    # B
    .param p8, "Token"    # Ljava/lang/String;
    .param p9, "ackString"    # Ljava/lang/String;
    .param p10, "notifyListenPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    const/16 v11, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/integrity_project/smartconfiglib/SmartConfig;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .param p1, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p2, "FreeData"    # [B
    .param p3, "Key"    # Ljava/lang/String;
    .param p4, "EncryptionKey"    # [B
    .param p5, "Ip"    # Ljava/lang/String;
    .param p6, "Ssid"    # Ljava/lang/String;
    .param p7, "Group"    # B
    .param p8, "Token"    # Ljava/lang/String;
    .param p9, "ackString"    # Ljava/lang/String;
    .param p10, "notifyListenPort"    # I
    .param p11, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const v12, 0x493e0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/integrity_project/smartconfiglib/SmartConfig;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;III)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;III)V
    .locals 17
    .param p1, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p2, "FreeData"    # [B
    .param p3, "Key"    # Ljava/lang/String;
    .param p4, "EncryptionKey"    # [B
    .param p5, "Ip"    # Ljava/lang/String;
    .param p6, "Ssid"    # Ljava/lang/String;
    .param p7, "Group"    # B
    .param p8, "Token"    # Ljava/lang/String;
    .param p9, "ackString"    # Ljava/lang/String;
    .param p10, "notifyListenPort"    # I
    .param p11, "localPort"    # I
    .param p12, "WaitForAckSocketTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v13, 0x4

    const/16 v14, 0xa

    const-string v15, "abc"

    const-string v16, "abcdefghijklmnopqrstuvw"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v16}, Lcom/integrity_project/smartconfiglib/SmartConfig;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/integrity_project/smartconfiglib/SmartConfigListener;[BLjava/lang/String;[BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .param p2, "FreeData"    # [B
    .param p3, "Key"    # Ljava/lang/String;
    .param p4, "EncryptionKey"    # [B
    .param p5, "Ip"    # Ljava/lang/String;
    .param p6, "Ssid"    # Ljava/lang/String;
    .param p7, "Group"    # B
    .param p8, "Token"    # Ljava/lang/String;
    .param p9, "ackString"    # Ljava/lang/String;
    .param p10, "notifyListenPort"    # I
    .param p11, "LocalPort"    # I
    .param p12, "WaitForAckSocketTimeout"    # I
    .param p13, "numberOfSetups"    # I
    .param p14, "numberOfSyncs"    # I
    .param p15, "syncL"    # Ljava/lang/String;
    .param p16, "syncH"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    .line 160
    const/16 v7, 0x10

    .line 161
    .local v7, "AES_LENGTH":I
    const/4 v6, 0x0

    .line 164
    .local v6, "hasEncryption":Z
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    .line 166
    iput-object p2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->freeData:[B

    .line 168
    if-eqz p4, :cond_0

    .line 169
    array-length v1, p4

    if-eqz v1, :cond_0

    array-length v1, p4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 171
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Encryption key must have 16 characters!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 175
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Password is too long! Maximum length is 32 characters."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    .line 179
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Network name (SSID) is too long! Maximum length is 32 characters."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_2
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    .line 183
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Token is too long! Maximum length is 32 characters."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_3
    iput-byte p7, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->group:B

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopSending:Z

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->isListenSocketGracefullyClosed:Z

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    .line 195
    iput-object p2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->freeData:[B

    .line 197
    iput-object p5, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ip:Ljava/lang/String;

    .line 198
    iput-object p6, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ssid:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->key:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->token:Ljava/lang/String;

    .line 201
    move/from16 v0, p13

    iput v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->nSetup:I

    .line 204
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->syncLString:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->syncHString:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    .line 211
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->mDnsAckString:Ljava/lang/String;

    .line 213
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/integrity_project/smartconfiglib/SmartConfig;->createBroadcastUDPSocket(I)V

    .line 215
    move/from16 v0, p11

    iput v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->localPort:I

    .line 216
    const/16 v1, 0x14e9

    iput v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenPort:I

    .line 217
    move/from16 v0, p12

    iput v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->waitForAckSocketTimeout:I

    .line 219
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ip:Ljava/lang/String;

    iget v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->localPort:I

    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sockAddr:Ljava/net/InetSocketAddress;

    .line 233
    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v3, v1, [B

    .line 234
    .local v3, "keyData":[B
    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->key:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 235
    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    if-eqz v1, :cond_4

    .line 236
    invoke-direct {p0, v3}, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptData([B)[B

    move-result-object v3

    .line 237
    const/4 v6, 0x1

    .line 240
    :cond_4
    new-instance v1, Lcom/integrity_project/smartconfiglib/SmartConfigEncode;

    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->freeData:[B

    iget-object v5, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->token:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/integrity_project/smartconfiglib/SmartConfigEncode;-><init>(Ljava/lang/String;[B[BLjava/lang/String;Z)V

    iput-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ftcData:Lcom/integrity_project/smartconfiglib/SmartConfigEncode;

    .line 241
    return-void
.end method

.method static synthetic access$0(Lcom/integrity_project/smartconfiglib/SmartConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/integrity_project/smartconfiglib/SmartConfig;->send()V

    return-void
.end method

.method static synthetic access$1(Lcom/integrity_project/smartconfiglib/SmartConfig;)Lcom/integrity_project/smartconfiglib/SmartConfigListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/integrity_project/smartconfiglib/SmartConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/integrity_project/smartconfiglib/SmartConfig;->waitForAck()V

    return-void
.end method

.method private createBroadcastUDPSocket(I)V
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "wildcardAddr":Ljava/net/InetAddress;
    const/4 v0, 0x0

    .line 252
    .local v0, "localAddr":Ljava/net/InetSocketAddress;
    new-instance v0, Ljava/net/InetSocketAddress;

    .end local v0    # "localAddr":Ljava/net/InetSocketAddress;
    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 255
    .restart local v0    # "localAddr":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/MulticastSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    .line 258
    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v4}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 261
    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 264
    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 267
    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    const-string v3, "224.0.0.251"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 270
    iget-object v2, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v4}, Ljava/net/MulticastSocket;->setBroadcast(Z)V

    .line 272
    return-void
.end method

.method private encryptData([B)[B
    .locals 27
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 514
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v6, v0, [B

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput-byte v24, v6, v23

    const/16 v23, 0x1

    const/16 v24, 0x3

    aput-byte v24, v6, v23

    const/16 v23, 0x2

    const/16 v24, 0x19

    aput-byte v24, v6, v23

    const/16 v23, 0x3

    const/16 v24, -0x2e

    aput-byte v24, v6, v23

    const/16 v23, 0x4

    const/16 v24, -0x4f

    aput-byte v24, v6, v23

    const/16 v23, 0x5

    const/16 v24, 0x51

    aput-byte v24, v6, v23

    const/16 v23, 0x6

    const/16 v24, -0xe

    aput-byte v24, v6, v23

    const/16 v23, 0x7

    const/16 v24, 0x9

    aput-byte v24, v6, v23

    const/16 v23, 0x8

    const/16 v24, 0x70

    aput-byte v24, v6, v23

    const/16 v23, 0x9

    const/16 v24, 0x61

    aput-byte v24, v6, v23

    const/16 v23, 0xa

    const/16 v24, -0x3d

    aput-byte v24, v6, v23

    const/16 v23, 0xb

    const/16 v24, -0x35

    aput-byte v24, v6, v23

    const/16 v23, 0xc

    const/16 v24, 0x30

    aput-byte v24, v6, v23

    const/16 v23, 0xd

    const/16 v24, 0x7d

    aput-byte v24, v6, v23

    const/16 v23, 0xf

    const/16 v24, 0x1

    aput-byte v24, v6, v23

    .line 515
    .local v6, "InitializationVector1":[B
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v7, v0, [B

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput-byte v24, v7, v23

    const/16 v23, 0x1

    const/16 v24, 0x3

    aput-byte v24, v7, v23

    const/16 v23, 0x2

    const/16 v24, 0x19

    aput-byte v24, v7, v23

    const/16 v23, 0x3

    const/16 v24, -0x2e

    aput-byte v24, v7, v23

    const/16 v23, 0x4

    const/16 v24, -0x4f

    aput-byte v24, v7, v23

    const/16 v23, 0x5

    const/16 v24, 0x51

    aput-byte v24, v7, v23

    const/16 v23, 0x6

    const/16 v24, -0xe

    aput-byte v24, v7, v23

    const/16 v23, 0x7

    const/16 v24, 0x9

    aput-byte v24, v7, v23

    const/16 v23, 0x8

    const/16 v24, 0x70

    aput-byte v24, v7, v23

    const/16 v23, 0x9

    const/16 v24, 0x61

    aput-byte v24, v7, v23

    const/16 v23, 0xa

    const/16 v24, -0x3d

    aput-byte v24, v7, v23

    const/16 v23, 0xb

    const/16 v24, -0x35

    aput-byte v24, v7, v23

    const/16 v23, 0xc

    const/16 v24, 0x30

    aput-byte v24, v7, v23

    const/16 v23, 0xd

    const/16 v24, 0x7d

    aput-byte v24, v7, v23

    const/16 v23, 0xf

    const/16 v24, 0x2

    aput-byte v24, v7, v23

    .line 517
    .local v7, "InitializationVector2":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_1

    :cond_0
    move-object/from16 v12, p1

    .line 587
    :goto_0
    return-object v12

    .line 520
    :cond_1
    const/4 v8, 0x0

    .line 521
    .local v8, "ZERO_OFFSET":I
    const/16 v4, 0x10

    .line 522
    .local v4, "AES_LENGTH":I
    const/16 v5, 0x20

    .line 524
    .local v5, "DATA_LENGTH":I
    const/4 v10, 0x0

    .line 525
    .local v10, "c":Ljavax/crypto/Cipher;
    const/4 v12, 0x0

    .line 526
    .local v12, "encryptedData":[B
    const/4 v13, 0x0

    .line 527
    .local v13, "encryptedData1":[B
    const/4 v14, 0x0

    .line 528
    .local v14, "encryptedData2":[B
    const/16 v23, 0x20

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 529
    .local v19, "paddedData":[B
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 530
    .local v20, "paddedData1":[B
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 531
    .local v21, "paddedData2":[B
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v9, v0, [B

    .line 533
    .local v9, "aesKey":[B
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_1
    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    const/4 v11, 0x0

    .line 547
    .local v11, "dataOffset":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 549
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v19, v11

    .line 550
    add-int/lit8 v11, v11, 0x1

    .line 554
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 558
    :goto_2
    const/16 v23, 0x20

    move/from16 v0, v23

    if-lt v11, v0, :cond_5

    .line 564
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    const/16 v23, 0x10

    move/from16 v0, v23

    if-lt v15, v0, :cond_6

    .line 569
    const-string v23, "AES/OFB/NoPadding"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 571
    new-instance v18, Ljavax/crypto/spec/SecretKeySpec;

    const-string v23, "AES"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 573
    .local v18, "k":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v23, 0x20

    move/from16 v0, v23

    new-array v12, v0, [B

    .line 575
    new-instance v16, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 576
    .local v16, "ivspec1":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v17, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 578
    .local v17, "ivspec2":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v10, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 579
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v13

    .line 581
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 582
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 584
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    const/16 v23, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v14, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 534
    .end local v11    # "dataOffset":I
    .end local v15    # "i":I
    .end local v16    # "ivspec1":Ljavax/crypto/spec/IvParameterSpec;
    .end local v17    # "ivspec2":Ljavax/crypto/spec/IvParameterSpec;
    .end local v18    # "k":Ljavax/crypto/spec/SecretKeySpec;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/integrity_project/smartconfiglib/SmartConfig;->encryptionKey:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v22

    aput-byte v23, v9, v22

    .line 533
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 538
    :cond_4
    const/16 v23, 0x0

    aput-byte v23, v9, v22

    goto :goto_4

    .line 560
    .restart local v11    # "dataOffset":I
    :cond_5
    const/16 v23, 0x0

    aput-byte v23, v19, v11

    .line 561
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 565
    .restart local v15    # "i":I
    :cond_6
    aget-byte v23, v19, v15

    aput-byte v23, v20, v15

    .line 566
    add-int/lit8 v23, v15, 0x10

    aget-byte v23, v19, v23

    aput-byte v23, v21, v15

    .line 564
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3
.end method

.method private makePaddedByteArray(I)[B
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 594
    new-array v0, p1, [B

    .line 596
    .local v0, "paddedArray":[B
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 600
    return-object v0

    .line 597
    :cond_0
    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseMDns([B)Z
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 463
    const/16 v0, 0xc

    .line 464
    .local v0, "MDNS_HEADER_SIZE":I
    const/16 v1, 0xa

    .line 467
    .local v1, "MDNS_HEADER_SIZE2":I
    const/16 v5, 0xc

    .line 470
    .local v5, "pos":I
    array-length v6, p1

    const/16 v7, 0xd

    if-ge v6, v7, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v2

    .line 472
    :cond_1
    aget-byte v6, p1, v5

    and-int/lit16 v3, v6, 0xff

    .line 473
    .local v3, "len":I
    add-int/lit8 v5, v5, 0x1

    .line 475
    :goto_1
    if-gtz v3, :cond_2

    .line 491
    add-int/lit8 v5, v5, 0xa

    .line 494
    array-length v6, p1

    add-int/lit8 v7, v5, 0x1

    if-lt v6, v7, :cond_0

    .line 496
    aget-byte v6, p1, v5

    and-int/lit16 v3, v6, 0xff

    .line 497
    add-int/lit8 v5, v5, 0x1

    .line 500
    array-length v6, p1

    add-int v7, v5, v3

    if-lt v6, v7, :cond_0

    .line 502
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 505
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->mDnsAckString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 506
    .local v2, "bRet":Z
    goto :goto_0

    .line 478
    .end local v2    # "bRet":Z
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    array-length v6, p1

    add-int v7, v5, v3

    if-lt v6, v7, :cond_0

    .line 481
    add-int/2addr v5, v3

    .line 484
    array-length v6, p1

    add-int/lit8 v7, v5, 0x1

    if-lt v6, v7, :cond_0

    .line 486
    aget-byte v6, p1, v5

    and-int/lit16 v3, v6, 0xff

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private send()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ftcData:Lcom/integrity_project/smartconfiglib/SmartConfigEncode;

    invoke-virtual {v8}, Lcom/integrity_project/smartconfiglib/SmartConfigEncode;->getmData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 281
    .local v3, "numberOfPackets":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v4, "packets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v8, 0x640

    new-array v0, v8, [B

    .line 283
    .local v0, "ftcBuffer":[B
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->syncLString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 284
    .local v7, "syncLBuffer":[B
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->syncHString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 286
    .local v6, "syncHBuffer":[B
    array-length v8, v0

    invoke-direct {p0, v8}, Lcom/integrity_project/smartconfiglib/SmartConfig;->makePaddedByteArray(I)[B

    move-result-object v0

    .line 289
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ftcData:Lcom/integrity_project/smartconfiglib/SmartConfigEncode;

    invoke-virtual {v8}, Lcom/integrity_project/smartconfiglib/SmartConfigEncode;->getmData()Ljava/util/ArrayList;

    move-result-object v4

    .line 291
    :goto_0
    iget-boolean v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopSending:Z

    if-eqz v8, :cond_0

    .line 320
    return-void

    .line 295
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->nSetup:I

    if-lt v1, v8, :cond_1

    .line 318
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 296
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-lt v2, v3, :cond_2

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 311
    .local v5, "packsize":I
    rem-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_3

    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v7

    iget-object v10, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sockAddr:Ljava/net/InetSocketAddress;

    invoke-direct {v8, v7, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iget v9, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->localPort:I

    invoke-direct {p0, v8, v9}, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendData(Ljava/net/DatagramPacket;I)V

    .line 314
    :goto_3
    new-instance v8, Ljava/net/DatagramPacket;

    iget-object v9, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sockAddr:Ljava/net/InetSocketAddress;

    invoke-direct {v8, v0, v5, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iget v9, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->localPort:I

    invoke-direct {p0, v8, v9}, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendData(Ljava/net/DatagramPacket;I)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 312
    :cond_3
    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v6

    iget-byte v10, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->group:B

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sockAddr:Ljava/net/InetSocketAddress;

    invoke-direct {v8, v6, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iget v9, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->localPort:I

    invoke-direct {p0, v8, v9}, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendData(Ljava/net/DatagramPacket;I)V

    goto :goto_3
.end method

.method private sendData(Ljava/net/DatagramPacket;I)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .param p2, "localSendingPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "sock":Ljava/net/DatagramSocket;
    new-instance v0, Ljava/net/DatagramSocket;

    .end local v0    # "sock":Ljava/net/DatagramSocket;
    invoke-direct {v0, p2}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 329
    .restart local v0    # "sock":Ljava/net/DatagramSocket;
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 331
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 332
    return-void
.end method

.method private waitForAck()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x4000

    .line 419
    const/16 v0, 0x4000

    .line 421
    .local v0, "RECV_BUFFER_LENGTH":I
    new-array v3, v7, [B

    .line 423
    .local v3, "recvBuffer":[B
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v3, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 424
    .local v2, "listenPacket":Ljava/net/DatagramPacket;
    iget v6, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->waitForAckSocketTimeout:I

    .line 426
    .local v6, "timeout":I
    :cond_0
    iget-boolean v7, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopSending:Z

    if-eqz v7, :cond_2

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 429
    .local v4, "start":J
    iget-object v7, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v7, v6}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 431
    :try_start_0
    iget-object v7, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v7, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 443
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/integrity_project/smartconfiglib/SmartConfig;->parseMDns([B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopTransmitting()V

    .line 445
    new-instance v7, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;

    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    sget-object v9, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_SUCCESS:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    invoke-direct {v7, p0, v8, v9}, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfig;Lcom/integrity_project/smartconfiglib/SmartConfigListener;Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;)V

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/InterruptedIOException;
    iget-boolean v7, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->isListenSocketGracefullyClosed:Z

    if-nez v7, :cond_1

    .line 435
    new-instance v7, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;

    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    sget-object v9, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_TIMEOUT:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    invoke-direct {v7, p0, v8, v9}, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfig;Lcom/integrity_project/smartconfiglib/SmartConfigListener;Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;)V

    goto :goto_0

    .line 437
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/Exception;
    iget-boolean v7, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->isListenSocketGracefullyClosed:Z

    if-nez v7, :cond_1

    .line 440
    throw v1

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    int-to-long v8, v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-int v6, v8

    .line 449
    if-gtz v6, :cond_0

    .line 451
    new-instance v7, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;

    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->m_listener:Lcom/integrity_project/smartconfiglib/SmartConfigListener;

    sget-object v9, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_TIMEOUT:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    invoke-direct {v7, p0, v8, v9}, Lcom/integrity_project/smartconfiglib/SmartConfig$NotifyThread;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfig;Lcom/integrity_project/smartconfiglib/SmartConfigListener;Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public stopTransmitting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 403
    iput-boolean v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->isListenSocketGracefullyClosed:Z

    .line 404
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->listenSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 406
    iput-boolean v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopSending:Z

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendingThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 409
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ackWaitThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ackWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 411
    :cond_1
    return-void
.end method

.method public transmitSettings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopSending:Z

    .line 371
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/integrity_project/smartconfiglib/SmartConfig$1;

    invoke-direct {v1, p0}, Lcom/integrity_project/smartconfiglib/SmartConfig$1;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendingThread:Ljava/lang/Thread;

    .line 381
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->sendingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 383
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/integrity_project/smartconfiglib/SmartConfig$2;

    invoke-direct {v1, p0}, Lcom/integrity_project/smartconfiglib/SmartConfig$2;-><init>(Lcom/integrity_project/smartconfiglib/SmartConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ackWaitThread:Ljava/lang/Thread;

    .line 393
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig;->ackWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 395
    return-void
.end method
