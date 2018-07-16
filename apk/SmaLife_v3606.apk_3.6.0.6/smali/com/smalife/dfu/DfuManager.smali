.class public Lcom/smalife/dfu/DfuManager;
.super Ljava/lang/Object;
.source "DfuManager.java"


# static fields
.field public static final CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

.field public static final DFU_CONTROLPOINT_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final DFU_PACKET_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final DFU_SERVICE_UUID:Ljava/util/UUID;

.field public static final DFU_STATUS_REPORT_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final ERROR_DISCOVERY_SERVICE:Ljava/lang/String; = "Error on discovering services"

.field public static final ERROR_FILE_CLOSE:Ljava/lang/String; = "Error on closing file"

.field public static final ERROR_FILE_LENGTH:Ljava/lang/String; = "Invalid File Length"

.field public static final ERROR_FILE_OPEN:Ljava/lang/String; = "Error on openning file"

.field public static final ERROR_FILE_READ:Ljava/lang/String; = "Error on reading file"

.field public static final ERROR_FILE_TRANSFER:Ljava/lang/String; = "File transfer failed"

.field public static final ERROR_FILE_VALIDATION:Ljava/lang/String; = "File validation failed"

.field public static final ERROR_WRITE_CHARACTERISTIC:Ljava/lang/String; = "Error on writing characteristic"

.field public static final ERROR_WRITE_DESCRIPTOR:Ljava/lang/String; = "Error on writing descriptor"

.field private static final TAG:Ljava/lang/String; = "DFUManager"

.field private static managerInstance:Lcom/smalife/dfu/DfuManager;


# instance fields
.field private final ACTIVATE_FIRMWARE_AND_RESET:I

.field private final BYTES_IN_ONE_PACKET:I

.field private FILEERROR:I

.field private final INITIALIZE_DFU:I

.field private final NUMBER_OF_PACKETS:I

.field private final PACKET_RECEIVED_NOTIFICATION:I

.field private final PACKET_RECEIVED_NOTIFICATION_REQUEST:I

.field private final RECEIVED_OPCODE:I

.field private final RECEIVE_FIRMWARE_IMAGE:I

.field private final REPORT_RECEIVED_IMAGE_SIZE:I

.field private final RESPONSE:I

.field private final START_DFU:I

.field private final SYSTEM_RESET:I

.field private final VALIDATE_FIRMWARE_IMAGE:I

.field private WRITEERROR:I

.field private context:Landroid/content/Context;

.field private isDFUServiceFound:Z

.field private isEnablePacketNotificationWritten:Z

.field private isFileSizeWritten:Z

.field private isLastPacket:Z

.field private isNotificationEnable:Z

.field private isReceiveFirmwareImageWritten:Z

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mCallbacks:Lcom/smalife/dfu/DfuManagerCallbacks;

.field private mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mFileSize:J

.field mFileStream:Lcom/smalife/utils/HexInputStream;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mPacketNumber:J

.field private mStopSendingPacket:Z

.field private mTotalPackets:J

