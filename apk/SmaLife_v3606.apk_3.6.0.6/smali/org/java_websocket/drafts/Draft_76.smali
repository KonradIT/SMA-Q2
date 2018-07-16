.class public Lorg/java_websocket/drafts/Draft_76;
.super Lorg/java_websocket/drafts/Draft_75;
.source "Draft_76.java"


# static fields
.field private static final closehandshake:[B


# instance fields
.field private failed:Z

.field private final reuseableRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/java_websocket/drafts/Draft_76;->closehandshake:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_75;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/java_websocket/drafts/Draft_76;->failed:Z

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_76;->reuseableRandom:Ljava/util/Random;

    return-void
.end method

.method public static createChallenge(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 12
    .param p0, "key1"    # Ljava/lang/String;
    .param p1, "key2"    # Ljava/lang/String;
    .param p2, "key3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    invoke-static {p0}, Lorg/java_websocket/drafts/Draft_76;->getPart(Ljava/lang/String;)[B

    move-result-object v3

    .line 37
    .local v3, "part1":[B
    invoke-static {p1}, Lorg/java_websocket/drafts/Draft_76;->getPart(Ljava/lang/String;)[B

    move-result-object v4

    .line 38
    .local v4, "part2":[B
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 39
    .local v0, "challenge":[B
    aget-byte v5, v3, v7

    aput-byte v5, v0, v7

    .line 40
    aget-byte v5, v3, v8

    aput-byte v5, v0, v8

    .line 41
    aget-byte v5, v3, v9

    aput-byte v5, v0, v9

    .line 42
    aget-byte v5, v3, v10

    aput-byte v5, v0, v10

    .line 43
    aget-byte v5, v4, v7

    aput-byte v5, v0, v11

    .line 44
    const/4 v5, 0x5

    aget-byte v6, v4, v8

    aput-byte v6, v0, v5

    .line 45
    const/4 v5, 0x6

    aget-byte v6, v4, v9

    aput-byte v6, v0, v5

    .line 46
    const/4 v5, 0x7

    aget-byte v6, v4, v10

    aput-byte v6, v0, v5

    .line 47
    const/16 v5, 0x8

    aget-byte v6, p2, v7

    aput-byte v6, v0, v5

    .line 48
    const/16 v5, 0x9

    aget-byte v6, p2, v8

    aput-byte v6, v0, v5

    .line 49
    const/16 v5, 0xa

    aget-byte v6, p2, v9

    aput-byte v6, v0, v5

    .line 50
    const/16 v5, 0xb

    aget-byte v6, p2, v10

    aput-byte v6, v0, v5

    .line 51
    const/16 v5, 0xc

    aget-byte v6, p2, v11

    aput-byte v6, v0, v5

    .line 52
    const/16 v5, 0xd

    const/4 v6, 0x5

    aget-byte v6, p2, v6

    aput-byte v6, v0, v5

    .line 53
    const/16 v5, 0xe

    const/4 v6, 0x6

    aget-byte v6, p2, v6

    aput-byte v6, v0, v5

    .line 54
    const/16 v5, 0xf

    const/4 v6, 0x7

    aget-byte v6, p2, v6

    aput-byte v6, v0, v5

    .line 57
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    return-object v5

    .line 58
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static generateKey()Ljava/lang/String;
    .locals 22

    .prologue
    .line 65
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    .line 66
    .local v14, "r":Ljava/util/Random;
    const-wide v8, 0xffffffffL

    .line 67
    .local v8, "maxNumber":J
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 68
    .local v16, "spaces":J
    new-instance v18, Ljava/lang/Long;

    div-long v20, v8, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 69
    .local v6, "max":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 70
    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int/lit8 v10, v18, 0x1

    .line 71
    .local v10, "number":I
    int-to-long v0, v10

    move-wide/from16 v18, v0

    mul-long v12, v18, v16

    .line 72
    .local v12, "product":J
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "key":Ljava/lang/String;
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int/lit8 v7, v18, 0x1

    .line 75
    .local v7, "numChars":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 77
    .local v11, "position":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 78
    const/16 v18, 0x5f

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x21

    move/from16 v0, v18

    int-to-char v15, v0

    .line 80
    .local v15, "randChar":C
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v15, v0, :cond_0

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v15, v0, :cond_0

    .line 81
    add-int/lit8 v18, v15, -0xf

    move/from16 v0, v18

    int-to-char v15, v0

    .line 83
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v11    # "position":I
    .end local v15    # "randChar":C
    :cond_1
    const/4 v4, 0x0

    :goto_1
    int-to-long v0, v4

    move-wide/from16 v18, v0

    cmp-long v18, v18, v16

    if-gez v18, :cond_2

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int/lit8 v11, v18, 0x1

    .line 87
    .restart local v11    # "position":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 88
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v11    # "position":I
    :cond_2
    return-object v5
.end method

.method private static getPart(Ljava/lang/String;)[B
    .locals 13
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x18

    .line 95
    :try_start_0
    const-string v1, "[^0-9]"

    const-string v8, ""

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    .local v2, "keyNumber":J
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    .line 97
    .local v4, "keySpace":J
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v8, "invalid Sec-WebSocket-Key (/key2/)"

    invoke-direct {v1, v8}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2    # "keyNumber":J
    .end local v4    # "keySpace":J
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v8, "invalid Sec-WebSocket-Key (/key1/ or /key2/)"

    invoke-direct {v1, v8}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "keyNumber":J
    .restart local v4    # "keySpace":J
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Long;

    div-long v8, v2, v4

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 101
    .local v6, "part":J
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v8, 0x0

    shr-long v10, v6, v12

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    shl-long v10, v6, v9

    shr-long/2addr v10, v12

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    shl-long v10, v6, v9

    shr-long/2addr v10, v12

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    const/4 v8, 0x3

    shl-long v10, v6, v12

    shr-long/2addr v10, v12

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 5
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 109
    iget-boolean v2, p0, Lorg/java_websocket/drafts/Draft_76;->failed:Z

    if-eqz v2, :cond_0

    .line 110
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 124
    :goto_0
    return-object v2

    .line 114
    :cond_0
    :try_start_0
    const-string v2, "Sec-WebSocket-Origin"

    invoke-interface {p2, v2}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Origin"

    invoke-interface {p1, v3}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Lorg/java_websocket/drafts/Draft_76;->basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    :cond_1
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 117
    :cond_2
    invoke-interface {p2}, Lorg/java_websocket/handshake/ServerHandshake;->getContent()[B

    move-result-object v0

    .line 118
    .local v0, "content":[B
    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_4

    .line 119
    :cond_3
    new-instance v2, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {v2}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "content":[B
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidHandshakeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad handshakerequest"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 121
    .end local v1    # "e":Lorg/java_websocket/exceptions/InvalidHandshakeException;
    .restart local v0    # "content":[B
    :cond_4
    :try_start_1
    const-string v2, "Sec-WebSocket-Key1"

    invoke-interface {p1, v2}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Key2"

    invoke-interface {p1, v3}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/java_websocket/handshake/ClientHandshake;->getContent()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/java_websocket/drafts/Draft_76;->createChallenge(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 124
    :cond_5
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;
    :try_end_1
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/ClientHandshake;

    .prologue
    .line 133
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Sec-WebSocket-Key2"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Origin"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "framedata"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 228
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v0, v1, :cond_0

    .line 229
    sget-object v0, Lorg/java_websocket/drafts/Draft_76;->closehandshake:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/java_websocket/drafts/Draft_75;->createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .locals 4
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshakeBuilder;

    .prologue
    .line 140
    const-string v1, "Upgrade"

    const-string v2, "WebSocket"

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "Connection"

    const-string v2, "Upgrade"

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "Sec-WebSocket-Key1"

    invoke-static {}, Lorg/java_websocket/drafts/Draft_76;->generateKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "Sec-WebSocket-Key2"

    invoke-static {}, Lorg/java_websocket/drafts/Draft_76;->generateKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "Origin"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->hasFieldValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "Origin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "random"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_76;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 150
    .local v0, "key3":[B
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_76;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 151
    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->setContent([B)V

    .line 152
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 6
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v4, "WebSocket Protocol Handshake"

    invoke-interface {p2, v4}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 159
    const-string v4, "Upgrade"

    const-string v5, "WebSocket"

    invoke-interface {p2, v4, v5}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "Connection"

    const-string v5, "Connection"

    invoke-interface {p1, v5}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, "Sec-WebSocket-Origin"

    const-string v5, "Origin"

    invoke-interface {p1, v5}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ws://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Host"

    invoke-interface {p1, v5}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "location":Ljava/lang/String;
    const-string v4, "Sec-WebSocket-Location"

    invoke-interface {p2, v4, v3}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "Sec-WebSocket-Key1"

    invoke-interface {p1, v4}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "key1":Ljava/lang/String;
    const-string v4, "Sec-WebSocket-Key2"

    invoke-interface {p1, v4}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "key2":Ljava/lang/String;
    invoke-interface {p1}, Lorg/java_websocket/handshake/ClientHandshake;->getContent()[B

    move-result-object v2

    .line 167
    .local v2, "key3":[B
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v4, v2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 168
    :cond_0
    new-instance v4, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v5, "Bad keys"

    invoke-direct {v4, v5}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_1
    invoke-static {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_76;->createChallenge(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setContent([B)V

    .line 171
    return-object p2
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 195
    invoke-super {p0, p1}, Lorg/java_websocket/drafts/Draft_75;->translateRegularFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    if-nez v0, :cond_4

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 198
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_76;->readyframes:Ljava/util/List;

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/java_websocket/drafts/Draft_76;->readingState:Z

    .line 200
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_76;->currentFrame:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 201
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_76;->currentFrame:Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_76;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 206
    new-instance v2, Lorg/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {v2}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>()V

    throw v2

    .line 203
    :cond_0
    new-instance v2, Lorg/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {v2}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>()V

    throw v2

    .line 208
    :cond_1
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_76;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 210
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_76;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_3

    .line 211
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_76;->currentFrame:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    sget-object v3, Lorg/java_websocket/drafts/Draft_76;->closehandshake:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    new-instance v2, Lorg/java_websocket/framing/CloseFrameBuilder;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Lorg/java_websocket/framing/CloseFrameBuilder;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 223
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :goto_0
    return-object v1

    .line 216
    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    .restart local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_2
    new-instance v2, Lorg/java_websocket/exceptions/InvalidFrameException;

    invoke-direct {v2}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>()V

    throw v2

    .line 219
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_76;->readyframes:Ljava/util/List;

    move-object v1, v0

    .line 220
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    .restart local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    goto :goto_0

    .end local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    .restart local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_4
    move-object v1, v0

    .line 223
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    .restart local v1    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    goto :goto_0
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_76;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-static {p1, v3}, Lorg/java_websocket/drafts/Draft_76;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocket$Role;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v0

    .line 179
    .local v0, "bui":Lorg/java_websocket/handshake/HandshakeBuilder;
    const-string v3, "Sec-WebSocket-Key1"

    invoke-interface {v0, v3}, Lorg/java_websocket/handshake/HandshakeBuilder;->hasFieldValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_76;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v4, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne v3, v4, :cond_1

    :cond_0
    const-string v3, "Sec-WebSocket-Version"

    invoke-interface {v0, v3}, Lorg/java_websocket/handshake/HandshakeBuilder;->hasFieldValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_76;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v4, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    if-ne v3, v4, :cond_2

    const/16 v3, 0x8

    :goto_0
    new-array v2, v3, [B

    .line 182
    .local v2, "key3":[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    invoke-interface {v0, v2}, Lorg/java_websocket/handshake/HandshakeBuilder;->setContent([B)V

    .line 189
    .end local v2    # "key3":[B
    :cond_1
    return-object v0

    .line 180
    :cond_2
    const/16 v3, 0x10

    goto :goto_0

    .line 183
    .restart local v2    # "key3":[B
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    new-instance v3, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v3, v4}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v3
.end method
