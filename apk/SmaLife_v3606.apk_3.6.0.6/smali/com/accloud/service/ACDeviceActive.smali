.class public Lcom/accloud/service/ACDeviceActive;
.super Ljava/lang/Object;
.source "ACDeviceActive.java"


# instance fields
.field private deviceVersion:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private mac:Ljava/lang/String;

.field private moduleVersion:Ljava/lang/String;

.field private physicalDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalDeviceId"    # Ljava/lang/String;
    .param p2, "deviceVersion"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/accloud/service/ACDeviceActive;->physicalDeviceId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/accloud/service/ACDeviceActive;->deviceVersion:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/accloud/service/ACDeviceActive;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/accloud/service/ACDeviceActive;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/accloud/service/ACDeviceActive;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/accloud/service/ACDeviceActive;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/accloud/service/ACDeviceActive;->moduleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/accloud/service/ACDeviceActive;->physicalDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/Double;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/accloud/service/ACDeviceActive;->latitude:Ljava/lang/Double;

    .line 55
    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/accloud/service/ACDeviceActive;->longitude:Ljava/lang/Double;

    .line 63
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/accloud/service/ACDeviceActive;->mac:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setModuleVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleVersion"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/accloud/service/ACDeviceActive;->moduleVersion:Ljava/lang/String;

    .line 39
    return-void
.end method
