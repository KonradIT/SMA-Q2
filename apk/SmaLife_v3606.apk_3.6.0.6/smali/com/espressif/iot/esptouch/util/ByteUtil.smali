.class public Lcom/espressif/iot/esptouch/util/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field public static final ESPTOUCH_ENCODING_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine2bytesToOne(BB)B
    .locals 2
    .param p0, "high"    # B
    .param p1, "low"    # B

    .prologue
    const/16 v0, 0xf

    .line 164
    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Out of Boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public static combine2bytesToU16(BB)C
    .locals 3
    .param p0, "high"    # B
    .param p1, "low"    # B

    .prologue
    .line 180
    invoke-static {p0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v0

    .line 181
    .local v0, "highU8":C
    invoke-static {p1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v1

    .line 182
    .local v1, "lowU8":C
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    int-to-char v2, v2

    return v2
.end method

.method public static convertByte2HexString(B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 112
    invoke-static {p0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v0

    .line 113
    .local v0, "u8":C
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static convertByte2Uint8(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 63
    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method public static convertBytes2Uint8s([B)[C
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 74
    array-length v1, p0

    .line 75
    .local v1, "len":I
    new-array v2, v1, [C

    .line 76
    .local v2, "uint8s":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v3

    aput-char v3, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v2
.end method

.method public static convertU8ToHexString(C)Ljava/lang/String;
    .locals 1
    .param p0, "u8"    # C

    .prologue
    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertUint8toByte(C)B
    .locals 2
    .param p0, "uint8"    # C

    .prologue
    .line 47
    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Out of Boundary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    int-to-byte v0, p0

    return v0
.end method

.method public static genSpecBytes(B)[B
    .locals 2
    .param p0, "len"    # B

    .prologue
    .line 236
    invoke-static {p0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v0

    .line 237
    .local v0, "u8":C
    invoke-static {v0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->genSpecBytes(C)[B

    move-result-object v1

    return-object v1
.end method

.method public static genSpecBytes(C)[B
    .locals 3
    .param p0, "len"    # C

    .prologue
    .line 210
    new-array v0, p0, [B

    .line 211
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 212
    const/16 v2, 0x31

    aput-byte v2, v0, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-object v0
.end method

.method public static getBytesByString(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the charset is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {}, Lcom/espressif/iot/esptouch/util/ByteUtil;->test_convertUint8toByte()V

    .line 345
    invoke-static {}, Lcom/espressif/iot/esptouch/util/ByteUtil;->test_convertChar2Uint8()V

    .line 346
    invoke-static {}, Lcom/espressif/iot/esptouch/util/ByteUtil;->test_splitUint8To2bytes()V

    .line 347
    invoke-static {}, Lcom/espressif/iot/esptouch/util/ByteUtil;->test_combine2bytesToOne()V

    .line 348
    invoke-static {}, Lcom/espressif/iot/esptouch/util/ByteUtil;->test_parseBssid()V

    .line 349
    return-void
.end method

.method public static parseBssid([B)Ljava/lang/String;
    .locals 7
    .param p0, "bssidBytes"    # [B

    .prologue
    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 262
    aget-byte v5, p0, v1

    and-int/lit16 v2, v5, 0xff

    .line 263
    .local v2, "k":I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "hexK":Ljava/lang/String;
    const/16 v5, 0x10

    if-ge v2, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "str":Ljava/lang/String;
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    .line 264
    goto :goto_1

    .line 268
    .end local v0    # "hexK":Ljava/lang/String;
    .end local v2    # "k":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static parseBssid([BII)Ljava/lang/String;
    .locals 3
    .param p0, "bssidBytes"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 241
    new-array v0, p2, [B

    .line 242
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 243
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {v0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->parseBssid([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static putString2bytes([BLjava/lang/String;III)V
    .locals 3
    .param p0, "destbytes"    # [B
    .param p1, "srcString"    # Ljava/lang/String;
    .param p2, "destOffset"    # I
    .param p3, "srcOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 35
    add-int v1, p4, v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v0

    aput-byte v2, p0, v1

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public static putbytes2Uint8s([C[BIII)V
    .locals 3
    .param p0, "destUint8s"    # [C
    .param p1, "srcBytes"    # [B
    .param p2, "destOffset"    # I
    .param p3, "srcOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 99
    add-int v1, p2, v0

    add-int v2, p3, v0

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v2

    aput-char v2, p0, v1

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method private static randomByte()B
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    return v0
.end method

.method public static randomBytes(B)[B
    .locals 2
    .param p0, "len"    # B

    .prologue
    .line 225
    invoke-static {p0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v0

    .line 226
    .local v0, "u8":C
    invoke-static {v0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->randomBytes(C)[B

    move-result-object v1

    return-object v1
.end method

.method public static randomBytes(C)[B
    .locals 3
    .param p0, "len"    # C

    .prologue
    .line 202
    new-array v0, p0, [B

    .line 203
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 204
    invoke-static {}, Lcom/espressif/iot/esptouch/util/ByteUtil;->randomByte()B

    move-result v2

    aput-byte v2, v0, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-object v0
.end method

.method public static splitUint8To2bytes(C)[B
    .locals 9
    .param p0, "uint8"    # C

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 137
    if-ltz p0, :cond_0

    const/16 v4, 0xff

    if-le p0, v4, :cond_1

    .line 138
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Out of Boundary"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 144
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v1, v4

    .line 145
    .local v1, "high":B
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v2, v4

    .line 150
    .local v2, "low":B
    :goto_0
    new-array v3, v8, [B

    aput-byte v1, v3, v6

    aput-byte v2, v3, v5

    .line 151
    .local v3, "result":[B
    return-object v3

    .line 147
    .end local v1    # "high":B
    .end local v2    # "low":B
    .end local v3    # "result":[B
    :cond_2
    const/4 v1, 0x0

    .line 148
    .restart local v1    # "high":B
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v2, v4

    .restart local v2    # "low":B
    goto :goto_0
.end method

.method private static test_combine2bytesToOne()V
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "high":B
    const/4 v1, 0x4

    .line 296
    .local v1, "low":B
    invoke-static {v0, v1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->combine2bytesToOne(BB)B

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 297
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "test_combine2bytesToOne(): pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "test_combine2bytesToOne(): fail"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static test_convertChar2Uint8()V
    .locals 5

    .prologue
    .line 304
    const/16 v0, 0x61

    .line 307
    .local v0, "b1":B
    const/16 v1, -0x80

    .line 308
    .local v1, "b2":B
    const/4 v2, -0x1

    .line 309
    .local v2, "b3":B
    invoke-static {v0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2Uint8(B)C

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 311
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "test_convertChar2Uint8(): pass"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "test_convertChar2Uint8(): fail"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static test_convertUint8toByte()V
    .locals 5

    .prologue
    .line 318
    const/16 v0, 0x61

    .line 321
    .local v0, "c1":C
    const/16 v1, 0x80

    .line 322
    .local v1, "c2":C
    const/16 v2, 0xff

    .line 323
    .local v2, "c3":C
    invoke-static {v0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertUint8toByte(C)B

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertUint8toByte(C)B

    move-result v3

    const/16 v4, -0x80

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertUint8toByte(C)B

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 325
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "test_convertUint8toByte(): pass"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "test_convertUint8toByte(): fail"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static test_parseBssid()V
    .locals 3

    .prologue
    .line 332
    const/4 v1, 0x6

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 333
    .local v0, "b":[B
    invoke-static {v0}, Lcom/espressif/iot/esptouch/util/ByteUtil;->parseBssid([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0ffe349aa3c4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "test_parseBssid(): pass"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "test_parseBssid(): fail"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :array_0
    .array-data 1
        0xft
        -0x2t
        0x34t
        -0x66t
        -0x5dt
        -0x3ct
    .end array-data
.end method

.method private static test_splitUint8To2bytes()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 285
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->splitUint8To2bytes(C)[B

    move-result-object v0

    .line 286
    .local v0, "result":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-ne v1, v2, :cond_0

    aget-byte v1, v0, v2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 287
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "test_splitUint8To2bytes(): pass"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "test_splitUint8To2bytes(): fail"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
