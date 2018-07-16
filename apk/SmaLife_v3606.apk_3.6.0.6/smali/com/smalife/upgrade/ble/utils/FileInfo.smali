.class public Lcom/smalife/upgrade/ble/utils/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field protected binFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bin_file"
    .end annotation
.end field

.field protected datFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dat_file"
    .end annotation
.end field

.field protected initPacketData:Lcom/smalife/upgrade/ble/utils/InitPacketData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "init_packet_data"
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
.method public getBinFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/FileInfo;->binFile:Ljava/lang/String;

    return-object v0
.end method

.method public getDatFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/FileInfo;->datFile:Ljava/lang/String;

    return-object v0
.end method

.method public getInitPacketData()Lcom/smalife/upgrade/ble/utils/InitPacketData;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/FileInfo;->initPacketData:Lcom/smalife/upgrade/ble/utils/InitPacketData;

    return-object v0
.end method
