.class public Lcom/espressif/iot/esptouch/protocol/DatumCode;
.super Ljava/lang/Object;
.source "DatumCode.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/task/ICodeData;


# static fields
.field private static final EXTRA_HEAD_LEN:I = 0x5

.field private static final EXTRA_LEN:I = 0x28


# instance fields
.field private final mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;Z)V
    .locals 25
    .param p1, "apSsid"    # Ljava/lang/String;
    .param p2, "apBssid"    # Ljava/lang/String;
    .param p3, "apPassword"    # Ljava/lang/String;
    .param p4, "ipAddress"    # Ljava/net/InetAddress;
    .param p5, "isSsidHiden"    # Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v19, 0x0

    .line 35
    .local v19, "totalXor":C
    invoke-static/range {p3 .. p3}, Lcom/espressif/iot/esptouch/util/ByteUtil;->getBytesByString(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v8, v0

    .line 36
    .local v8, "apPwdLen":C
    new-instance v13, Lcom/espressif/iot/esptouch/util/CRC8;

    invoke-direct {v13}, Lcom/espressif/iot/esptouch/util/CRC8;-><init>()V

    .line 37
    .local v13, "crc":Lcom/espressif/iot/esptouch/util/CRC8;
    invoke-static/range {p1 .. p1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->getBytesByString(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/espressif/iot/esptouch/util/CRC8;->update([B)V

    .line 38
    invoke-virtual {v13}, Lcom/espressif/iot/esptouch/util/CRC8;->getValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v11, v0

    .line 40
    .local v11, "apSsidCrc":C
    invoke-virtual {v13}, Lcom/espressif/iot/esptouch/util/CRC8;->reset()V

    .line 41
    invoke-static/range {p2 .. p2}, Lcom/espressif/iot/esptouch/util/EspNetUtil;->parseBssid2bytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/espressif/iot/esptouch/util/CRC8;->update([B)V

    .line 42
    invoke-virtual {v13}, Lcom/espressif/iot/esptouch/util/CRC8;->getValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v5, v0

    .line 44
    .local v5, "apBssidCrc":C
    invoke-static/range {p1 .. p1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->getBytesByString(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v12, v0

    .line 46
    .local v12, "apSsidLen":C
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    const-string v21, "\\."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 47
    .local v16, "ipAddrStrs":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 49
    .local v17, "ipLen":I
    move/from16 v0, v17

    new-array v15, v0, [C

    .line 51
    .local v15, "ipAddrChars":[C
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 52
    aget-object v20, v16, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v15, v14

    .line 51
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 56
    :cond_0
    add-int/lit8 v20, v17, 0x5

    add-int v20, v20, v8

    add-int v20, v20, v12

    move/from16 v0, v20

    int-to-char v4, v0

    .line 57
    .local v4, "_totalLen":C
    if-eqz p5, :cond_1

    add-int/lit8 v20, v17, 0x5

    add-int v20, v20, v8

    add-int v20, v20, v12

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v18, v0

    .line 61
    .local v18, "totalLen":C
    :goto_1
    move/from16 v0, v18

    new-array v0, v0, [Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 63
    xor-int v20, v19, v4

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 65
    xor-int v20, v19, v8

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v11, v1}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 67
    xor-int v20, v19, v11

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 69
    xor-int v20, v19, v5

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const/16 v22, 0x0

    aput-object v22, v20, v21

    .line 71
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x5

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    aget-char v23, v15, v14

    add-int/lit8 v24, v14, 0x5

    invoke-direct/range {v22 .. v24}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 73
    aget-char v20, v15, v14

    xor-int v20, v20, v19

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 71
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 57
    .end local v18    # "totalLen":C
    :cond_1
    add-int/lit8 v20, v17, 0x5

    add-int v20, v20, v8

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .line 76
    .restart local v18    # "totalLen":C
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/espressif/iot/esptouch/util/ByteUtil;->getBytesByString(Ljava/lang/String;)[B

    move-result-object v6

    .line 77
    .local v6, "apPwdBytes":[B
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v7, v0, [C

    .line 78
    .local v7, "apPwdChars":[C
    const/4 v14, 0x0

    :goto_3
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 79
    aget-byte v20, v6, v14

    invoke-static/range {v20 .. v20}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v20

    aput-char v20, v7, v14

    .line 78
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 81
    :cond_3
    const/4 v14, 0x0

    :goto_4
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x5

    add-int v21, v21, v17

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    aget-char v23, v7, v14

    add-int/lit8 v24, v14, 0x5

    add-int v24, v24, v17

    invoke-direct/range {v22 .. v24}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 84
    aget-char v20, v7, v14

    xor-int v20, v20, v19

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 81
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 87
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->getBytesByString(Ljava/lang/String;)[B

    move-result-object v9

    .line 88
    .local v9, "apSsidBytes":[B
    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v10, v0, [C

    .line 91
    .local v10, "apSsidChars":[C
    const/4 v14, 0x0

    :goto_5
    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 92
    aget-byte v20, v9, v14

    invoke-static/range {v20 .. v20}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v20

    aput-char v20, v10, v14

    .line 93
    aget-char v20, v10, v14

    xor-int v20, v20, v19

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 91
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 96
    :cond_5
    if-eqz p5, :cond_6

    .line 97
    const/4 v14, 0x0

    :goto_6
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x5

    add-int v21, v21, v17

    add-int v21, v21, v8

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    aget-char v23, v10, v14

    add-int/lit8 v24, v14, 0x5

    add-int v24, v24, v17

    add-int v24, v24, v8

    invoke-direct/range {v22 .. v24}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 97
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 104
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    new-instance v22, Lcom/espressif/iot/esptouch/protocol/DataCode;

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/espressif/iot/esptouch/protocol/DataCode;-><init>(CI)V

    aput-object v22, v20, v21

    .line 105
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 6

    .prologue
    .line 109
    iget-object v2, p0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x6

    new-array v0, v2, [B

    .line 110
    .local v0, "datumCode":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/espressif/iot/esptouch/protocol/DatumCode;->mDataCodes:[Lcom/espressif/iot/esptouch/protocol/DataCode;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/espressif/iot/esptouch/protocol/DataCode;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x6

    const/4 v5, 0x6

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object v0
.end method

.method public getU8s()[C
    .locals 7

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/protocol/DatumCode;->getBytes()[B

    move-result-object v0

    .line 135
    .local v0, "dataBytes":[B
    array-length v6, v0

    div-int/lit8 v4, v6, 0x2

    .line 136
    .local v4, "len":I
    new-array v1, v4, [C

    .line 138
    .local v1, "dataU8s":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 139
    mul-int/lit8 v6, v3, 0x2

    aget-byte v2, v0, v6

    .line 140
    .local v2, "high":B
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v0, v6

    .line 141
    .local v5, "low":B
    invoke-static {v2, v5}, Lcom/espressif/iot/esptouch/util/ByteUtil;->combine2bytesToU16(BB)C

    move-result v6

    add-int/lit8 v6, v6, 0x28

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "high":B
    .end local v5    # "low":B
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/protocol/DatumCode;->getBytes()[B

    move-result-object v0

    .line 121
    .local v0, "dataBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 122
    aget-byte v4, v0, v2

    invoke-static {v4}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2HexString(B)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "hexString":Ljava/lang/String;
    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 125
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "hexString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
