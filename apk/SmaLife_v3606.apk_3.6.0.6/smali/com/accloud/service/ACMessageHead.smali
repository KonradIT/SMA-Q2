.class public Lcom/accloud/service/ACMessageHead;
.super Ljava/lang/Object;
.source "ACMessageHead.java"


# instance fields
.field MsgCode:S

.field MsgId:S

.field OptNum:S

.field PayloadLen:I

.field TotalMsgCrc:I

.field Version:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(SSSSII)V
    .locals 0
    .param p1, "version"    # S
    .param p2, "msgId"    # S
    .param p3, "msgCode"    # S
    .param p4, "optNum"    # S
    .param p5, "payloadLen"    # I
    .param p6, "totalMsgCrc"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-short p1, p0, Lcom/accloud/service/ACMessageHead;->Version:S

    .line 19
    iput-short p2, p0, Lcom/accloud/service/ACMessageHead;->MsgId:S

    .line 20
    iput-short p3, p0, Lcom/accloud/service/ACMessageHead;->MsgCode:S

    .line 21
    iput-short p4, p0, Lcom/accloud/service/ACMessageHead;->OptNum:S

    .line 22
    iput p5, p0, Lcom/accloud/service/ACMessageHead;->PayloadLen:I

    .line 23
    iput p6, p0, Lcom/accloud/service/ACMessageHead;->TotalMsgCrc:I

    .line 24
    return-void
.end method

.method public static getZMessageHead([B)Lcom/accloud/service/ACMessageHead;
    .locals 8
    .param p0, "buf"    # [B

    .prologue
    .line 27
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-short v1, v0

    .line 28
    .local v1, "version":S
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    int-to-short v2, v0

    .line 29
    .local v2, "msgId":S
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    int-to-short v3, v0

    .line 30
    .local v3, "msgCode":S
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    int-to-short v4, v0

    .line 31
    .local v4, "optNum":S
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v7, 0x5

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v5, v0, v7

    .line 32
    .local v5, "payloadLen":I
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v6, v0, v7

    .line 33
    .local v6, "totalMsgCrc":I
    new-instance v0, Lcom/accloud/service/ACMessageHead;

    invoke-direct/range {v0 .. v6}, Lcom/accloud/service/ACMessageHead;-><init>(SSSSII)V

    return-object v0
.end method

.method public static getZMessageHeadBytes(Lcom/accloud/service/ACMessageHead;)[B
    .locals 6
    .param p0, "zMessageHead"    # Lcom/accloud/service/ACMessageHead;

    .prologue
    const v5, 0xff00

    .line 37
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 38
    .local v0, "head":[B
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/accloud/service/ACMessageHead;->getVersion()S

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 39
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/accloud/service/ACMessageHead;->getMsgId()S

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 40
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/accloud/service/ACMessageHead;->getMsgCode()S

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 41
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/accloud/service/ACMessageHead;->getOptNum()S

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 43
    invoke-virtual {p0}, Lcom/accloud/service/ACMessageHead;->getPayloadLen()I

    move-result v1

    .line 44
    .local v1, "payloadLen":I
    const/4 v3, 0x4

    and-int v4, v1, v5

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 45
    const/4 v3, 0x5

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 46
    invoke-virtual {p0}, Lcom/accloud/service/ACMessageHead;->getTotalMsgCrc()I

    move-result v2

    .line 47
    .local v2, "totalMsgCrc":I
    const/4 v3, 0x6

    and-int v4, v2, v5

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 48
    const/4 v3, 0x7

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 49
    return-object v0
.end method


# virtual methods
.method public getMsgCode()S
    .locals 1

    .prologue
    .line 69
    iget-short v0, p0, Lcom/accloud/service/ACMessageHead;->MsgCode:S

    return v0
.end method

.method public getMsgId()S
    .locals 1

    .prologue
    .line 61
    iget-short v0, p0, Lcom/accloud/service/ACMessageHead;->MsgId:S

    return v0
.end method

.method public getOptNum()S
    .locals 1

    .prologue
    .line 77
    iget-short v0, p0, Lcom/accloud/service/ACMessageHead;->OptNum:S

    return v0
.end method

.method public getPayloadLen()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/accloud/service/ACMessageHead;->PayloadLen:I

    return v0
.end method

.method public getTotalMsgCrc()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/accloud/service/ACMessageHead;->TotalMsgCrc:I

    return v0
.end method

.method public getVersion()S
    .locals 1

    .prologue
    .line 53
    iget-short v0, p0, Lcom/accloud/service/ACMessageHead;->Version:S

    return v0
.end method

.method public setMsgCode(S)V
    .locals 0
    .param p1, "msgCode"    # S

    .prologue
    .line 73
    iput-short p1, p0, Lcom/accloud/service/ACMessageHead;->MsgCode:S

    .line 74
    return-void
.end method

.method public setMsgId(S)V
    .locals 0
    .param p1, "msgId"    # S

    .prologue
    .line 65
    iput-short p1, p0, Lcom/accloud/service/ACMessageHead;->MsgId:S

    .line 66
    return-void
.end method

.method public setOptNum(S)V
    .locals 0
    .param p1, "optNum"    # S

    .prologue
    .line 81
    iput-short p1, p0, Lcom/accloud/service/ACMessageHead;->OptNum:S

    .line 82
    return-void
.end method

.method public setPayloadLen(I)V
    .locals 0
    .param p1, "payloadLen"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/accloud/service/ACMessageHead;->PayloadLen:I

    .line 90
    return-void
.end method

.method public setTotalMsgCrc(I)V
    .locals 0
    .param p1, "totalMsgCrc"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/accloud/service/ACMessageHead;->TotalMsgCrc:I

    .line 98
    return-void
.end method

.method public setVersion(S)V
    .locals 0
    .param p1, "version"    # S

    .prologue
    .line 57
    iput-short p1, p0, Lcom/accloud/service/ACMessageHead;->Version:S

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACMessageHead{Version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/accloud/service/ACMessageHead;->Version:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/accloud/service/ACMessageHead;->MsgId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MsgCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/accloud/service/ACMessageHead;->MsgCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OptNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/accloud/service/ACMessageHead;->OptNum:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PayloadLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACMessageHead;->PayloadLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalMsgCrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACMessageHead;->TotalMsgCrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