.field root:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "00001530-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/smalife/dfu/DfuManager;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 61
    const-string v0, "00001531-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/smalife/dfu/DfuManager;->DFU_CONTROLPOINT_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 62
    const-string v0, "00001532-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/smalife/dfu/DfuManager;->DFU_PACKET_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 63
    const-string v0, "00001533-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/smalife/dfu/DfuManager;->DFU_STATUS_REPORT_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 64
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/smalife/dfu/DfuManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/smalife/dfu/DfuManager;->managerInstance:Lcom/smalife/dfu/DfuManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isDFUServiceFound:Z

    .line 45
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    .line 46
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isFileSizeWritten:Z

    .line 47
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isEnablePacketNotificationWritten:Z

    .line 48
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isReceiveFirmwareImageWritten:Z

    .line 49
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->mStopSendingPacket:Z

    .line 51
    iput v1, p0, Lcom/smalife/dfu/DfuManager;->FILEERROR:I

    .line 52
    iput v4, p0, Lcom/smalife/dfu/DfuManager;->WRITEERROR:I

    .line 53
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isLastPacket:Z

    .line 54
    iput-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    .line 55
    iput-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mTotalPackets:J

    .line 56
    iput-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->BYTES_IN_ONE_PACKET:I

    .line 78
    iput v1, p0, Lcom/smalife/dfu/DfuManager;->START_DFU:I

    .line 79
    iput v4, p0, Lcom/smalife/dfu/DfuManager;->INITIALIZE_DFU:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->RECEIVE_FIRMWARE_IMAGE:I

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->VALIDATE_FIRMWARE_IMAGE:I

    .line 82
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->ACTIVATE_FIRMWARE_AND_RESET:I

    .line 83
    const/4 v0, 0x6

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->SYSTEM_RESET:I

    .line 84
    const/4 v0, 0x7

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->REPORT_RECEIVED_IMAGE_SIZE:I

    .line 85
    iput v5, p0, Lcom/smalife/dfu/DfuManager;->RESPONSE:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->PACKET_RECEIVED_NOTIFICATION_REQUEST:I

    .line 87
    iput v1, p0, Lcom/smalife/dfu/DfuManager;->NUMBER_OF_PACKETS:I

    .line 88
    const/16 v0, 0x11

    iput v0, p0, Lcom/smalife/dfu/DfuManager;->PACKET_RECEIVED_NOTIFICATION:I

    .line 89
    iput v5, p0, Lcom/smalife/dfu/DfuManager;->RECEIVED_OPCODE:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    .line 231
    new-instance v0, Lcom/smalife/dfu/DfuManager$1;

    invoke-direct {v0, p0}, Lcom/smalife/dfu/DfuManager$1;-><init>(Lcom/smalife/dfu/DfuManager;)V

    iput-object v0, p0, Lcom/smalife/dfu/DfuManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 108
    iput-object p1, p0, Lcom/smalife/dfu/DfuManager;->context:Landroid/content/Context;

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/dfu/DfuManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/dfu/DfuManager;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/smalife/dfu/DfuManager;->isDFUServiceFound:Z

    return-void
.end method

