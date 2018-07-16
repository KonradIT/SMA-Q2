.class public Lcom/accloud/service/ACUserDevice;
.super Ljava/lang/Object;
.source "ACUserDevice.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOTH_ONLINE:I = 0x3

.field public static final LOCAL_ONLINE:I = 0x2

.field public static final NETWORK_ONLINE:I = 0x1

.field public static final OFFLINE:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public aesKey:Ljava/lang/String;

.field public deviceId:J

.field public gatewayDeviceId:J

.field public name:Ljava/lang/String;

.field public owner:J

.field public physicalDeviceId:Ljava/lang/String;

.field public rootId:J

.field public status:I

.field public subDomainId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/accloud/service/ACUserDevice;->status:I

    .line 38
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "owner"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "subDomainId"    # J
    .param p8, "aesKey"    # Ljava/lang/String;
    .param p9, "physicalDeviceId"    # Ljava/lang/String;
    .param p10, "gatewayDeviceId"    # J
    .param p12, "rootId"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/accloud/service/ACUserDevice;->status:I

    .line 41
    iput-wide p1, p0, Lcom/accloud/service/ACUserDevice;->deviceId:J

    .line 42
    iput-wide p3, p0, Lcom/accloud/service/ACUserDevice;->owner:J

    .line 43
    iput-wide p6, p0, Lcom/accloud/service/ACUserDevice;->subDomainId:J

    .line 44
    iput-object p5, p0, Lcom/accloud/service/ACUserDevice;->name:Ljava/lang/String;

    .line 45
    iput-object p8, p0, Lcom/accloud/service/ACUserDevice;->aesKey:Ljava/lang/String;

    .line 46
    iput-object p9, p0, Lcom/accloud/service/ACUserDevice;->physicalDeviceId:Ljava/lang/String;

    .line 47
    iput-wide p10, p0, Lcom/accloud/service/ACUserDevice;->gatewayDeviceId:J

    .line 48
    iput-wide p12, p0, Lcom/accloud/service/ACUserDevice;->rootId:J

    .line 49
    return-void
.end method


# virtual methods
.method public getAesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/accloud/service/ACUserDevice;->aesKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/accloud/service/ACUserDevice;->deviceId:J

    return-wide v0
.end method

.method public getGatewayDeviceId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/accloud/service/ACUserDevice;->gatewayDeviceId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/accloud/service/ACUserDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/accloud/service/ACUserDevice;->owner:J

    return-wide v0
.end method

.method public getPhysicalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/accloud/service/ACUserDevice;->physicalDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootId()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/accloud/service/ACUserDevice;->rootId:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/accloud/service/ACUserDevice;->status:I

    return v0
.end method

.method public getSubDomainId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/accloud/service/ACUserDevice;->subDomainId:J

    return-wide v0
.end method

.method public setAesKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/accloud/service/ACUserDevice;->aesKey:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDeviceId(J)V
    .locals 1
    .param p1, "deviceId"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/accloud/service/ACUserDevice;->deviceId:J

    .line 57
    return-void
.end method

.method public setGatewayDeviceId(J)V
    .locals 1
    .param p1, "gatewayDeviceId"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/accloud/service/ACUserDevice;->gatewayDeviceId:J

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/accloud/service/ACUserDevice;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOwner(J)V
    .locals 1
    .param p1, "owner"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/accloud/service/ACUserDevice;->owner:J

    .line 65
    return-void
.end method

.method public setPhysicalDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalDeviceId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/accloud/service/ACUserDevice;->physicalDeviceId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRootId(J)V
    .locals 1
    .param p1, "rootId"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/accloud/service/ACUserDevice;->rootId:J

    .line 121
    return-void
.end method

.method public declared-synchronized setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/accloud/service/ACUserDevice;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubDomainId(J)V
    .locals 1
    .param p1, "subDomainId"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/accloud/service/ACUserDevice;->subDomainId:J

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACUserDevice{deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACUserDevice;->deviceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACUserDevice;->owner:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACUserDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subDomainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACUserDevice;->subDomainId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aesKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACUserDevice;->aesKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACUserDevice;->physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gatewayDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/accloud/service/ACUserDevice;->gatewayDeviceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/accloud/service/ACUserDevice;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
