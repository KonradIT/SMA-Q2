.class public Lcom/smalife/upgrade/ble/utils/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field protected application:Lcom/smalife/upgrade/ble/utils/FileInfo;

.field protected bootloader:Lcom/smalife/upgrade/ble/utils/FileInfo;

.field protected softdevice:Lcom/smalife/upgrade/ble/utils/FileInfo;

.field protected softdeviceBootloader:Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "softdevice_bootloader"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/Manifest;->application:Lcom/smalife/upgrade/ble/utils/FileInfo;

    return-object v0
.end method

.method public getBootloaderInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/Manifest;->bootloader:Lcom/smalife/upgrade/ble/utils/FileInfo;

    return-object v0
.end method

.method public getSoftdeviceBootloaderInfo()Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/Manifest;->softdeviceBootloader:Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;

    return-object v0
.end method

.method public getSoftdeviceInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/Manifest;->softdevice:Lcom/smalife/upgrade/ble/utils/FileInfo;

    return-object v0
.end method
