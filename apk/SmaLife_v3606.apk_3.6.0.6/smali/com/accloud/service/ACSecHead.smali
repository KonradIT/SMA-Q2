.class public Lcom/accloud/service/ACSecHead;
.super Ljava/lang/Object;
.source "ACSecHead.java"


# instance fields
.field Resver:B

.field SecType:B

.field TotalMsg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(IBB)V
    .locals 0
    .param p1, "TotalMsg"    # I
    .param p2, "SecType"    # B
    .param p3, "Resver"    # B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/accloud/service/ACSecHead;->TotalMsg:I

    .line 16
    iput-byte p2, p0, Lcom/accloud/service/ACSecHead;->SecType:B

    .line 17
    iput-byte p3, p0, Lcom/accloud/service/ACSecHead;->Resver:B

    .line 18
    return-void
.end method

.method public static getZSecHead([B)Lcom/accloud/service/ACSecHead;
    .locals 5
    .param p0, "bSecHead"    # [B

    .prologue
    .line 21
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 22
    .local v2, "TotalMsg":I
    const/4 v3, 0x2

    aget-byte v1, p0, v3

    .line 23
    .local v1, "SecType":B
    const/4 v3, 0x3

    aget-byte v0, p0, v3

    .line 24
    .local v0, "Resver":B
    new-instance v3, Lcom/accloud/service/ACSecHead;

    invoke-direct {v3, v2, v1, v0}, Lcom/accloud/service/ACSecHead;-><init>(IBB)V

    return-object v3
.end method

.method public static getZSecHeadBytes(Lcom/accloud/service/ACSecHead;)[B
    .locals 4
    .param p0, "zSecHead"    # Lcom/accloud/service/ACSecHead;

    .prologue
    .line 28
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 29
    .local v1, "bSecHead":[B
    invoke-virtual {p0}, Lcom/accloud/service/ACSecHead;->getTotalMsg()I

    move-result v0

    .line 30
    .local v0, "TotalMsg":I
    const/4 v2, 0x0

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 31
    const/4 v2, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 32
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/accloud/service/ACSecHead;->getSecType()B

    move-result v3

    aput-byte v3, v1, v2

    .line 33
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/accloud/service/ACSecHead;->getResver()B

    move-result v3

    aput-byte v3, v1, v2

    .line 34
    return-object v1
.end method


# virtual methods
.method public getResver()B
    .locals 1

    .prologue
    .line 54
    iget-byte v0, p0, Lcom/accloud/service/ACSecHead;->Resver:B

    return v0
.end method

.method public getSecType()B
    .locals 1

    .prologue
    .line 46
    iget-byte v0, p0, Lcom/accloud/service/ACSecHead;->SecType:B

    return v0
.end method

.method public getTotalMsg()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/accloud/service/ACSecHead;->TotalMsg:I

    return v0
.end method

.method public setResver(B)V
    .locals 0
    .param p1, "resver"    # B

    .prologue
    .line 58
    iput-byte p1, p0, Lcom/accloud/service/ACSecHead;->Resver:B

    .line 59
    return-void
.end method

.method public setSecType(B)V
    .locals 0
    .param p1, "secType"    # B

    .prologue
    .line 50
    iput-byte p1, p0, Lcom/accloud/service/ACSecHead;->SecType:B

    .line 51
    return-void
.end method

.method public setTotalMsg(I)V
    .locals 0
    .param p1, "totalMsg"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/accloud/service/ACSecHead;->TotalMsg:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZSecHead{TotalMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACSecHead;->TotalMsg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/accloud/service/ACSecHead;->SecType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Resver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/accloud/service/ACSecHead;->Resver:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
