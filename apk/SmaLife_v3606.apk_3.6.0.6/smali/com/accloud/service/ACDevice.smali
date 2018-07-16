.class public Lcom/accloud/service/ACDevice;
.super Ljava/lang/Object;
.source "ACDevice.java"


# instance fields
.field private activeTime:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private deviceVersion:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private lastOnlineTime:Ljava/lang/String;

.field private moduleVersion:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "deviceVersion"    # Ljava/lang/String;
    .param p3, "moduleVersion"    # Ljava/lang/String;
    .param p4, "activeTime"    # Ljava/lang/String;
    .param p5, "lastOnlineTime"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .param p7, "province"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->ip:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/accloud/service/ACDevice;->deviceVersion:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/accloud/service/ACDevice;->moduleVersion:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/accloud/service/ACDevice;->activeTime:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/accloud/service/ACDevice;->lastOnlineTime:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/accloud/service/ACDevice;->country:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/accloud/service/ACDevice;->province:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/accloud/service/ACDevice;->city:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getActiveTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->activeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLastOnlineTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->lastOnlineTime:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->moduleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/accloud/service/ACDevice;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setActiveTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "activeTime"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->activeTime:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->city:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->country:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceVersion"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->deviceVersion:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->ip:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setLastOnlineTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastOnlineTime"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->lastOnlineTime:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setModuleVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleVersion"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->moduleVersion:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/accloud/service/ACDevice;->province:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACDevice{ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->deviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moduleVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->moduleVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->activeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastOnlineTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->lastOnlineTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/accloud/service/ACDevice;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
