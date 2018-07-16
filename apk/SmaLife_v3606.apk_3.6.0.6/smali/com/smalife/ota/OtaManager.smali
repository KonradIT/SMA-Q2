.class public Lcom/smalife/ota/OtaManager;
.super Ljava/lang/Object;
.source "OtaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/ota/OtaManager$FirstConnectThread;
    }
.end annotation


# static fields
.field public static final RX_CHAR_UUID:Ljava/util/UUID;

.field public static final RX_SERVICE_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "OTAManager"

.field public static final WX_CHAR_UUID:Ljava/util/UUID;

.field private static managerInstance:Lcom/smalife/ota/OtaManager;


# instance fields
.field private RXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private RxService:Landroid/bluetooth/BluetoothGattService;

.field private WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private cmd:[B

.field private cmdlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cmdlist_hz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private count:I

.field private filecmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

.field private isFileSizeWritten:Z

.field private isFirstConnect:Z

.field private isFirstOTA:Z

.field private isSecondOTA:Z

.field private len:I

.field private mBlueToothService:Landroid/bluetooth/BluetoothGattService;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mOtaCallbacks:Lcom/smalife/ota/OtaCallbacks;

.field private mPacketNumber:I

.field private mTotalSendPackets:I

.field private mTotalSize:I

.field private noResponsed:Z

.field private otaStart:Z

.field private packetnum:I

.field private sendpacket:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/smalife/ota/OtaManager;->RX_SERVICE_UUID:Ljava/util/UUID;

    .line 31
    const-string v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/smalife/ota/OtaManager;->WX_CHAR_UUID:Ljava/util/UUID;

    .line 36
    const-string v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/smalife/ota/OtaManager;->RX_CHAR_UUID:Ljava/util/UUID;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/smalife/ota/OtaManager;->managerInstance:Lcom/smalife/ota/OtaManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/smalife/ota/OtaManager$1;

    invoke-direct {v0, p0}, Lcom/smalife/ota/OtaManager$1;-><init>(Lcom/smalife/ota/OtaManager;)V

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 264
    iput v1, p0, Lcom/smalife/ota/OtaManager;->sendpacket:I

    .line 265
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFileSizeWritten:Z

    .line 266
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFirstConnect:Z

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    .line 410
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    .line 411
    iput v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSize:I

    .line 412
    iput v1, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    .line 413
    iput v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSendPackets:I

    .line 414
    iput v1, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    .line 415
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->otaStart:Z

    .line 416
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->cmd:[B

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->cmdlist:Ljava/util/ArrayList;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->cmdlist_hz:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->context:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/smalife/ota/OtaManager;->prodectCmds()V

    .line 60
    invoke-direct {p0}, Lcom/smalife/ota/OtaManager;->prodect_hz()V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->RxService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static synthetic access$10(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->RXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->RXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$12(Lcom/smalife/ota/OtaManager;)Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/smalife/ota/OtaManager;->isFileSizeWritten:Z

    return v0
.end method

.method static synthetic access$13(Lcom/smalife/ota/OtaManager;)I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/smalife/ota/OtaManager;->sendpacket:I

    return v0
.end method

.method static synthetic access$14(Lcom/smalife/ota/OtaManager;I)V
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lcom/smalife/ota/OtaManager;->sendpacket:I

    return-void
.end method

.method static synthetic access$15(Lcom/smalife/ota/OtaManager;)I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/smalife/ota/OtaManager;->count:I

    return v0
.end method

.method static synthetic access$16(Lcom/smalife/ota/OtaManager;I)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/smalife/ota/OtaManager;->sendPacket(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/smalife/ota/OtaManager;[B)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/smalife/ota/OtaManager;->reciveData([B)V

    return-void
.end method

.method static synthetic access$18(Lcom/smalife/ota/OtaManager;)Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/smalife/ota/OtaManager;->isFirstConnect:Z

    return v0
.end method

.method static synthetic access$19(Lcom/smalife/ota/OtaManager;)Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/smalife/ota/OtaManager;->otaStart:Z

    return v0
.end method

.method static synthetic access$2(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->RxService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method static synthetic access$20(Lcom/smalife/ota/OtaManager;)I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    return v0
.end method

.method static synthetic access$21(Lcom/smalife/ota/OtaManager;)Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z

    return v0
.end method

.method static synthetic access$22(Lcom/smalife/ota/OtaManager;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/smalife/ota/OtaManager;->write_files()V

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/ota/OtaManager;Z)V
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/smalife/ota/OtaManager;->isFirstConnect:Z

    return-void
.end method

.method static synthetic access$6(Lcom/smalife/ota/OtaManager;)Lcom/smalife/ota/OtaManager$FirstConnectThread;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/ota/OtaManager;Lcom/smalife/ota/OtaManager$FirstConnectThread;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    return-void
.end method

.method static synthetic access$8(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->mBlueToothService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static synthetic access$9(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->mBlueToothService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method private crc16_ccitt([SI)S
    .locals 6
    .param p1, "buf"    # [S
    .param p2, "len"    # I

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, "crc":S
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 584
    return v1

    .line 582
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    sget-object v3, Lcom/smalife/ota/OtaHelper;->crc16_table:[I

    shr-int/lit8 v4, v1, 0x8

    aget-short v5, p1, v0

    xor-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    int-to-short v1, v2

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getOtaManager(Landroid/content/Context;)Lcom/smalife/ota/OtaManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v1, Lcom/smalife/ota/OtaManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smalife/ota/OtaManager;->managerInstance:Lcom/smalife/ota/OtaManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/smalife/ota/OtaManager;

    invoke-direct {v0, p0}, Lcom/smalife/ota/OtaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smalife/ota/OtaManager;->managerInstance:Lcom/smalife/ota/OtaManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/smalife/ota/OtaManager;->managerInstance:Lcom/smalife/ota/OtaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private prodectCmds()V
    .locals 14

    .prologue
    const/16 v13, 0x80

    .line 507
    :try_start_0
    iget-object v11, p0, Lcom/smalife/ota/OtaManager;->cmdlist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget-object v11, p0, Lcom/smalife/ota/OtaManager;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "sma05_v1.7.bin"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 509
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 510
    .local v9, "size":I
    new-array v0, v9, [B

    .line 511
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 512
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 513
    const/4 v5, 0x0

    .line 514
    .local v5, "len":I
    rem-int/lit16 v11, v9, 0x80

    if-nez v11, :cond_0

    .line 515
    div-int/lit16 v5, v9, 0x80

    .line 519
    :goto_0
    const/4 v1, 0x0

    .line 520
    .local v1, "cmd":[B
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_1
    if-lt v6, v5, :cond_1

    .line 540
    return-void

    .line 517
    .end local v1    # "cmd":[B
    .end local v6    # "m":I
    :cond_0
    div-int/lit16 v11, v9, 0x80

    add-int/lit8 v5, v11, 0x1

    goto :goto_0

    .line 521
    .restart local v1    # "cmd":[B
    .restart local v6    # "m":I
    :cond_1
    const/16 v11, 0x80

    new-array v10, v11, [S

    .line 522
    .local v10, "temp_cmd":[S
    const/16 v11, 0x85

    new-array v1, v11, [B

    .line 523
    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-byte v12, v1, v11

    .line 524
    add-int/lit8 v11, v6, 0x1

    int-to-byte v8, v11

    .line 525
    .local v8, "serialNum":B
    const/4 v11, 0x1

    aput-byte v8, v1, v11

    .line 526
    const/4 v11, 0x2

    rsub-int v12, v8, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 527
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_2
    if-lt v7, v13, :cond_2

    .line 533
    const/16 v11, 0x80

    invoke-direct {p0, v10, v11}, Lcom/smalife/ota/OtaManager;->crc16_ccitt([SI)S

    move-result v2

    .line 534
    .local v2, "crc_value":S
    const/16 v11, 0x83

    invoke-static {v1, v2, v11}, Lcom/smalife/ota/OtaHelper;->putShort([BSI)V

    .line 535
    iget-object v11, p0, Lcom/smalife/ota/OtaManager;->cmdlist:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 528
    .end local v2    # "crc_value":S
    :cond_2
    mul-int/lit8 v11, v6, 0x7f

    add-int/2addr v11, v7

    if-ge v11, v9, :cond_3

    .line 529
    mul-int/lit16 v11, v6, 0x80

    add-int/2addr v11, v7

    aget-byte v11, v0, v11

    aput-short v11, v10, v7

    .line 530
    add-int/lit8 v11, v7, 0x3

    mul-int/lit16 v12, v6, 0x80

    add-int/2addr v12, v7

    aget-byte v12, v0, v12

    aput-byte v12, v1, v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 537
    .end local v0    # "buffer":[B
    .end local v1    # "cmd":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "m":I
    .end local v7    # "n":I
    .end local v8    # "serialNum":B
    .end local v9    # "size":I
    .end local v10    # "temp_cmd":[S
    :catch_0
    move-exception v3

    .line 538
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method private prodect_hz()V
    .locals 14

    .prologue
    const/16 v13, 0x80

    .line 544
    :try_start_0
    iget-object v11, p0, Lcom/smalife/ota/OtaManager;->cmdlist_hz:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 545
    iget-object v11, p0, Lcom/smalife/ota/OtaManager;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "sma05_hz.bin"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 546
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 547
    .local v9, "size":I
    new-array v0, v9, [B

    .line 548
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 549
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 550
    const/4 v5, 0x0

    .line 551
    .local v5, "len":I
    rem-int/lit16 v11, v9, 0x80

    if-nez v11, :cond_0

    .line 552
    div-int/lit16 v5, v9, 0x80

    .line 556
    :goto_0
    const/4 v1, 0x0

    .line 557
    .local v1, "cmd":[B
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_1
    if-lt v6, v5, :cond_1

    .line 577
    return-void

    .line 554
    .end local v1    # "cmd":[B
    .end local v6    # "m":I
    :cond_0
    div-int/lit16 v11, v9, 0x80

    add-int/lit8 v5, v11, 0x1

    goto :goto_0

    .line 558
    .restart local v1    # "cmd":[B
    .restart local v6    # "m":I
    :cond_1
    const/16 v11, 0x80

    new-array v10, v11, [S

    .line 559
    .local v10, "temp_cmd":[S
    const/16 v11, 0x85

    new-array v1, v11, [B

    .line 560
    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-byte v12, v1, v11

    .line 561
    add-int/lit8 v11, v6, 0x1

    int-to-byte v8, v11

    .line 562
    .local v8, "serialNum":B
    const/4 v11, 0x1

    aput-byte v8, v1, v11

    .line 563
    const/4 v11, 0x2

    rsub-int v12, v8, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 564
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_2
    if-lt v7, v13, :cond_2

    .line 570
    const/16 v11, 0x80

    invoke-direct {p0, v10, v11}, Lcom/smalife/ota/OtaManager;->crc16_ccitt([SI)S

    move-result v2

    .line 571
    .local v2, "crc_value":S
    const/16 v11, 0x83

    invoke-static {v1, v2, v11}, Lcom/smalife/ota/OtaHelper;->putShort([BSI)V

    .line 572
    iget-object v11, p0, Lcom/smalife/ota/OtaManager;->cmdlist_hz:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 565
    .end local v2    # "crc_value":S
    :cond_2
    mul-int/lit8 v11, v6, 0x7f

    add-int/2addr v11, v7

    if-ge v11, v9, :cond_3

    .line 566
    mul-int/lit16 v11, v6, 0x80

    add-int/2addr v11, v7

    aget-byte v11, v0, v11

    aput-short v11, v10, v7

    .line 567
    add-int/lit8 v11, v7, 0x3

    mul-int/lit16 v12, v6, 0x80

    add-int/2addr v12, v7

    aget-byte v12, v0, v12

    aput-byte v12, v1, v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 574
    .end local v0    # "buffer":[B
    .end local v1    # "cmd":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "m":I
    .end local v7    # "n":I
    .end local v8    # "serialNum":B
    .end local v9    # "size":I
    .end local v10    # "temp_cmd":[S
    :catch_0
    move-exception v3

    .line 575
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method private reciveData([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 311
    invoke-static {p1}, Lcom/smalife/ota/OtaHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "rt":Ljava/lang/String;
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCharacteristicChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "4F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->isFirstConnect:Z

    .line 315
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    invoke-virtual {v1}, Lcom/smalife/ota/OtaManager$FirstConnectThread;->interrupt()V

    .line 317
    iput-object v6, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    .line 319
    :cond_0
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6536\u52304F "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput v4, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    .line 321
    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    if-nez v1, :cond_2

    .line 322
    const-string v1, "wsh"

    const-string v2, " \u7b2c\u4e00\u6b21\u5199\u56fa\u4ef6"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->cmdlist:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/smalife/ota/OtaManager;->setData(Ljava/util/ArrayList;)V

    .line 324
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->cmdlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    .line 325
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->cmdlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/smalife/ota/OtaManager;->cmdlist_hz:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSize:I

    .line 326
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \u56fa\u4ef6\u5305\u6570\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-----\u603b\u5305\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    iget v3, p0, Lcom/smalife/ota/OtaManager;->mTotalSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-array v1, v5, [B

    const/16 v2, 0x55

    aput-byte v2, v1, v4

    invoke-direct {p0, v1}, Lcom/smalife/ota/OtaManager;->write_cmd([B)V

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    if-nez v1, :cond_3

    .line 330
    const-string v1, "wsh"

    const-string v2, " // \u56fa\u4ef6\u79fb\u690d\u5b8c\u6bd5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-boolean v5, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    .line 332
    iput-boolean v5, p0, Lcom/smalife/ota/OtaManager;->isFirstConnect:Z

    .line 333
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    if-nez v1, :cond_1

    .line 334
    new-instance v1, Lcom/smalife/ota/OtaManager$FirstConnectThread;

    invoke-direct {v1, p0, v6}, Lcom/smalife/ota/OtaManager$FirstConnectThread;-><init>(Lcom/smalife/ota/OtaManager;Lcom/smalife/ota/OtaManager$FirstConnectThread;)V

    iput-object v1, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    .line 335
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    invoke-virtual {v1}, Lcom/smalife/ota/OtaManager$FirstConnectThread;->start()V

    goto :goto_0

    .line 337
    :cond_3
    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    if-nez v1, :cond_1

    .line 338
    const-string v1, "wsh"

    const-string v2, " // \u7b2c\u4e8c\u6b21\u5199\u5b57\u5e93"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->cmdlist_hz:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/smalife/ota/OtaManager;->setData(Ljava/util/ArrayList;)V

    .line 340
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->cmdlist_hz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    .line 341
    new-array v1, v5, [B

    const/16 v2, 0x4f

    aput-byte v2, v1, v4

    invoke-direct {p0, v1}, Lcom/smalife/ota/OtaManager;->write_cmd([B)V

    goto :goto_0

    .line 343
    :cond_4
    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 344
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NAC data index \u9519\u8bef\u91cd\u53d1\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z

    .line 346
    iput v4, p0, Lcom/smalife/ota/OtaManager;->sendpacket:I

    .line 347
    invoke-direct {p0}, Lcom/smalife/ota/OtaManager;->write_files()V

    goto :goto_0

    .line 348
    :cond_5
    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 349
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z

    .line 350
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------------------ANC ----------\u6b63\u786e-----------\u7b2c\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    iget v3, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u5305"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v1, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    iget v2, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    if-ne v1, v2, :cond_8

    .line 353
    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    if-eqz v1, :cond_7

    .line 354
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    .line 355
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \u56fa\u4ef6\u5305\u53d1\u9001\u5b8c\u6bd5 ------------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_6
    :goto_1
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->otaStart:Z

    goto/16 :goto_0

    .line 356
    :cond_7
    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    if-eqz v1, :cond_6

    .line 357
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    .line 358
    const-string v1, "wsh"

    const-string v2, "  \u5b57\u5e93\u5305\u53d1\u9001\u5b8c\u6bd5------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v1, "wsh"

    const-string v2, " \u5168\u90e8\u53d1\u9001\u5b8c\u6bd5 ----------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->mOtaCallbacks:Lcom/smalife/ota/OtaCallbacks;

    invoke-interface {v1}, Lcom/smalife/ota/OtaCallbacks;->onOTATransferCompleted()V

    .line 361
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->isFileSizeWritten:Z

    goto :goto_1

    .line 366
    :cond_8
    iget v1, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    .line 367
    iget v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSendPackets:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSendPackets:I

    .line 368
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->mOtaCallbacks:Lcom/smalife/ota/OtaCallbacks;

    iget v2, p0, Lcom/smalife/ota/OtaManager;->mTotalSendPackets:I

    invoke-interface {v1, v2}, Lcom/smalife/ota/OtaCallbacks;->onOTATranfering(I)V

    .line 369
    iput v4, p0, Lcom/smalife/ota/OtaManager;->sendpacket:I

    .line 370
    invoke-direct {p0}, Lcom/smalife/ota/OtaManager;->write_files()V

    goto/16 :goto_0

    .line 371
    :cond_9
    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const-string v1, "wsh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiver data  \uff1a\u5f00\u59cb\u53d1\u9001\u6307\u4ee4 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput v4, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    .line 374
    iput-boolean v4, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z

    .line 375
    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    if-nez v1, :cond_a

    .line 376
    iget-object v1, p0, Lcom/smalife/ota/OtaManager;->mOtaCallbacks:Lcom/smalife/ota/OtaCallbacks;

    iget v2, p0, Lcom/smalife/ota/OtaManager;->mTotalSize:I

    invoke-interface {v1, v2}, Lcom/smalife/ota/OtaCallbacks;->onOTATransferStarted(I)V

    .line 378
    :cond_a
    invoke-virtual {p0}, Lcom/smalife/ota/OtaManager;->startThread()V

    .line 379
    iput-boolean v5, p0, Lcom/smalife/ota/OtaManager;->isFileSizeWritten:Z

    .line 380
    iput v4, p0, Lcom/smalife/ota/OtaManager;->sendpacket:I

    .line 381
    iput-boolean v5, p0, Lcom/smalife/ota/OtaManager;->otaStart:Z

    .line 382
    invoke-direct {p0}, Lcom/smalife/ota/OtaManager;->write_files()V

    goto/16 :goto_0
.end method

.method private sendPacket(I)V
    .locals 10
    .param p1, "dex"    # I

    .prologue
    .line 236
    move v1, p1

    .line 237
    .local v1, "j":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v5, "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    const/16 v7, 0x14

    if-lt v3, v7, :cond_1

    .line 243
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [B

    .line 244
    .local v0, "cmd_bytes":[B
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v7, v0

    if-lt v2, v7, :cond_3

    .line 247
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v8, Lcom/smalife/ota/OtaManager;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    iput-object v7, p0, Lcom/smalife/ota/OtaManager;->RxService:Landroid/bluetooth/BluetoothGattService;

    .line 248
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->RxService:Landroid/bluetooth/BluetoothGattService;

    if-nez v7, :cond_4

    .line 262
    :cond_0
    :goto_2
    return-void

    .line 239
    .end local v0    # "cmd_bytes":[B
    .end local v2    # "k":I
    :cond_1
    mul-int/lit8 v7, v1, 0x14

    add-int/2addr v7, v3

    iget v8, p0, Lcom/smalife/ota/OtaManager;->len:I

    if-ge v7, v8, :cond_2

    .line 240
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->cmd:[B

    mul-int/lit8 v8, v1, 0x14

    add-int/2addr v8, v3

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .restart local v0    # "cmd_bytes":[B
    .restart local v2    # "k":I
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v0, v2

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_4
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->RxService:Landroid/bluetooth/BluetoothGattService;

    sget-object v8, Lcom/smalife/ota/OtaManager;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    iput-object v7, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 252
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v7, :cond_0

    .line 255
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 256
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 257
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v4

    .line 258
    .local v4, "setValue":Z
    iget-object v7, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 259
    iget-object v8, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v6

    .line 260
    .local v6, "writeCharacteristic":Z
    const-string v7, "wsh"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "send status   \uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---setValue:--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 261
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private declared-synchronized write_cmd([B)V
    .locals 10
    .param p1, "b"    # [B

    .prologue
    .line 387
    monitor-enter p0

    move-object v0, p1

    .line 388
    .local v0, "cmd":[B
    :try_start_0
    array-length v5, v0

    .line 389
    .local v5, "len":I
    rem-int/lit8 v8, v5, 0x14

    if-nez v8, :cond_0

    div-int/lit8 v2, v5, 0x14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .local v2, "count":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 407
    monitor-exit p0

    return-void

    .line 389
    .end local v2    # "count":I
    .end local v3    # "j":I
    :cond_0
    :try_start_1
    div-int/lit8 v8, v5, 0x14

    add-int/lit8 v2, v8, 0x1

    goto :goto_0

    .line 391
    .restart local v2    # "count":I
    .restart local v3    # "j":I
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v7, "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_2
    const/16 v8, 0x14

    if-lt v6, v8, :cond_2

    .line 397
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [B

    .line 398
    .local v1, "cmd_bytes":[B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_3
    array-length v8, v1

    if-lt v4, v8, :cond_4

    .line 401
    iget-object v8, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 402
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 403
    iget-object v8, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 404
    iget-object v8, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v9, p0, Lcom/smalife/ota/OtaManager;->WXCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "cmd_bytes":[B
    .end local v4    # "k":I
    :cond_2
    mul-int/lit8 v8, v3, 0x14

    add-int/2addr v8, v6

    if-ge v8, v5, :cond_3

    .line 394
    mul-int/lit8 v8, v3, 0x14

    add-int/2addr v8, v6

    aget-byte v8, v0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 399
    .restart local v1    # "cmd_bytes":[B
    .restart local v4    # "k":I
    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 387
    .end local v1    # "cmd_bytes":[B
    .end local v2    # "count":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "len":I
    .end local v6    # "n":I
    .end local v7    # "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized write_files()V
    .locals 3

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    iget v1, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    if-ne v0, v1, :cond_0

    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->cmd:[B

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->cmd:[B

    array-length v0, v0

    iput v0, p0, Lcom/smalife/ota/OtaManager;->len:I

    .line 472
    iget v0, p0, Lcom/smalife/ota/OtaManager;->len:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_1

    iget v0, p0, Lcom/smalife/ota/OtaManager;->len:I

    div-int/lit8 v0, v0, 0x14

    :goto_1
    iput v0, p0, Lcom/smalife/ota/OtaManager;->count:I

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smalife/ota/OtaManager;->sendPacket(I)V

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 469
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->filecmds:Ljava/util/ArrayList;

    iget v1, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->cmd:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 472
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/smalife/ota/OtaManager;->len:I

    div-int/lit8 v0, v0, 0x14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    const-string v0, "OTAManager"

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

    .line 69
    iput-object p2, p0, Lcom/smalife/ota/OtaManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 70
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smalife/ota/OtaManager;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 71
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "OTAManager"

    const-string v1, "Disconnecting device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    invoke-virtual {v0}, Lcom/smalife/ota/OtaManager$FirstConnectThread;->interrupt()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->firstConnectThread:Lcom/smalife/ota/OtaManager$FirstConnectThread;

    .line 82
    :cond_1
    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smalife/ota/OtaManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public resetStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/ota/OtaManager;->isFirstOTA:Z

    .line 427
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->isSecondOTA:Z

    .line 428
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->otaStart:Z

    .line 429
    iput-boolean v1, p0, Lcom/smalife/ota/OtaManager;->noResponsed:Z

    .line 430
    iput v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSize:I

    .line 431
    iput v1, p0, Lcom/smalife/ota/OtaManager;->mPacketNumber:I

    .line 432
    iput v1, p0, Lcom/smalife/ota/OtaManager;->mTotalSendPackets:I

    .line 433
    iput v1, p0, Lcom/smalife/ota/OtaManager;->packetnum:I

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/ota/OtaManager;->filecmds:Ljava/util/ArrayList;

    .line 435
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "cmdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->filecmds:Ljava/util/ArrayList;

    .line 463
    return-void
.end method

.method public setGattCallbacks(Lcom/smalife/ota/OtaCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/smalife/ota/OtaCallbacks;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/smalife/ota/OtaManager;->mOtaCallbacks:Lcom/smalife/ota/OtaCallbacks;

    .line 55
    return-void
.end method

.method public startThread()V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smalife/ota/OtaManager$2;

    invoke-direct {v1, p0}, Lcom/smalife/ota/OtaManager$2;-><init>(Lcom/smalife/ota/OtaManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 458
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 459
    return-void
.end method
