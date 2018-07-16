.class public Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "ArchiveInputStream.java"


# static fields
.field private static final APPLICATION_BIN:Ljava/lang/String; = "application.bin"

.field private static final APPLICATION_HEX:Ljava/lang/String; = "application.hex"

.field private static final APPLICATION_INIT:Ljava/lang/String; = "application.dat"

.field private static final BOOTLOADER_BIN:Ljava/lang/String; = "bootloader.bin"

.field private static final BOOTLOADER_HEX:Ljava/lang/String; = "bootloader.hex"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.json"

.field private static final SOFTDEVICE_BIN:Ljava/lang/String; = "softdevice.bin"

.field private static final SOFTDEVICE_HEX:Ljava/lang/String; = "softdevice.hex"

.field private static final SYSTEM_INIT:Ljava/lang/String; = "system.dat"


# instance fields
.field private applicationBytes:[B

.field private applicationInitBytes:[B

.field private applicationSize:I

.field private bootloaderBytes:[B

.field private bootloaderSize:I

.field private bytesRead:I

.field private bytesReadFromCurrentSource:I

.field private currentSource:[B

.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

.field private softDeviceAndBootloaderBytes:[B

.field private softDeviceBytes:[B

.field private softDeviceSize:I

.field private systemInitBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mbrSize"    # I
    .param p3, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    .line 74
    iput v6, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    .line 75
    iput v6, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 82
    :try_start_0
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->parseZip(I)V

    .line 87
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    if-eqz v5, :cond_e

    .line 88
    const/4 v4, 0x0

    .line 91
    .local v4, "valid":Z
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getApplicationInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_0

    and-int/lit8 v5, p3, 0x4

    if-lez v5, :cond_2

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getApplicationInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;

    move-result-object v0

    .line 93
    .local v0, "application":Lcom/smalife/upgrade/ble/utils/FileInfo;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    .line 94
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationInitBytes:[B

    .line 96
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    if-nez v5, :cond_1

    .line 97
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Application file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v0    # "application":Lcom/smalife/upgrade/ble/utils/FileInfo;
    .end local v4    # "valid":Z
    :catchall_0
    move-exception v5

    .line 199
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 200
    throw v5

    .line 98
    .restart local v0    # "application":Lcom/smalife/upgrade/ble/utils/FileInfo;
    .restart local v4    # "valid":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    .line 99
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 100
    const/4 v4, 0x1

    .line 104
    .end local v0    # "application":Lcom/smalife/upgrade/ble/utils/FileInfo;
    :cond_2
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getBootloaderInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz p3, :cond_3

    and-int/lit8 v5, p3, 0x2

    if-lez v5, :cond_6

    .line 105
    :cond_3
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    if-eqz v5, :cond_4

    .line 106
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Manifest: softdevice and bootloader specified. Use softdevice_bootloader instead."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_4
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getBootloaderInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;

    move-result-object v1

    .line 109
    .local v1, "bootloader":Lcom/smalife/upgrade/ble/utils/FileInfo;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    .line 110
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    .line 112
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v5, :cond_5

    .line 113
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bootloader file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_5
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    .line 115
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 116
    const/4 v4, 0x1

    .line 120
    .end local v1    # "bootloader":Lcom/smalife/upgrade/ble/utils/FileInfo;
    :cond_6
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getSoftdeviceInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    if-eqz p3, :cond_7

    and-int/lit8 v5, p3, 0x1

    if-lez v5, :cond_9

    .line 121
    :cond_7
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getSoftdeviceInfo()Lcom/smalife/upgrade/ble/utils/FileInfo;

    move-result-object v2

    .line 122
    .local v2, "softdevice":Lcom/smalife/upgrade/ble/utils/FileInfo;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    .line 123
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    .line 125
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v5, :cond_8

    .line 126
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SoftDevice file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/smalife/upgrade/ble/utils/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_8
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    .line 128
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 129
    const/4 v4, 0x1

    .line 133
    .end local v2    # "softdevice":Lcom/smalife/upgrade/ble/utils/FileInfo;
    :cond_9
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getSoftdeviceBootloaderInfo()Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;

    move-result-object v5

    if-eqz v5, :cond_d

    if-eqz p3, :cond_a

    .line 134
    and-int/lit8 v5, p3, 0x1

    if-lez v5, :cond_d

    and-int/lit8 v5, p3, 0x2

    if-lez v5, :cond_d

    .line 135
    :cond_a
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    if-eqz v5, :cond_b

    .line 136
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Manifest: The softdevice_bootloader may not be used together with softdevice or bootloader."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    :cond_b
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    invoke-virtual {v5}, Lcom/smalife/upgrade/ble/utils/Manifest;->getSoftdeviceBootloaderInfo()Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;

    move-result-object v3

    .line 139
    .local v3, "system":Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 140
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    .line 142
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-nez v5, :cond_c

    .line 143
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "File "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :cond_c
    invoke-virtual {v3}, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->getSoftdeviceSize()I

    move-result v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    .line 145
    invoke-virtual {v3}, Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;->getBootloaderSize()I

    move-result v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    .line 146
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 147
    const/4 v4, 0x1

    .line 150
    .end local v3    # "system":Lcom/smalife/upgrade/ble/utils/SoftDeviceBootloaderFileInfo;
    :cond_d
    if-nez v4, :cond_18

    .line 151
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Manifest file must specify at least one file."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    .end local v4    # "valid":Z
    :cond_e
    const/4 v4, 0x0

    .line 156
    .restart local v4    # "valid":Z
    if-eqz p3, :cond_f

    and-int/lit8 v5, p3, 0x4

    if-lez v5, :cond_11

    .line 157
    :cond_f
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "application.hex"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    .line 158
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    if-nez v5, :cond_10

    .line 159
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "application.bin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    .line 160
    :cond_10
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    if-eqz v5, :cond_11

    .line 161
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    .line 162
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "application.dat"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationInitBytes:[B

    .line 163
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 164
    const/4 v4, 0x1

    .line 169
    :cond_11
    if-eqz p3, :cond_12

    and-int/lit8 v5, p3, 0x2

    if-lez v5, :cond_14

    .line 170
    :cond_12
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "bootloader.hex"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    .line 171
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v5, :cond_13

    .line 172
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "bootloader.bin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    .line 173
    :cond_13
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v5, :cond_14

    .line 174
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    .line 175
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "system.dat"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    .line 176
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 177
    const/4 v4, 0x1

    .line 182
    :cond_14
    if-eqz p3, :cond_15

    and-int/lit8 v5, p3, 0x1

    if-lez v5, :cond_17

    .line 183
    :cond_15
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "softdevice.hex"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    .line 184
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v5, :cond_16

    .line 185
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "softdevice.bin"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    .line 186
    :cond_16
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz v5, :cond_17

    .line 187
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    array-length v5, v5

    iput v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    .line 188
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v6, "system.dat"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    .line 189
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    iput-object v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 190
    const/4 v4, 0x1

    .line 194
    :cond_17
    if-nez v4, :cond_18

    .line 195
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The ZIP file must contain an Application, a Soft Device and/or a Bootloader."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :cond_18
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 201
    return-void
.end method

.method private parseZip(I)V
    .locals 11
    .param p1, "mbrSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 215
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 218
    .local v5, "manifestData":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "ze":Ljava/util/zip/ZipEntry;
    if-nez v8, :cond_1

    .line 244
    if-eqz v5, :cond_0

    .line 245
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    const-class v10, Lcom/smalife/upgrade/ble/utils/ManifestFile;

    invoke-virtual {v9, v5, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smalife/upgrade/ble/utils/ManifestFile;

    .line 246
    .local v6, "manifestFile":Lcom/smalife/upgrade/ble/utils/ManifestFile;
    invoke-virtual {v6}, Lcom/smalife/upgrade/ble/utils/ManifestFile;->getManifest()Lcom/smalife/upgrade/ble/utils/Manifest;

    move-result-object v9

    iput-object v9, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    .line 248
    .end local v6    # "manifestFile":Lcom/smalife/upgrade/ble/utils/ManifestFile;
    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-super {p0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 230
    .local v7, "source":[B
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "hex"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 231
    new-instance v4, Lcom/smalife/upgrade/ble/utils/HexInputStream;

    invoke-direct {v4, v7, p1}, Lcom/smalife/upgrade/ble/utils/HexInputStream;-><init>([BI)V

    .line 232
    .local v4, "is":Lcom/smalife/upgrade/ble/utils/HexInputStream;
    invoke-virtual {v4}, Lcom/smalife/upgrade/ble/utils/HexInputStream;->available()I

    move-result v9

    new-array v7, v9, [B

    .line 233
    invoke-virtual {v4, v7}, Lcom/smalife/upgrade/ble/utils/HexInputStream;->read([B)I

    .line 234
    invoke-virtual {v4}, Lcom/smalife/upgrade/ble/utils/HexInputStream;->close()V

    .line 238
    .end local v4    # "is":Lcom/smalife/upgrade/ble/utils/HexInputStream;
    :cond_2
    const-string v9, "manifest.json"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 239
    new-instance v5, Ljava/lang/String;

    .end local v5    # "manifestData":Ljava/lang/String;
    const-string v9, "UTF-8"

    invoke-direct {v5, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v5    # "manifestData":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v7    # "source":[B
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 241
    .restart local v7    # "source":[B
    :cond_4
    iget-object v9, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private startNextFile()[B
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 354
    .local v0, "ret":[B
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 355
    return-object v0

    .line 349
    .end local v0    # "ret":[B
    :cond_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    if-eqz v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 351
    .restart local v0    # "ret":[B
    goto :goto_0

    .line 352
    .end local v0    # "ret":[B
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .restart local v0    # "ret":[B
    goto :goto_0
.end method


# virtual methods
.method public applicationImageSize()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    return v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bootloaderImageSize()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    .line 253
    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    .line 254
    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    .line 255
    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 256
    iput v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    iput v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    iput v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    .line 257
    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    .line 258
    iput v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    iput v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    .line 259
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 260
    return-void
.end method

.method public getApplicationInit()[B
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationInitBytes:[B

    return-object v0
.end method

.method public getContentType()I
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "b":B
    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    if-lez v1, :cond_0

    .line 301
    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 302
    :cond_0
    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    if-lez v1, :cond_1

    .line 303
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 304
    :cond_1
    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    if-lez v1, :cond_2

    .line 305
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 306
    :cond_2
    return v0
.end method

.method public getManifest()Lcom/smalife/upgrade/ble/utils/Manifest;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->manifest:Lcom/smalife/upgrade/ble/utils/Manifest;

    return-object v0
.end method

.method public getSystemInit()[B
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->systemInitBytes:[B

    return-object v0
.end method

.method public read([B)I
    .locals 7
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 264
    iget-object v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    array-length v4, v4

    iget v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    sub-int v0, v4, v5

    .line 265
    .local v0, "maxSize":I
    array-length v4, p1

    if-gt v4, v0, :cond_0

    array-length v2, p1

    .line 266
    .local v2, "size":I
    :goto_0
    iget-object v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    iget v5, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    invoke-static {v4, v5, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 268
    array-length v4, p1

    if-le v4, v2, :cond_2

    .line 269
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->startNextFile()[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 270
    iget v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    move v3, v2

    .line 281
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_1
    return v3

    .end local v3    # "size":I
    :cond_0
    move v2, v0

    .line 265
    goto :goto_0

    .line 274
    .restart local v2    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    array-length v0, v4

    .line 275
    array-length v4, p1

    sub-int/2addr v4, v2

    if-gt v4, v0, :cond_3

    array-length v4, p1

    sub-int v1, v4, v2

    .line 276
    .local v1, "nextSize":I
    :goto_2
    iget-object v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->currentSource:[B

    invoke-static {v4, v6, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 278
    add-int/2addr v2, v1

    .line 280
    .end local v1    # "nextSize":I
    :cond_2
    iget v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    move v3, v2

    .line 281
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_1

    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_3
    move v1, v0

    .line 275
    goto :goto_2
.end method

.method public setContentType(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 317
    iget v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bytesRead:I

    if-lez v1, :cond_0

    .line 318
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Content type must not be change after reading content"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getContentType()I

    move-result v1

    and-int v0, v1, p1

    .line 322
    .local v0, "t":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 323
    iput-object v3, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceBytes:[B

    .line 324
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_1

    .line 325
    iput-object v3, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 326
    iput v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    .line 328
    :cond_1
    iput v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    .line 330
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4

    .line 331
    iput-object v3, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderBytes:[B

    .line 332
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_3

    .line 333
    iput-object v3, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 334
    iput v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    .line 336
    :cond_3
    iput v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderSize:I

    .line 338
    :cond_4
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5

    .line 339
    iput-object v3, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationBytes:[B

    .line 340
    iput v2, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationSize:I

    .line 342
    :cond_5
    return v0
.end method

.method public softDeviceImageSize()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceSize:I

    return v0
.end method
