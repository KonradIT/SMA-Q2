.class public Lcom/tencent/open/utils/DataConvert;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intToBytes2(I)[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 11
    new-array v1, v3, [B

    .line 12
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 13
    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    return-object v1
.end method

.method public static putBytes2Bytes([BI[BI)I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 92
    add-int v1, p3, v0

    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    array-length v0, p0

    return v0
.end method

.method public static putBytes2Bytes([B[BI)I
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 85
    add-int v1, p2, v0

    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    array-length v0, p0

    return v0
.end method

.method public static putInt2Bytes(I[BI)I
    .locals 4

    .prologue
    .line 61
    invoke-static {p0}, Lcom/tencent/open/utils/DataConvert;->intToBytes2(I)[B

    move-result-object v1

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    add-int v2, p2, v0

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    array-length v0, v1

    return v0
.end method

.method public static putShort2Bytes(I[BI)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 69
    invoke-static {p0}, Lcom/tencent/open/utils/DataConvert;->intToBytes2(I)[B

    move-result-object v0

    .line 70
    add-int/lit8 v1, p2, 0x0

    aget-byte v2, v0, v3

    aput-byte v2, p1, v1

    .line 71
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    aput-byte v0, p1, v1

    .line 72
    return v3
.end method

.method public static putString2Bytes(Ljava/lang/String;[BI)I
    .locals 4

    .prologue
    .line 76
    invoke-static {p0}, Lcom/tencent/open/utils/DataConvert;->string2bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 77
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 78
    add-int v2, p2, v0

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    array-length v0, v1

    return v0
.end method

.method public static string2bytes(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 45
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 47
    div-int/lit8 v0, v2, 0x2

    .line 48
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 53
    :cond_0
    new-array v3, v0, [B

    .line 54
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 55
    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-object v3
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 27
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 30
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
