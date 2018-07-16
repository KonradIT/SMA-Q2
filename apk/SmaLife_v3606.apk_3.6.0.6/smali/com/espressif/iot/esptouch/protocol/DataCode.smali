.class public Lcom/espressif/iot/esptouch/protocol/DataCode;
.super Ljava/lang/Object;
.source "DataCode.java"

# interfaces
.implements Lcom/espressif/iot/esptouch/task/ICodeData;


# static fields
.field public static final DATA_CODE_LEN:I = 0x6

.field private static final INDEX_MAX:I = 0x7f


# instance fields
.field private final mCrcHigh:B

.field private final mCrcLow:B

.field private final mDataHigh:B

.field private final mDataLow:B

.field private final mSeqHeader:B


# direct methods
.method public constructor <init>(CI)V
    .locals 8
    .param p1, "u8"    # C
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v3, 0x7f

    if-le p2, v3, :cond_0

    .line 41
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "index > INDEX_MAX"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->splitUint8To2bytes(C)[B

    move-result-object v2

    .line 44
    .local v2, "dataBytes":[B
    aget-byte v3, v2, v6

    iput-byte v3, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mDataHigh:B

    .line 45
    aget-byte v3, v2, v7

    iput-byte v3, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mDataLow:B

    .line 46
    new-instance v0, Lcom/espressif/iot/esptouch/util/CRC8;

    invoke-direct {v0}, Lcom/espressif/iot/esptouch/util/CRC8;-><init>()V

    .line 47
    .local v0, "crc8":Lcom/espressif/iot/esptouch/util/CRC8;
    invoke-static {p1}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertUint8toByte(C)B

    move-result v3

    invoke-virtual {v0, v3}, Lcom/espressif/iot/esptouch/util/CRC8;->update(I)V

    .line 48
    invoke-virtual {v0, p2}, Lcom/espressif/iot/esptouch/util/CRC8;->update(I)V

    .line 49
    invoke-virtual {v0}, Lcom/espressif/iot/esptouch/util/CRC8;->getValue()J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Lcom/espressif/iot/esptouch/util/ByteUtil;->splitUint8To2bytes(C)[B

    move-result-object v1

    .line 50
    .local v1, "crcBytes":[B
    aget-byte v3, v1, v6

    iput-byte v3, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mCrcHigh:B

    .line 51
    aget-byte v3, v1, v7

    iput-byte v3, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mCrcLow:B

    .line 52
    int-to-byte v3, p2

    iput-byte v3, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mSeqHeader:B

    .line 53
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/4 v1, 0x6

    new-array v0, v1, [B

    .line 58
    .local v0, "dataBytes":[B
    aput-byte v3, v0, v3

    .line 59
    iget-byte v1, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mCrcHigh:B

    iget-byte v2, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mDataHigh:B

    invoke-static {v1, v2}, Lcom/espressif/iot/esptouch/util/ByteUtil;->combine2bytesToOne(BB)B

    move-result v1

    aput-byte v1, v0, v4

    .line 60
    const/4 v1, 0x2

    aput-byte v4, v0, v1

    .line 61
    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mSeqHeader:B

    aput-byte v2, v0, v1

    .line 62
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 63
    const/4 v1, 0x5

    iget-byte v2, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mCrcLow:B

    iget-byte v3, p0, Lcom/espressif/iot/esptouch/protocol/DataCode;->mDataLow:B

    invoke-static {v2, v3}, Lcom/espressif/iot/esptouch/util/ByteUtil;->combine2bytesToOne(BB)B

    move-result v2

    aput-byte v2, v0, v1

    .line 64
    return-object v0
.end method

.method public getU8s()[C
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DataCode don\'t support getU8s()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/espressif/iot/esptouch/protocol/DataCode;->getBytes()[B

    move-result-object v0

    .line 71
    .local v0, "dataBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 72
    aget-byte v4, v0, v2

    invoke-static {v4}, Lcom/espressif/iot/esptouch/util/ByteUtil;->convertByte2HexString(B)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "hexString":Ljava/lang/String;
    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 75
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "hexString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
