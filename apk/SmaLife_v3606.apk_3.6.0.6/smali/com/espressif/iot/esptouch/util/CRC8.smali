.class public Lcom/espressif/iot/esptouch/util/CRC8;
.super Ljava/lang/Object;
.source "CRC8.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final CRC_INITIAL:S = 0x0s

.field private static final CRC_POLYNOM:S = 0x8cs

.field private static final crcTable:[S


# instance fields
.field private final init:S

.field private value:S


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 9
    new-array v3, v5, [S

    sput-object v3, Lcom/espressif/iot/esptouch/util/CRC8;->crcTable:[S

    .line 18
    const/4 v1, 0x0

    .local v1, "dividend":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 19
    move v2, v1

    .line 20
    .local v2, "remainder":I
    const/4 v0, 0x0

    .local v0, "bit":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 21
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 22
    ushr-int/lit8 v3, v2, 0x1

    xor-int/lit16 v2, v3, 0x8c

    .line 20
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_1
    sget-object v3, Lcom/espressif/iot/esptouch/util/CRC8;->crcTable:[S

    int-to-short v4, v2

    aput-short v4, v3, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "bit":I
    .end local v2    # "remainder":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/espressif/iot/esptouch/util/CRC8;->init:S

    iput-short v0, p0, Lcom/espressif/iot/esptouch/util/CRC8;->value:S

    .line 31
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 59
    iget-short v0, p0, Lcom/espressif/iot/esptouch/util/CRC8;->value:S

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 64
    iget-short v0, p0, Lcom/espressif/iot/esptouch/util/CRC8;->init:S

    iput-short v0, p0, Lcom/espressif/iot/esptouch/util/CRC8;->value:S

    .line 65
    return-void
.end method

.method public update(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/espressif/iot/esptouch/util/CRC8;->update([BII)V

    .line 55
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 49
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/espressif/iot/esptouch/util/CRC8;->update([BII)V

    .line 50
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 36
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    iget-short v3, p0, Lcom/espressif/iot/esptouch/util/CRC8;->value:S

    xor-int v0, v2, v3

    .line 37
    .local v0, "data":I
    sget-object v2, Lcom/espressif/iot/esptouch/util/CRC8;->crcTable:[S

    and-int/lit16 v3, v0, 0xff

    aget-short v2, v2, v3

    iget-short v3, p0, Lcom/espressif/iot/esptouch/util/CRC8;->value:S

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/espressif/iot/esptouch/util/CRC8;->value:S

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "data":I
    :cond_0
    return-void
.end method
