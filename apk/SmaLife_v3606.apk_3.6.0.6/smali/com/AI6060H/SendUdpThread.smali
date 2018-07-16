.class public Lcom/AI6060H/SendUdpThread;
.super Ljava/lang/Thread;
.source "SendUdpThread.java"


# instance fields
.field AB:Ljava/lang/String;

.field PWD:Ljava/lang/String;

.field SSID:Ljava/lang/String;

.field address:Ljava/net/InetAddress;

.field cmdNumber:I

.field exitProcess:Z

.field ipData:Ljava/lang/StringBuffer;

.field magicNumber:Ljava/lang/String;

.field packetData:[Ljava/lang/StringBuffer;

.field rand:Ljava/util/Random;

.field rc4Key:Ljava/lang/String;

.field retryNumber:[Ljava/lang/String;

.field seqData:[Ljava/lang/StringBuffer;

.field sonkey:[I

.field stable:[I

.field tempPacket:[I

.field tempSeq:[I

.field testDataRetryNum:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "PWD"    # Ljava/lang/String;
    .param p3, "ipAddress"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x100

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    .line 24
    iput v1, p0, Lcom/AI6060H/SendUdpThread;->cmdNumber:I

    .line 25
    iget v0, p0, Lcom/AI6060H/SendUdpThread;->cmdNumber:I

    new-array v0, v0, [Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    .line 26
    iget v0, p0, Lcom/AI6060H/SendUdpThread;->cmdNumber:I

    new-array v0, v0, [Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->seqData:[Ljava/lang/StringBuffer;

    .line 28
    const/16 v0, 0x96

    iput v0, p0, Lcom/AI6060H/SendUdpThread;->testDataRetryNum:I

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "10"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->retryNumber:[Ljava/lang/String;

    .line 31
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->tempPacket:[I

    .line 32
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->tempSeq:[I

    .line 34
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    .line 35
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->sonkey:[I

    .line 37
    const-string v0, "iot"

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->magicNumber:Ljava/lang/String;

    .line 38
    const-string v0, "Key"

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->rc4Key:Ljava/lang/String;

    .line 39
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/AI6060H/SendUdpThread;->SSID:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/AI6060H/SendUdpThread;->PWD:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p3}, Lcom/AI6060H/SendUdpThread;->savePhoneIp(I)V

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->rand:Ljava/util/Random;

    .line 46
    return-void
.end method


# virtual methods
.method KSA()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 71
    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aput v0, v3, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    .line 73
    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v3, v3, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/AI6060H/SendUdpThread;->rc4Key:Ljava/lang/String;

    iget-object v5, p0, Lcom/AI6060H/SendUdpThread;->rc4Key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    rem-int/lit16 v1, v3, 0x100

    .line 74
    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v2, v3, v0

    .line 75
    .local v2, "temp":I
    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    iget-object v4, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v4, v4, v1

    aput v4, v3, v0

    .line 76
    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aput v2, v3, v1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v2    # "temp":I
    :cond_1
    return-void
.end method

.method PRGA()V
    .locals 9

    .prologue
    .line 81
    const/4 v3, 0x0

    .local v3, "m":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .line 82
    .local v1, "j":I
    const/16 v2, 0x100

    .local v2, "l":I
    move v4, v3

    .line 83
    .end local v3    # "m":I
    .local v4, "m":I
    :goto_0
    if-lez v2, :cond_0

    .line 84
    add-int/lit8 v7, v0, 0x1

    rem-int/lit16 v0, v7, 0x100

    .line 85
    iget-object v7, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v7, v7, v0

    add-int/2addr v7, v1

    rem-int/lit16 v1, v7, 0x100

    .line 86
    iget-object v7, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v6, v7, v0

    .line 87
    .local v6, "temp":I
    iget-object v7, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    iget-object v8, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v8, v8, v1

    aput v8, v7, v0

    .line 88
    iget-object v7, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aput v6, v7, v1

    .line 89
    iget-object v7, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v7, v7, v1

    iget-object v8, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v8, v8, v0

    add-int/2addr v7, v8

    rem-int/lit16 v5, v7, 0x100

    .line 90
    .local v5, "t":I
    iget-object v7, p0, Lcom/AI6060H/SendUdpThread;->sonkey:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "m":I
    .restart local v3    # "m":I
    iget-object v8, p0, Lcom/AI6060H/SendUdpThread;->stable:[I

    aget v8, v8, v5

    aput v8, v7, v4

    .line 91
    add-int/lit8 v2, v2, -0x1

    move v4, v3

    .end local v3    # "m":I
    .restart local v4    # "m":I
    goto :goto_0

    .line 93
    .end local v5    # "t":I
    .end local v6    # "temp":I
    :cond_0
    return-void
.end method

.method public SendbroadCast()V
    .locals 21

    .prologue
    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/AI6060H/SendUdpThread;->sendTestData()V

    .line 147
    const/16 v16, 0x0

    .local v16, "z":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/AI6060H/SendUdpThread;->cmdNumber:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v18, v17, v16

    .line 149
    if-nez v16, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->magicNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    const/16 v17, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/AI6060H/SendUdpThread;->crc8_msb(CII)C

    move-result v5

    .line 156
    .local v5, "crcDdata":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    aget-object v17, v17, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/AI6060H/SendUdpThread;->addSeqPacket(I)V

    .line 158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 211
    .end local v5    # "crcDdata":C
    :cond_0
    return-void

    .line 151
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->PWD:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->PWD:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 147
    .restart local v5    # "crcDdata":C
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 162
    .end local v5    # "crcDdata":C
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/AI6060H/SendUdpThread;->cmdNumber:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/AI6060H/SendUdpThread;->cmdCryption(I)V

    .line 164
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->retryNumber:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 165
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_7

    .line 166
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 167
    .local v11, "sendPacketData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    new-instance v13, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 169
    .local v13, "sendPacketSeq":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    const/4 v15, 0x0

    .local v15, "v":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->tempPacket:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    .line 170
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->rand:Ljava/util/Random;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 172
    :cond_5
    const/4 v7, 0x0

    .local v7, "g":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->tempSeq:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 173
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->rand:Ljava/util/Random;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 177
    :cond_6
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V

    .line 178
    .local v4, "clientSocket":Ljava/net/DatagramSocket;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 179
    const-string v17, "255.255.255.255"

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AI6060H/SendUdpThread;->address:Ljava/net/InetAddress;

    .line 180
    new-instance v14, Ljava/net/DatagramPacket;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuffer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuffer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->address:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    const/16 v20, 0x206c

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 181
    .local v14, "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 183
    const-wide/16 v18, 0xa

    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 187
    :goto_7
    :try_start_2
    new-instance v12, Ljava/net/DatagramPacket;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuffer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuffer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AI6060H/SendUdpThread;->address:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    const/16 v20, 0x206c

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 188
    .local v12, "sendPacketDataSocket":Ljava/net/DatagramPacket;
    invoke-virtual {v4, v12}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 190
    const-wide/16 v18, 0xa

    :try_start_3
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 194
    :goto_8
    :try_start_4
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    move/from16 v17, v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v17, :cond_0

    .line 204
    .end local v4    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v12    # "sendPacketDataSocket":Ljava/net/DatagramPacket;
    .end local v14    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 165
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 184
    .restart local v4    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v14    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 197
    .end local v4    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v14    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v6

    .line 198
    .local v6, "e":Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_9

    .line 191
    .end local v6    # "e":Ljava/net/SocketException;
    .restart local v4    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v12    # "sendPacketDataSocket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    :catch_2
    move-exception v6

    .line 192
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 199
    .end local v4    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "sendPacketDataSocket":Ljava/net/DatagramPacket;
    .end local v14    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    :catch_3
    move-exception v6

    .line 200
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 201
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 202
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 164
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "g":I
    .end local v11    # "sendPacketData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    .end local v13    # "sendPacketSeq":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    .end local v15    # "v":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 208
    .end local v10    # "k":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 162
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2
.end method

.method addSeqPacket(I)V
    .locals 5
    .param p1, "cmdNum"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/AI6060H/SendUdpThread;->seqData:[Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    aget-object v4, v4, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    aput-object v3, v2, p1

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/AI6060H/SendUdpThread;->seqData:[Ljava/lang/StringBuffer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 132
    if-nez p1, :cond_0

    .line 133
    and-int/lit16 v2, v0, 0xff

    int-to-char v1, v2

    .line 138
    .local v1, "value":C
    :goto_1
    iget-object v2, p0, Lcom/AI6060H/SendUdpThread;->seqData:[Ljava/lang/StringBuffer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "value":C
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 135
    shl-int/lit8 v2, v0, 0x1

    and-int/lit16 v2, v2, 0xff

    or-int/lit8 v2, v2, 0x1

    int-to-char v1, v2

    .restart local v1    # "value":C
    goto :goto_1

    .line 137
    .end local v1    # "value":C
    :cond_1
    shl-int/lit8 v2, v0, 0x2

    and-int/lit16 v2, v2, 0xff

    or-int/lit8 v2, v2, 0x2

    int-to-char v1, v2

    .restart local v1    # "value":C
    goto :goto_1

    .line 140
    .end local v1    # "value":C
    :cond_2
    return-void
.end method

.method cmdCryption(I)V
    .locals 6
    .param p1, "cmdUum"    # I

    .prologue
    const/16 v5, 0xa

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/AI6060H/SendUdpThread;->tempPacket:[I

    iget-object v2, p0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->sonkey:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 119
    iget-object v1, p0, Lcom/AI6060H/SendUdpThread;->tempSeq:[I

    iget-object v2, p0, Lcom/AI6060H/SendUdpThread;->seqData:[Ljava/lang/StringBuffer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/AI6060H/SendUdpThread;->sonkey:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/AI6060H/SendUdpThread;->tempPacket:[I

    aput v5, v1, v0

    .line 122
    iget-object v1, p0, Lcom/AI6060H/SendUdpThread;->tempSeq:[I

    aput v5, v1, v0

    .line 123
    return-void
.end method

.method crc8_msb(CII)C
    .locals 5
    .param p1, "poly"    # C
    .param p2, "size"    # I
    .param p3, "cmdNum"    # I

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "crc":C
    const/4 v2, 0x0

    .line 99
    .local v2, "i":I
    :goto_0
    if-lez p2, :cond_2

    .line 100
    iget-object v4, p0, Lcom/AI6060H/SendUdpThread;->packetData:[Ljava/lang/StringBuffer;

    aget-object v4, v4, p3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    xor-int/2addr v4, v1

    int-to-char v1, v4

    .line 101
    const/4 v0, 0x0

    .local v0, "bit":I
    :goto_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    .line 102
    and-int/lit16 v4, v1, 0x80

    and-int/lit16 v4, v4, 0xff

    if-eqz v4, :cond_0

    .line 103
    shl-int/lit8 v4, v1, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-char v3, v4

    .line 104
    .local v3, "tmp":C
    xor-int v4, v3, p1

    int-to-char v1, v4

    .line 101
    .end local v3    # "tmp":C
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_0
    shl-int/lit8 v4, v1, 0x1

    int-to-char v1, v4

    goto :goto_2

    .line 109
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "bit":I
    :cond_2
    return v1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/AI6060H/SendUdpThread;->KSA()V

    .line 54
    invoke-virtual {p0}, Lcom/AI6060H/SendUdpThread;->PRGA()V

    .line 55
    :goto_0
    iget-boolean v0, p0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/AI6060H/SendUdpThread;->SendbroadCast()V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method savePhoneIp(I)V
    .locals 2
    .param p1, "ipAddress"    # I

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    .line 62
    iget-object v0, p0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    iget-object v0, p0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    iget-object v0, p0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    iget-object v0, p0, Lcom/AI6060H/SendUdpThread;->ipData:Ljava/lang/StringBuffer;

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    return-void
.end method

.method sendTestData()V
    .locals 12

    .prologue
    .line 214
    const/4 v8, 0x4

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 215
    .local v6, "testData":[I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v8, p0, Lcom/AI6060H/SendUdpThread;->testDataRetryNum:I

    if-ge v2, v8, :cond_1

    .line 216
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_3

    .line 217
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 219
    .local v5, "sendTestData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    const/4 v7, 0x0

    .local v7, "v":I
    :goto_2
    aget v8, v6, v3

    if-ge v7, v8, :cond_0

    .line 220
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    iget-object v10, p0, Lcom/AI6060H/SendUdpThread;->rand:Ljava/util/Random;

    iget-object v11, p0, Lcom/AI6060H/SendUdpThread;->AB:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 224
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 225
    .local v0, "clientSocket":Ljava/net/DatagramSocket;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 226
    const-string v8, "255.255.255.255"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, p0, Lcom/AI6060H/SendUdpThread;->address:Ljava/net/InetAddress;

    .line 227
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    iget-object v10, p0, Lcom/AI6060H/SendUdpThread;->address:Ljava/net/InetAddress;

    const/16 v11, 0x206c

    invoke-direct {v4, v9, v8, v10, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 228
    .local v4, "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 230
    const-wide/16 v8, 0xa

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 234
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 235
    iget-boolean v8, p0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    if-eqz v8, :cond_2

    .line 248
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "k":I
    .end local v4    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    .end local v5    # "sendTestData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    .end local v7    # "v":I
    :cond_1
    return-void

    .line 231
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "k":I
    .restart local v4    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    .restart local v5    # "sendTestData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    .restart local v7    # "v":I
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 237
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "sendPacketSeqSocket":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v1

    .line 238
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 216
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    :catch_2
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "sendTestData":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/StringBuffer;>;"
    .end local v7    # "v":I
    :cond_3
    iget-boolean v8, p0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    if-nez v8, :cond_1

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 214
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public setExitProcess(Z)V
    .locals 0
    .param p1, "exitProcess"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/AI6060H/SendUdpThread;->exitProcess:Z

    .line 50
    return-void
.end method
