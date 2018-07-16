.class public Lcom/accloud/service/ACMessage;
.super Ljava/lang/Object;
.source "ACMessage.java"


# instance fields
.field aesKey:[B

.field msgPayload:[B

.field zMessageHead:Lcom/accloud/service/ACMessageHead;

.field zMessageOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACMessageOption;",
            ">;"
        }
    .end annotation
.end field

.field zSecHead:Lcom/accloud/service/ACSecHead;


# direct methods
.method public constructor <init>(Lcom/accloud/service/ACMessageHead;[B)V
    .locals 0
    .param p1, "messageHead"    # Lcom/accloud/service/ACMessageHead;
    .param p2, "payload"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    .line 38
    iput-object p2, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/accloud/service/ACSecHead;Lcom/accloud/service/ACMessageHead;Ljava/util/List;[B)V
    .locals 0
    .param p1, "secHead"    # Lcom/accloud/service/ACSecHead;
    .param p2, "messageHead"    # Lcom/accloud/service/ACMessageHead;
    .param p4, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/service/ACSecHead;",
            "Lcom/accloud/service/ACMessageHead;",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACMessageOption;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "messageOptionList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACMessageOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/accloud/service/ACMessage;->zSecHead:Lcom/accloud/service/ACSecHead;

    .line 31
    iput-object p2, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    .line 32
    iput-object p4, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    .line 33
    iput-object p3, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bArray"    # [B

    .prologue
    .line 212
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 215
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "sTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 217
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 218
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUDPZMessage([B)Lcom/accloud/service/ACMessage;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 74
    new-array v0, v6, [B

    .line 75
    .local v0, "bMessageHead":[B
    invoke-static {p0, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-static {v0}, Lcom/accloud/service/ACMessageHead;->getZMessageHead([B)Lcom/accloud/service/ACMessageHead;

    move-result-object v2

    .line 78
    .local v2, "msgHead":Lcom/accloud/service/ACMessageHead;
    invoke-virtual {v2}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v5

    new-array v3, v5, [B

    .line 80
    .local v3, "payload":[B
    const/16 v5, 0x8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v7

    invoke-static {p0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    array-length v5, v3

    invoke-static {v3, v5}, Lcom/accloud/utils/Crc16Util;->GetCrc16([BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/accloud/service/ACMessageHead;->getTotalMsgCrc()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 85
    new-instance v4, Lcom/accloud/service/ACMessage;

    invoke-direct {v4, v2, v3}, Lcom/accloud/service/ACMessage;-><init>(Lcom/accloud/service/ACMessageHead;[B)V

    .line 86
    :cond_0
    :goto_0
    return-object v4

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method


# virtual methods
.method public byte3Merger([B[B[B)[B
    .locals 4
    .param p1, "byte_1"    # [B
    .param p2, "byte_2"    # [B
    .param p3, "byte_3"    # [B

    .prologue
    const/4 v3, 0x0

    .line 179
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 180
    .local v0, "byte_4":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object v0
.end method

.method public byteMerger([B[B)[B
    .locals 4
    .param p1, "byte_1"    # [B
    .param p2, "byte_2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 172
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 173
    .local v0, "byte_3":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    return-object v0
.end method

.method public getMessageHead()Lcom/accloud/service/ACMessageHead;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    return-object v0
.end method

.method public getMsgPayload()[B
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    return-object v0
.end method

.method public getSecHead()Lcom/accloud/service/ACSecHead;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/accloud/service/ACMessage;->zSecHead:Lcom/accloud/service/ACSecHead;

    return-object v0
.end method

.method public getTCPBytes()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "bytes":[B
    :try_start_0
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    invoke-static {v2}, Lcom/accloud/service/ACMessageHead;->getZMessageHeadBytes(Lcom/accloud/service/ACMessageHead;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    invoke-static {v3}, Lcom/accloud/service/ACMessageOption;->getZMessageOptionBytes(Ljava/util/List;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    invoke-virtual {p0, v2, v3, v4}, Lcom/accloud/service/ACMessage;->byte3Merger([B[B[B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->aesKey:[B

    invoke-static {v2, v3}, Lcom/accloud/utils/AesUtil;->encrypt([B[B)[B

    move-result-object v0

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zSecHead:Lcom/accloud/service/ACSecHead;

    array-length v3, v0

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Lcom/accloud/service/ACSecHead;->setTotalMsg(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zSecHead:Lcom/accloud/service/ACSecHead;

    invoke-static {v2}, Lcom/accloud/service/ACSecHead;->getZSecHeadBytes(Lcom/accloud/service/ACSecHead;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/accloud/service/ACMessage;->byteMerger([B[B)[B

    move-result-object v2

    :goto_1
    return-object v2

    .line 57
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    invoke-static {v2}, Lcom/accloud/service/ACMessageHead;->getZMessageHeadBytes(Lcom/accloud/service/ACMessageHead;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    invoke-static {v3}, Lcom/accloud/service/ACMessageOption;->getZMessageOptionBytes(Ljava/util/List;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/accloud/service/ACMessage;->byteMerger([B[B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->aesKey:[B

    invoke-static {v2, v3}, Lcom/accloud/utils/AesUtil;->encrypt([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    invoke-static {v2}, Lcom/accloud/service/ACMessageHead;->getZMessageHeadBytes(Lcom/accloud/service/ACMessageHead;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    invoke-virtual {p0, v2, v3}, Lcom/accloud/service/ACMessage;->byteMerger([B[B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->aesKey:[B

    invoke-static {v2, v3}, Lcom/accloud/utils/AesUtil;->encrypt([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    invoke-static {v2}, Lcom/accloud/service/ACMessageHead;->getZMessageHeadBytes(Lcom/accloud/service/ACMessageHead;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/service/ACMessage;->aesKey:[B

    invoke-static {v2, v3}, Lcom/accloud/utils/AesUtil;->encrypt([B[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ACDeviceLocalControl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v5, v2, v5

    goto :goto_1
.end method

.method public getTCPZMessage([B)Lcom/accloud/service/ACMessage;
    .locals 9
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 93
    invoke-static {p1}, Lcom/accloud/service/ACSecHead;->getZSecHead([B)Lcom/accloud/service/ACSecHead;

    move-result-object v6

    .line 94
    .local v6, "secHead":Lcom/accloud/service/ACSecHead;
    invoke-virtual {v6}, Lcom/accloud/service/ACSecHead;->getTotalMsg()I

    move-result v3

    .line 95
    .local v3, "length":I
    new-array v1, v3, [B

    .line 96
    .local v1, "bSecMessage":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 97
    add-int/lit8 v7, v2, 0x4

    aget-byte v7, p1, v7

    aput-byte v7, v1, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, "bMessage":[B
    iget-object v7, p0, Lcom/accloud/service/ACMessage;->aesKey:[B

    invoke-static {v1, v7}, Lcom/accloud/utils/AesUtil;->decrypt([B[B)[B

    move-result-object v0

    .line 103
    array-length v7, v0

    if-ge v7, v8, :cond_1

    .line 104
    const/4 v7, 0x0

    .line 143
    :goto_1
    return-object v7

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/accloud/service/ACMessageHead;->getZMessageHead([B)Lcom/accloud/service/ACMessageHead;

    move-result-object v4

    .line 109
    .local v4, "messageHead":Lcom/accloud/service/ACMessageHead;
    const/4 v5, 0x0

    .line 110
    .local v5, "payload":[B
    array-length v7, v0

    if-le v7, v8, :cond_2

    .line 111
    array-length v7, v0

    add-int/lit8 v7, v7, -0x8

    new-array v5, v7, [B

    .line 112
    const/4 v2, 0x0

    :goto_2
    array-length v7, v0

    add-int/lit8 v7, v7, -0x8

    if-ge v2, v7, :cond_2

    .line 113
    add-int/lit8 v7, v2, 0x8

    aget-byte v7, v0, v7

    aput-byte v7, v5, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 143
    :cond_2
    new-instance v7, Lcom/accloud/service/ACMessage;

    iget-object v8, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    invoke-direct {v7, v6, v4, v8, v5}, Lcom/accloud/service/ACMessage;-><init>(Lcom/accloud/service/ACSecHead;Lcom/accloud/service/ACMessageHead;Ljava/util/List;[B)V

    goto :goto_1
.end method

.method public getUDPBytes()[B
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    invoke-static {v0}, Lcom/accloud/service/ACMessageHead;->getZMessageHeadBytes(Lcom/accloud/service/ACMessageHead;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    invoke-virtual {p0, v0, v1}, Lcom/accloud/service/ACMessage;->byteMerger([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public setAesKey([B)V
    .locals 0
    .param p1, "aesKey"    # [B

    .prologue
    .line 42
    iput-object p1, p0, Lcom/accloud/service/ACMessage;->aesKey:[B

    .line 43
    return-void
.end method

.method public setMessageHead(Lcom/accloud/service/ACMessageHead;)V
    .locals 0
    .param p1, "zMessageHead"    # Lcom/accloud/service/ACMessageHead;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    .line 161
    return-void
.end method

.method public setMsgPayload([B)V
    .locals 0
    .param p1, "msgPayload"    # [B

    .prologue
    .line 168
    iput-object p1, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    .line 169
    return-void
.end method

.method public setSecHead(Lcom/accloud/service/ACSecHead;)V
    .locals 0
    .param p1, "zSecHead"    # Lcom/accloud/service/ACSecHead;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/accloud/service/ACMessage;->zSecHead:Lcom/accloud/service/ACSecHead;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 188
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/accloud/service/ACMessage;->zMessageOptionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/accloud/service/ACMessageOption;

    .line 191
    .local v3, "zMessageOption":Lcom/accloud/service/ACMessageOption;
    invoke-virtual {v3}, Lcom/accloud/service/ACMessageOption;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 193
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "zMessageOption":Lcom/accloud/service/ACMessageOption;
    :cond_0
    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v1, "payload":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    array-length v4, v4

    if-lez v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/accloud/service/ACMessage;->msgPayload:[B

    invoke-static {v4}, Lcom/accloud/service/ACMessage;->byteToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACMessage{zSecHead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/accloud/service/ACMessage;->zSecHead:Lcom/accloud/service/ACSecHead;

    invoke-virtual {v5}, Lcom/accloud/service/ACSecHead;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", zMessageHead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/accloud/service/ACMessage;->zMessageHead:Lcom/accloud/service/ACMessageHead;

    invoke-virtual {v5}, Lcom/accloud/service/ACMessageHead;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", zMessageOptionList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgPayload=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 200
    :cond_2
    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
