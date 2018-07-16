.class public Lcom/xlwtech/util/XlwString;
.super Ljava/lang/Object;
.source "XlwString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xlwtech/util/XlwString$StrRet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bin2HexStr([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 64
    const-string v1, ""

    .line 65
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 68
    return-object v1

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int v6, v0, p1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static HexString2Bytes(Ljava/lang/String;[BI)V
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 85
    .local v1, "iLen":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 86
    .local v2, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-lt v0, v3, :cond_0

    .line 90
    return-void

    .line 88
    :cond_0
    add-int v3, p2, v0

    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, v2, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v2, v5

    invoke-static {v4, v5}, Lcom/xlwtech/util/XlwString;->uniteBytes(BB)B

    move-result v4

    aput-byte v4, p1, v3

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Int2Bytes(I[BI)V
    .locals 2
    .param p0, "src"    # I
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 104
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 105
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 106
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 107
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 108
    return-void
.end method

.method public static StrGetHeadAndCut(Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "divid"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v1, Lcom/xlwtech/util/XlwString$StrRet;

    invoke-direct {v1}, Lcom/xlwtech/util/XlwString$StrRet;-><init>()V

    .line 17
    .local v1, "ret":Lcom/xlwtech/util/XlwString$StrRet;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 20
    const-string v2, ""

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    .line 21
    iput-object p0, v1, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    .line 28
    :goto_0
    return-object v1

    .line 25
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    .line 26
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    goto :goto_0
.end method

.method public static StrGetKeyValueAndCut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xlwtech/util/XlwString$StrRet;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "equal"    # Ljava/lang/String;
    .param p2, "divid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    new-instance v1, Lcom/xlwtech/util/XlwString$StrRet;

    invoke-direct {v1}, Lcom/xlwtech/util/XlwString$StrRet;-><init>()V

    .line 35
    .local v1, "ret":Lcom/xlwtech/util/XlwString$StrRet;
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, "pos":I
    if-gez v0, :cond_0

    .line 38
    const-string v2, ""

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 46
    if-gez v0, :cond_1

    .line 48
    iput-object p0, v1, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    .line 49
    const-string v2, ""

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 56
    :goto_1
    return-object v1

    .line 42
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->left:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->value:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xlwtech/util/XlwString$StrRet;->key:Ljava/lang/String;

    goto :goto_1
.end method

.method public static String2Bytes(Ljava/lang/String;[BI)V
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 96
    .local v1, "iLen":I
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 97
    .local v2, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    add-int v3, p2, v0

    aget-byte v4, v2, v0

    aput-byte v4, p1, v3

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static int2Ip(I)Ljava/lang/String;
    .locals 2
    .param p0, "intIp"    # I

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static uniteBytes(BB)B
    .locals 8
    .param p0, "src0"    # B
    .param p1, "src1"    # B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aput-byte p0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 74
    .local v0, "_b0":B
    shl-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aput-byte p1, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 76
    .local v1, "_b1":B
    xor-int v3, v0, v1

    int-to-byte v2, v3

    .line 77
    .local v2, "ret":B
    return v2
.end method
