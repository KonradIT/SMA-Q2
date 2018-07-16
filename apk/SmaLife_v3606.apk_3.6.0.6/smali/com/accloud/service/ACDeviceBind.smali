.class public Lcom/accloud/service/ACDeviceBind;
.super Ljava/lang/Object;
.source "ACDeviceBind.java"


# instance fields
.field private physicalDeviceId:Ljava/lang/String;

.field private subDomainId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "subDomainId"    # J
    .param p3, "physicalDeviceId"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/accloud/service/ACDeviceBind;->subDomainId:J

    .line 12
    iput-object p3, p0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/accloud/service/ACDeviceBind;

    if-ne v3, v4, :cond_3

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/accloud/service/ACDeviceBind;

    .line 42
    .local v0, "deviceBind":Lcom/accloud/service/ACDeviceBind;
    iget-wide v4, v0, Lcom/accloud/service/ACDeviceBind;->subDomainId:J

    iget-wide v6, p0, Lcom/accloud/service/ACDeviceBind;->subDomainId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "deviceBind":Lcom/accloud/service/ACDeviceBind;
    :cond_3
    move v1, v2

    .line 45
    goto :goto_0
.end method

.method public getPhysicalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDomainId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/accloud/service/ACDeviceBind;->subDomainId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPhysicalDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalDeviceId"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSubDomainId(J)V
    .locals 1
    .param p1, "subDomainId"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/accloud/service/ACDeviceBind;->subDomainId:J

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACDeviceBind{subDomainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACDeviceBind;->subDomainId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDeviceBind;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
