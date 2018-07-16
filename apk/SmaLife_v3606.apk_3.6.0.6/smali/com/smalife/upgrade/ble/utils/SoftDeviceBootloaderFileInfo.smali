.class public Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;
.super Lcom/smalife/upgrade/ble/utils/FileInfo;
.source "SoftDeviceBootloaderFileInfo.java"


# instance fields
.field protected bootloaderSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bl_size"
    .end annotation
.end field

.field protected softdeviceSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sd_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/utils/FileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootloaderSize()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->bootloaderSize:I

    return v0
.end method

.method public getSoftdeviceSize()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->softdeviceSize:I

    return v0
.end method
