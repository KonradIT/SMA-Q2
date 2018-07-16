.class public Lcom/accloud/service/ACOTACheckInfo;
.super Ljava/lang/Object;
.source "ACOTACheckInfo.java"


# instance fields
.field private batch:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private deviceId:J

.field private otaType:I

.field private physicalDeviceId:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "otaType"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/accloud/service/ACOTACheckInfo;->deviceId:J

    .line 42
    iput p3, p0, Lcom/accloud/service/ACOTACheckInfo;->otaType:I

    .line 43
    const-string v0, "all"

    iput-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->channel:Ljava/lang/String;

    .line 44
    const-string v0, "all"

    iput-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->batch:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "physicalDeviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/accloud/service/ACOTACheckInfo;->physicalDeviceId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/accloud/service/ACOTACheckInfo;->version:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/accloud/service/ACOTACheckInfo;->otaType:I

    .line 30
    const-string v0, "all"

    iput-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->channel:Ljava/lang/String;

    .line 31
    const-string v0, "all"

    iput-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->batch:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getBatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->batch:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/accloud/service/ACOTACheckInfo;->deviceId:J

    return-wide v0
.end method

.method public getOtaType()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/accloud/service/ACOTACheckInfo;->otaType:I

    return v0
.end method

.method public getPhysicalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->physicalDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/accloud/service/ACOTACheckInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBatch(Ljava/lang/String;)V
    .locals 0
    .param p1, "batch"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/accloud/service/ACOTACheckInfo;->batch:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/accloud/service/ACOTACheckInfo;->channel:Ljava/lang/String;

    .line 49
    return-void
.end method
