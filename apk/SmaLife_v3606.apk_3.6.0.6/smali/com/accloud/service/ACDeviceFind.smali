.class public Lcom/accloud/service/ACDeviceFind;
.super Ljava/lang/Object;
.source "ACDeviceFind.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ip:Ljava/lang/String;

.field private physicalDeviceId:Ljava/lang/String;

.field private subDomainId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "subDomainId"    # J
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "physicalDeviceId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/accloud/service/ACDeviceFind;->subDomainId:J

    .line 15
    iput-object p3, p0, Lcom/accloud/service/ACDeviceFind;->ip:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/accloud/service/ACDeviceFind;->physicalDeviceId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/accloud/service/ACDeviceFind;

    if-ne v3, v4, :cond_3

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/accloud/service/ACDeviceFind;

    .line 46
    .local v0, "deviceFind":Lcom/accloud/service/ACDeviceFind;
    iget-wide v4, v0, Lcom/accloud/service/ACDeviceFind;->subDomainId:J

    iget-wide v6, p0, Lcom/accloud/service/ACDeviceFind;->subDomainId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/accloud/service/ACDeviceFind;->physicalDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/accloud/service/ACDeviceFind;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "deviceFind":Lcom/accloud/service/ACDeviceFind;
    :cond_3
    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/accloud/service/ACDeviceFind;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/accloud/service/ACDeviceFind;->physicalDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDomainId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/accloud/service/ACDeviceFind;->subDomainId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/accloud/service/ACDeviceFind;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/accloud/service/ACDeviceFind;->ip:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACDeviceFind{subDomainId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACDeviceFind;->subDomainId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDeviceFind;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDeviceFind;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
