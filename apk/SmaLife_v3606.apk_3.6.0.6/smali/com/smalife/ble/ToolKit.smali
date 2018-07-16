.class public Lcom/smalife/ble/ToolKit;
.super Ljava/lang/Object;
.source "ToolKit.java"


# static fields
.field private static binaryArray:[Ljava/lang/String;

.field private static hexStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/smalife/ble/ToolKit;->hexStr:Ljava/lang/String;

    .line 5
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0001"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0011"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 6
    const-string v2, "0100"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0101"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0110"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0111"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1001"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1010"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "1011"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 7
    const-string v2, "1100"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1101"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1110"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "1111"

    aput-object v2, v0, v1

    .line 5
    sput-object v0, Lcom/smalife/ble/ToolKit;->binaryArray:[Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BinaryToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 65
    const-string v2, ""

    .line 66
    .local v2, "result":Ljava/lang/String;
    const-string v0, ""

    .line 67
    .local v0, "hex":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 74
    return-object v2

    .line 69
    :cond_0
    sget-object v3, Lcom/smalife/ble/ToolKit;->hexStr:Ljava/lang/String;

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/smalife/ble/ToolKit;->hexStr:Ljava/lang/String;

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static binaryStr2Integer(Ljava/lang/String;)I
    .locals 1
    .param p0, "paramter"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static byteToInt2([B)I
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 131
    const/16 v1, 0xff

    .line 132
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 133
    .local v3, "temp":I
    const/4 v2, 0x0

    .line 134
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 139
    return v2

    .line 135
    :cond_0
    shl-int/lit8 v2, v2, 0x8

    .line 136
    aget-byte v4, p0, v0

    and-int v3, v4, v1

    .line 137
    or-int/2addr v2, v3

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bytes2BinaryStr([B)Ljava/lang/String;
    .locals 7
    .param p0, "bArray"    # [B

    .prologue
    .line 84
    const-string v1, ""

    .line 85
    .local v1, "outStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "pos":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 94
    return-object v1

    .line 86
    :cond_0
    aget-byte v0, p0, v3

    .line 88
    .local v0, "b":B
    and-int/lit16 v5, v0, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/smalife/ble/ToolKit;->binaryArray:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    and-int/lit8 v2, v0, 0xf

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/smalife/ble/ToolKit;->binaryArray:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 12
    :cond_0
    const/4 v4, 0x0

    .line 22
    :goto_0
    return-object v4

    .line 14
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 15
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 16
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 18
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static bytesToInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 47
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 49
    .local v0, "addr":I
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 51
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 53
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public static dataToByte([I)B
    .locals 10
    .param p0, "data"    # [I

    .prologue
    .line 32
    const/4 v9, 0x7

    aget v9, p0, v9

    mul-int/lit16 v8, v9, 0x80

    .line 33
    .local v8, "temp_7":I
    const/4 v9, 0x6

    aget v9, p0, v9

    mul-int/lit8 v7, v9, 0x40

    .line 34
    .local v7, "temp_6":I
    const/4 v9, 0x5

    aget v9, p0, v9

    mul-int/lit8 v6, v9, 0x20

    .line 35
    .local v6, "temp_5":I
    const/4 v9, 0x4

    aget v9, p0, v9

    mul-int/lit8 v5, v9, 0x10

    .line 36
    .local v5, "temp_4":I
    const/4 v9, 0x3

    aget v9, p0, v9

    mul-int/lit8 v4, v9, 0x8

    .line 37
    .local v4, "temp_3":I
    const/4 v9, 0x2

    aget v9, p0, v9

    mul-int/lit8 v3, v9, 0x4

    .line 38
    .local v3, "temp_2":I
    const/4 v9, 0x1

    aget v9, p0, v9

    mul-int/lit8 v2, v9, 0x2

    .line 39
    .local v2, "temp_1":I
    const/4 v9, 0x0

    aget v1, p0, v9

    .line 40
    .local v1, "temp_0":I
    add-int v9, v1, v2

    add-int/2addr v9, v3

    add-int/2addr v9, v4

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int v0, v9, v8

    .line 42
    .local v0, "temp":I
    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    return v9
.end method

.method public static intToBytes2(I)[B
    .locals 4
    .param p0, "n"    # I

    .prologue
    const/4 v3, 0x4

    .line 114
    new-array v0, v3, [B

    .line 116
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 120
    return-object v0

    .line 117
    :cond_0
    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