.method static synthetic access$10(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isEnablePacketNotificationWritten:Z

    return v0
.end method

.method static synthetic access$11(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->receiveFirmwareImage()V

    return-void
.end method

.method static synthetic access$12(Lcom/smalife/dfu/DfuManager;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/smalife/dfu/DfuManager;->isEnablePacketNotificationWritten:Z

    return-void
.end method

.method static synthetic access$13(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isReceiveFirmwareImageWritten:Z

    return v0
.end method

.method static synthetic access$14(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->startUploadingFile()V

    return-void
.end method

.method static synthetic access$15(Lcom/smalife/dfu/DfuManager;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/smalife/dfu/DfuManager;->isReceiveFirmwareImageWritten:Z

    return-void
.end method

.method static synthetic access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mCallbacks:Lcom/smalife/dfu/DfuManagerCallbacks;

    return-object v0
.end method

.method static synthetic access$17(Lcom/smalife/dfu/DfuManager;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/smalife/dfu/DfuManager;->WRITEERROR:I

    return v0
.end method

.method static synthetic access$18(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->enablePacketNotification()V

    return-void
.end method

.method static synthetic access$19(Lcom/smalife/dfu/DfuManager;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/smalife/dfu/DfuManager;->FILEERROR:I

    return v0
.end method

.method static synthetic access$2(Lcom/smalife/dfu/DfuManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$20(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isLastPacket:Z

    return v0
.end method

.method static synthetic access$21(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->mStopSendingPacket:Z

    return v0
.end method

.method static synthetic access$22(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->sendPacket()V

    return-void
.end method

.method static synthetic access$23(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->validateFirmware()V

    return-void
.end method

.method static synthetic access$24(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->activateAndReset()V

    return-void
.end method

.method static synthetic access$25(Lcom/smalife/dfu/DfuManager;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    return-void
.end method

.method static synthetic access$26(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    return v0
.end method

.method static synthetic access$27(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->startDFU()V

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/dfu/DfuManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isDFUServiceFound:Z

    return v0
.end method

.method static synthetic access$5(Lcom/smalife/dfu/DfuManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/dfu/DfuManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/dfu/DfuManager;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isFileSizeWritten:Z

    return v0
.end method

.method static synthetic access$8(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->writeFileSize()V

    return-void
.end method

.method static synthetic access$9(Lcom/smalife/dfu/DfuManager;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/smalife/dfu/DfuManager;->isFileSizeWritten:Z

    return-void
.end method

.method private activateAndReset()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x5

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 495
    const-string v0, "DFUManager"

    const-string v1, "writing activate and reset value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 497
    return-void
.end method

.method private copyRawResource(Landroid/content/Context;ILjava/io/File;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "rawResId"    # I
    .param p3, "dest"    # Ljava/io/File;

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 198
    .local v2, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 203
    .local v3, "read":I
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-gtz v3, :cond_0

    .line 206
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 207
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    .end local v0    # "buf":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "read":I
    :goto_1
    return-void

    .line 204
    .restart local v0    # "buf":[B
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "read":I
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v4

    .line 206
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 207
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 208
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    .end local v0    # "buf":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "read":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private enablePacketNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 456
    const-string v1, "DFUManager"

    const-string v2, "Enable Packet Notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    .line 458
    .local v0, "value":[B
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 459
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 460
    return-void
.end method

.method private getBytesInLastPacket()I
    .locals 4

    .prologue
    .line 508
    iget-wide v0, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    const-wide/16 v2, 0x14

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static declared-synchronized getDFUManager(Landroid/content/Context;)Lcom/smalife/dfu/DfuManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-class v1, Lcom/smalife/dfu/DfuManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smalife/dfu/DfuManager;->managerInstance:Lcom/smalife/dfu/DfuManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/smalife/dfu/DfuManager;

    invoke-direct {v0, p0}, Lcom/smalife/dfu/DfuManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smalife/dfu/DfuManager;->managerInstance:Lcom/smalife/dfu/DfuManager;

    .line 102
    :cond_0
    sget-object v0, Lcom/smalife/dfu/DfuManager;->managerInstance:Lcom/smalife/dfu/DfuManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextPacket()[B
    .locals 4

    .prologue
    .line 547
    const/16 v2, 0x14

    :try_start_0
    new-array v0, v2, [B

    .line 548
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mFileStream:Lcom/smalife/utils/HexInputStream;

    invoke-virtual {v2, v0}, Lcom/smalife/utils/HexInputStream;->readPacket([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v0    # "buffer":[B
    :goto_0
    return-object v0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DFUManager"

    const-string v3, "Error on reading file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mCallbacks:Lcom/smalife/dfu/DfuManagerCallbacks;

    iget v3, p0, Lcom/smalife/dfu/DfuManager;->WRITEERROR:I

    invoke-interface {v2, v3}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    .line 553
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberOfPackets()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x14

    .line 500
    iget-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 501
    .local v0, "numOfPackets":I
    iget-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 502
    add-int/lit8 v0, v0, 0x1

    .line 504
    :cond_0
    return v0
.end method

.method private receiveFirmwareImage()V
    .locals 4

    .prologue
    .line 467
    const-string v0, "DFUManager"

    const-string v1, "sending Receive Firmware Image message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x3

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 469
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 470
    return-void
.end method

.method private sendPacket()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 562
    iget-wide v4, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    .line 563
    iget-wide v4, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    iget-wide v6, p0, Lcom/smalife/dfu/DfuManager;->mTotalPackets:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 564
    const-string v3, "DFUManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This is last packet, packet number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iput-boolean v8, p0, Lcom/smalife/dfu/DfuManager;->isLastPacket:Z

    .line 566
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->getNextPacket()[B

    move-result-object v0

    .line 567
    .local v0, "buffer":[B
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->getBytesInLastPacket()I

    move-result v3

    new-array v1, v3, [B

    .line 568
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->getBytesInLastPacket()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 572
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 573
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 582
    .end local v0    # "buffer":[B
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :goto_1
    const-string v3, "DFUManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This is last packet, packet number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----totalNumber :\u3000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/smalife/dfu/DfuManager;->mTotalPackets:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 569
    .restart local v0    # "buffer":[B
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_0
    aget-byte v3, v0, v2

    aput-byte v3, v1, v2

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "buffer":[B
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 579
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->getNextPacket()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 580
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v4, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_1
.end method

.method private startDFU()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 429
    const-string v0, "DFUManager"

    const-string v1, "startDFU"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isDFUServiceFound:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 432
    const-string v0, "DFUManager"

    const-string v1, "writing start DFU value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 434
    iput-boolean v3, p0, Lcom/smalife/dfu/DfuManager;->isFileSizeWritten:Z

    .line 436
    :cond_0
    return-void
.end method

.method private startUploadingFile()V
    .locals 2

    .prologue
    .line 476
    const-string v0, "DFUManager"

    const-string v1, "Preparing to send file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->sendPacket()V

    .line 478
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mCallbacks:Lcom/smalife/dfu/DfuManagerCallbacks;

    invoke-interface {v0}, Lcom/smalife/dfu/DfuManagerCallbacks;->onFileTransferStarted()V

    .line 479
    return-void
.end method

.method private validateFirmware()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x4

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 486
    const-string v0, "DFUManager"

    const-string v1, "writing validate Firmware value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 488
    return-void
.end method

.method private writeFileSize()V
    .locals 4

    .prologue
    .line 442
    const-string v0, "DFUManager"

    const-string v1, "writeFileSize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isDFUServiceFound:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 445
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    long-to-int v1, v2

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 446
    const-string v0, "DFUManager"

    const-string v1, "writing File size"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public checkwatchType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "watchType"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "SMA-04"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SM04"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    :cond_0
    const-string v0, "sma_04_v3.0.4.hex"

    invoke-virtual {p0, p1, v0}, Lcom/smalife/dfu/DfuManager;->ensureSamplesExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    const-string v0, "SMA-02"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SM02"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    :cond_3
    const-string v0, "sma_02_v3.0.4.hex"

    invoke-virtual {p0, p1, v0}, Lcom/smalife/dfu/DfuManager;->ensureSamplesExist(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    const-string v0, "SM05"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "sma05ble.zip"

    invoke-virtual {p0, p1, v0}, Lcom/smalife/dfu/DfuManager;->ensureSamplesExist(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-virtual {p0}, Lcom/smalife/dfu/DfuManager;->closeFile()V

    .line 587
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 589
    iput-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 591
    :cond_0
    sput-object v1, Lcom/smalife/dfu/DfuManager;->managerInstance:Lcom/smalife/dfu/DfuManager;

    .line 592
    return-void
.end method

.method public closeBluetoothGatt()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 599
    :cond_0
    return-void
.end method

.method public closeFile()V
    .locals 4

    .prologue
    .line 532
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mFileStream:Lcom/smalife/utils/HexInputStream;

    if-eqz v1, :cond_0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mFileStream:Lcom/smalife/utils/HexInputStream;

    invoke-virtual {v1}, Lcom/smalife/utils/HexInputStream;->close()V

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smalife/dfu/DfuManager;->mFileStream:Lcom/smalife/utils/HexInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error on closing file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 217
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting device address : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p2, p0, Lcom/smalife/dfu/DfuManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 219
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 220
    return-void
.end method

.method public deletFile()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v2, "sma_02_v2.0.0.hex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v2, "sma_02_v3.0.4.hex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v2, "sma_04_v2.0.0.hex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 183
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v2, "sma_04_v3.0.4.hex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 184
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v2, "sma05ble.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 185
    return-void
.end method

.method public disableNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 415
    iget-boolean v1, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "DFUManager"

    const-string v2, "Disable Notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 418
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/smalife/dfu/DfuManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 419
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 420
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 421
    iput-boolean v3, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    .line 423
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "DFUManager"

    const-string v1, "Disconnecting device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 226
    :cond_0
    return-void
.end method

.method public enableNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 403
    const-string v1, "DFUManager"

    const-string v2, "Enable Notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 405
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/smalife/dfu/DfuManager;->CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 406
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 407
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 408
    iput-boolean v3, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    .line 409
    return-void
.end method

.method public ensureSamplesExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "sma"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    .line 134
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 141
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v4, "sma_02_v2.0.0.hex"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    const v3, 0x7f060003

    invoke-direct {p0, p1, v3, v1}, Lcom/smalife/dfu/DfuManager;->copyRawResource(Landroid/content/Context;ILjava/io/File;)V

    .line 146
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v4, "sma_02_v3.0.4.hex"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    const v3, 0x7f060004

    invoke-direct {p0, p1, v3, v1}, Lcom/smalife/dfu/DfuManager;->copyRawResource(Landroid/content/Context;ILjava/io/File;)V

    .line 153
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v4, "sma_04_v2.0.0.hex"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 155
    const v3, 0x7f060005

    invoke-direct {p0, p1, v3, v1}, Lcom/smalife/dfu/DfuManager;->copyRawResource(Landroid/content/Context;ILjava/io/File;)V

    .line 158
    :cond_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v4, "sma_04_v3.0.4.hex"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 160
    const v3, 0x7f060006

    invoke-direct {p0, p1, v3, v1}, Lcom/smalife/dfu/DfuManager;->copyRawResource(Landroid/content/Context;ILjava/io/File;)V

    .line 164
    :cond_4
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    const-string v4, "sma05ble.zip"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .restart local v1    # "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/smalife/dfu/DfuManager;->root:Ljava/io/File;

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {p0, v2}, Lcom/smalife/dfu/DfuManager;->openFile(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 621
    iget-wide v0, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    return-wide v0
.end method

.method public openFile(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 516
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mPacketNumber:J

    .line 518
    new-instance v1, Lcom/smalife/utils/HexInputStream;

    invoke-direct {v1, p1}, Lcom/smalife/utils/HexInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/smalife/dfu/DfuManager;->mFileStream:Lcom/smalife/utils/HexInputStream;

    .line 519
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mFileStream:Lcom/smalife/utils/HexInputStream;

    invoke-virtual {v1}, Lcom/smalife/utils/HexInputStream;->available()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    .line 520
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->getNumberOfPackets()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/smalife/dfu/DfuManager;->mTotalPackets:J

    .line 521
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/smalife/dfu/DfuManager;->mFileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error on openning file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mCallbacks:Lcom/smalife/dfu/DfuManagerCallbacks;

    iget v2, p0, Lcom/smalife/dfu/DfuManager;->FILEERROR:I

    invoke-interface {v1, v2}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    goto :goto_0
.end method

.method public resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isFileSizeWritten:Z

    .line 603
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isEnablePacketNotificationWritten:Z

    .line 604
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isReceiveFirmwareImageWritten:Z

    .line 605
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isDFUServiceFound:Z

    .line 606
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isNotificationEnable:Z

    .line 607
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->isLastPacket:Z

    .line 608
    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->mStopSendingPacket:Z

    .line 609
    return-void
.end method

.method public resumeSendingPacket()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->mStopSendingPacket:Z

    .line 636
    invoke-direct {p0}, Lcom/smalife/dfu/DfuManager;->sendPacket()V

    .line 637
    return-void
.end method

.method public setGattCallbacks(Lcom/smalife/dfu/DfuManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/smalife/dfu/DfuManagerCallbacks;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/smalife/dfu/DfuManager;->mCallbacks:Lcom/smalife/dfu/DfuManagerCallbacks;

    .line 106
    return-void
.end method

.method public stopSendingPacket()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/dfu/DfuManager;->mStopSendingPacket:Z

    .line 629
    return-void
.end method

.method public systemReset()V
    .locals 3

    .prologue
    .line 615
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 616
    .local v0, "value":[B
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 617
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/smalife/dfu/DfuManager;->mDFUControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 618
    return-void
.end method
