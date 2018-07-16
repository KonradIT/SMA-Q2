.class public Lcom/accloud/service/ACMessageOption;
.super Ljava/lang/Object;
.source "ACMessageOption.java"


# static fields
.field public static ZC_OPT_APPDIRECT:S

.field public static ZC_OPT_TRANSPORT:S


# instance fields
.field OptBytes:[B

.field OptCode:S

.field OptLen:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-short v0, Lcom/accloud/service/ACMessageOption;->ZC_OPT_TRANSPORT:S

    .line 14
    const/4 v0, 0x1

    sput-short v0, Lcom/accloud/service/ACMessageOption;->ZC_OPT_APPDIRECT:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteMerger([B[B)[B
    .locals 4
    .param p0, "byte_1"    # [B
    .param p1, "byte_2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 75
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 76
    .local v0, "byte_3":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-object v0
.end method

.method public static getZMessageOption(S[B)Ljava/util/List;
    .locals 13
    .param p0, "length"    # S
    .param p1, "bMessageOption"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[B)",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACMessageOption;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v7, "zMessageOptionList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACMessageOption;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 45
    new-instance v6, Lcom/accloud/service/ACMessageOption;

    invoke-direct {v6}, Lcom/accloud/service/ACMessageOption;-><init>()V

    .line 46
    .local v6, "zMessageOption":Lcom/accloud/service/ACMessageOption;
    new-array v0, v12, [B

    .line 47
    .local v0, "bOptCode":[B
    aget-byte v8, p1, v10

    aput-byte v8, v0, v10

    .line 48
    aget-byte v8, p1, v11

    aput-byte v8, v0, v11

    .line 49
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->shortValue()S

    move-result v3

    .line 50
    .local v3, "optCode":S
    invoke-virtual {v6, v3}, Lcom/accloud/service/ACMessageOption;->setOptCode(S)V

    .line 52
    new-array v1, v12, [B

    .line 53
    .local v1, "bOptLen":[B
    aget-byte v8, p1, v12

    aput-byte v8, v1, v10

    .line 54
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    aput-byte v8, v1, v11

    .line 55
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->shortValue()S

    move-result v4

    .line 56
    .local v4, "optLen":S
    invoke-virtual {v6, v4}, Lcom/accloud/service/ACMessageOption;->setOptLen(S)V

    .line 58
    new-array v5, v4, [B

    .line 59
    .local v5, "optMsg":[B
    const/4 v8, 0x4

    invoke-static {p1, v8, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {v6, v5}, Lcom/accloud/service/ACMessageOption;->setOptBytes([B)V

    .line 62
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v8, v4, 0x4

    array-length v9, p1

    add-int/lit8 v9, v9, -0x4

    sub-int/2addr v9, v4

    invoke-static {p1, v8, p1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "bOptCode":[B
    .end local v1    # "bOptLen":[B
    .end local v3    # "optCode":S
    .end local v4    # "optLen":S
    .end local v5    # "optMsg":[B
    .end local v6    # "zMessageOption":Lcom/accloud/service/ACMessageOption;
    :cond_0
    return-object v7
.end method

.method public static getZMessageOptionBytes(Ljava/util/List;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACMessageOption;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "zMessageOptionList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACMessageOption;>;"
    const/4 v11, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    .local v5, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, "bMsgOptList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 24
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/accloud/service/ACMessageOption;

    .line 25
    .local v7, "zMessageOption":Lcom/accloud/service/ACMessageOption;
    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptLen()S

    move-result v8

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    .line 26
    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptLen()S

    move-result v8

    add-int/lit8 v8, v8, 0x4

    new-array v0, v8, [B

    .line 27
    .local v0, "bMsgOpt":[B
    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptCode()S

    move-result v8

    invoke-static {v8, v0, v11}, Lcom/accloud/service/ACMessageOption;->short2Byte(S[BI)V

    .line 28
    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptCode()S

    move-result v8

    const/4 v9, 0x2

    invoke-static {v8, v0, v9}, Lcom/accloud/service/ACMessageOption;->short2Byte(S[BI)V

    .line 29
    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptBytes()[B

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptLen()S

    move-result v10

    invoke-static {v8, v11, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v7}, Lcom/accloud/service/ACMessageOption;->getOptLen()S

    move-result v8

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "bMsgOpt":[B
    .end local v7    # "zMessageOption":Lcom/accloud/service/ACMessageOption;
    :cond_0
    new-array v2, v5, [B

    .line 34
    .local v2, "bytes":[B
    const/4 v6, 0x0

    .line 35
    .local v6, "offset":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 36
    .restart local v0    # "bMsgOpt":[B
    array-length v8, v0

    invoke-static {v0, v11, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    array-length v8, v0

    add-int/2addr v6, v8

    .line 38
    goto :goto_1

    .line 39
    .end local v0    # "bMsgOpt":[B
    :cond_1
    return-object v2
.end method

.method public static short2Byte(S[BI)V
    .locals 2
    .param p0, "a"    # S
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 70
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 71
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 72
    return-void
.end method


# virtual methods
.method public byte3Merger([B[B[B)[B
    .locals 4
    .param p1, "byte_1"    # [B
    .param p2, "byte_2"    # [B
    .param p3, "byte_3"    # [B

    .prologue
    const/4 v3, 0x0

    .line 82
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 83
    .local v0, "byte_4":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    return-object v0
.end method

.method public getOptBytes()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/accloud/service/ACMessageOption;->OptBytes:[B

    return-object v0
.end method

.method public getOptCode()S
    .locals 1

    .prologue
    .line 90
    iget-short v0, p0, Lcom/accloud/service/ACMessageOption;->OptCode:S

    return v0
.end method

.method public getOptLen()S
    .locals 1

    .prologue
    .line 98
    iget-short v0, p0, Lcom/accloud/service/ACMessageOption;->OptLen:S

    return v0
.end method

.method public setOptBytes([B)V
    .locals 0
    .param p1, "optBytes"    # [B

    .prologue
    .line 110
    iput-object p1, p0, Lcom/accloud/service/ACMessageOption;->OptBytes:[B

    .line 111
    return-void
.end method

.method public setOptCode(S)V
    .locals 0
    .param p1, "optCode"    # S

    .prologue
    .line 94
    iput-short p1, p0, Lcom/accloud/service/ACMessageOption;->OptCode:S

    .line 95
    return-void
.end method

.method public setOptLen(S)V
    .locals 0
    .param p1, "optLen"    # S

    .prologue
    .line 102
    iput-short p1, p0, Lcom/accloud/service/ACMessageOption;->OptLen:S

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACMessageOption{OptCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/accloud/service/ACMessageOption;->OptCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OptLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/accloud/service/ACMessageOption;->OptLen:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OptBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACMessageOption;->OptBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
