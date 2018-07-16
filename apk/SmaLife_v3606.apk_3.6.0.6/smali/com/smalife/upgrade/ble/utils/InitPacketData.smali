.class public Lcom/smalife/upgrade/ble/utils/InitPacketData;
.super Ljava/lang/Object;
.source "InitPacketData.java"


# instance fields
.field protected applicationVersion:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application_version"
    .end annotation
.end field

.field protected compressionType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "compression_type"
    .end annotation
.end field

.field protected deviceRevision:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_revision"
    .end annotation
.end field

.field protected deviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_type"
    .end annotation
.end field

.field protected firmwareCRC16:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_crc16"
    .end annotation
.end field

.field protected firmwareHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_hash"
    .end annotation
.end field

.field protected packetVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packet_version"
    .end annotation
.end field

.field protected softdeviceReq:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softdevice_req"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationVersion()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->applicationVersion:J

    return-wide v0
.end method

.method public getCompressionType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->compressionType:I

    return v0
.end method

.method public getDeviceRevision()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->deviceRevision:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->deviceType:I

    return v0
.end method

.method public getFirmwareCRC16()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->firmwareCRC16:I

    return v0
.end method

.method public getFirmwareHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->firmwareHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketVersion()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->packetVersion:I

    return v0
.end method

.method public getSoftdeviceReq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/InitPacketData;->softdeviceReq:Ljava/util/List;

    return-object v0
.end method
