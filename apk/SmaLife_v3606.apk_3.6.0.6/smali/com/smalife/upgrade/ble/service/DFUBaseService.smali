.class public abstract Lcom/smalife/upgrade/ble/service/DFUBaseService;
.super Landroid/app/IntentService;
.source "DFUBaseService.java"


# static fields
.field public static final ACTION_ABORT:I = 0x2

.field public static final ACTION_PAUSE:I = 0x0

.field public static final ACTION_RESUME:I = 0x1

.field public static final BROADCAST_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

.field public static final BROADCAST_ERROR:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

.field public static final BROADCAST_LOG:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

.field public static final BROADCAST_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

.field public static final BROADCAST_SERVICE_IS_NULL:Ljava/lang/String; = "ActionServicesIsNull"

.field private static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

.field private static final DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

.field private static final DFU_PACKET_UUID:Ljava/util/UUID;

.field private static final DFU_SERVICE_UUID:Ljava/util/UUID;

.field public static final DFU_STATUS_CRC_ERROR:I = 0x5

.field public static final DFU_STATUS_DATA_SIZE_EXCEEDS_LIMIT:I = 0x4

.field public static final DFU_STATUS_INVALID_STATE:I = 0x2

.field public static final DFU_STATUS_NOT_SUPPORTED:I = 0x3

.field public static final DFU_STATUS_OPERATION_FAILED:I = 0x6

.field public static final DFU_STATUS_SUCCESS:I = 0x1

.field private static final DFU_VERSION:Ljava/util/UUID;

.field public static final ERROR_BLUETOOTH_DISABLED:I = 0x100a

.field public static final ERROR_CHARACTERISTICS_NOT_FOUND:I = 0x1007

.field public static final ERROR_CONNECTION_MASK:I = 0x4000

.field public static final ERROR_CONNECTION_STATE_MASK:I = 0x8000

.field public static final ERROR_DEVICE_DISCONNECTED:I = 0x1000

.field public static final ERROR_FILE_ERROR:I = 0x1002

.field public static final ERROR_FILE_INVALID:I = 0x1003

.field public static final ERROR_FILE_IO_EXCEPTION:I = 0x1004

.field public static final ERROR_FILE_NOT_FOUND:I = 0x1001

.field public static final ERROR_FILE_SIZE_INVALID:I = 0x100c

.field public static final ERROR_FILE_TYPE_UNSUPPORTED:I = 0x1009

.field public static final ERROR_INIT_PACKET_REQUIRED:I = 0x100b

.field public static final ERROR_INVALID_RESPONSE:I = 0x1008

.field public static final ERROR_MASK:I = 0x1000

.field public static final ERROR_REMOTE_MASK:I = 0x2000

.field public static final ERROR_SERVICE_DISCOVERY_NOT_STARTED:I = 0x1005

.field public static final ERROR_SERVICE_NOT_FOUND:I = 0x1006

.field public static final ERROR_TYPE_COMMUNICATION:I = 0x2

.field public static final ERROR_TYPE_COMMUNICATION_STATE:I = 0x1

.field public static final ERROR_TYPE_DFU_REMOTE:I = 0x3

.field public static final ERROR_TYPE_OTHER:I = 0x0

.field public static final EXTRA_ACTION:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

.field public static final EXTRA_AVG_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

.field public static final EXTRA_DATA:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

.field public static final EXTRA_DISABLE_NOTIFICATION:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_NOTIFICATION"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

.field public static final EXTRA_FILE_MIME_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

.field public static final EXTRA_FILE_RES_ID:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

.field public static final EXTRA_FILE_TYPE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

.field public static final EXTRA_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

.field public static final EXTRA_INIT_FILE_PATH:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

.field public static final EXTRA_INIT_FILE_RES_ID:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

.field public static final EXTRA_INIT_FILE_URI:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

.field public static final EXTRA_KEEP_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

.field public static final EXTRA_LOG_LEVEL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

.field public static final EXTRA_LOG_MESSAGE:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

.field public static final EXTRA_PARTS_TOTAL:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

.field public static final EXTRA_PART_CURRENT:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

.field public static final EXTRA_RESTORE_BOND:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

.field public static final EXTRA_SPEED_B_PER_MS:Ljava/lang/String; = "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

.field private static final GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

.field private static final HEX_ARRAY:[C

.field private static final INDICATIONS:I = 0x2

.field public static final LOG_LEVEL_APPLICATION:I = 0xa

.field public static final LOG_LEVEL_DEBUG:I = 0x0

.field public static final LOG_LEVEL_ERROR:I = 0x14

.field public static final LOG_LEVEL_INFO:I = 0x5

.field public static final LOG_LEVEL_VERBOSE:I = 0x1

.field public static final LOG_LEVEL_WARNING:I = 0xf

.field private static final MAX_PACKET_SIZE:I = 0x14

.field public static final MIME_TYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_ZIP:Ljava/lang/String; = "application/zip"

.field private static final NOTIFICATIONS:I = 0x1

.field public static final NOTIFICATION_ID:I = 0x11b

.field private static final OP_CODE_ACTIVATE_AND_RESET:[B

.field private static final OP_CODE_ACTIVATE_AND_RESET_KEY:I = 0x5

.field private static final OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

.field private static final OP_CODE_INIT_DFU_PARAMS_KEY:I = 0x2

.field private static final OP_CODE_INIT_DFU_PARAMS_START:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_KEY:I = 0x11

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x8

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

.field private static final OP_CODE_RECEIVE_FIRMWARE_IMAGE_KEY:I = 0x3

.field private static final OP_CODE_RESET:[B

.field private static final OP_CODE_RESET_KEY:I = 0x6

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x10

.field private static final OP_CODE_START_DFU:[B

.field private static final OP_CODE_START_DFU_KEY:I = 0x1

.field private static final OP_CODE_VALIDATE:[B

.field private static final OP_CODE_VALIDATE_KEY:I = 0x4

.field public static final PROGRESS_ABORTED:I = -0x7

.field public static final PROGRESS_COMPLETED:I = -0x6

.field public static final PROGRESS_CONNECTING:I = -0x1

.field public static final PROGRESS_DISCONNECTING:I = -0x5

.field public static final PROGRESS_ENABLING_DFU_MODE:I = -0x3

.field public static final PROGRESS_STARTING:I = -0x2

.field public static final PROGRESS_VALIDATING:I = -0x4

.field private static final SERVICE_CHANGED_UUID:Ljava/util/UUID;

.field private static final STATE_CLOSED:I = -0x5

.field private static final STATE_CONNECTED:I = -0x2

.field private static final STATE_CONNECTED_AND_READY:I = -0x3

.field private static final STATE_CONNECTING:I = -0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STATE_DISCONNECTING:I = -0x4

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_APPLICATION:I = 0x4

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_BOOTLOADER:I = 0x2

.field public static final TYPE_SOFT_DEVICE:I = 0x1


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private mAborted:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBuffer:[B

.field private mBytesConfirmed:I

.field private mBytesSent:I

.field private mConnectionState:I

.field private final mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDfuActionReceiver:Landroid/content/BroadcastReceiver;

.field private mDisableNotification:Z

.field private mError:I

.field private mFileType:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mImageSizeInBytes:I

.field private mImageSizeSent:Z

.field private mInitPacketSent:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mLastBytesSent:I

.field private mLastProgress:I

.field private mLastProgressTime:J

.field private final mLock:Ljava/lang/Object;

.field private mNotificationsEnabled:Z

.field private mPacketsBeforeNotification:I

.field private mPacketsSentSinceNotification:I

.field private mPartCurrent:I

.field private mPartsTotal:I

.field private mPaused:Z

.field private mReceivedData:[B

.field private mRemoteErrorOccurred:Z

.field private mRequestCompleted:Z

.field private mResetRequestSent:Z

.field private mServiceChangedIndicationsEnabled:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    const-wide v4, 0x1523785feabcd123L    # 7.580602127171364E-207

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    const-class v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    .line 600
    new-array v0, v1, [B

    .line 601
    aput-byte v3, v0, v2

    .line 600
    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    .line 602
    new-array v0, v1, [B

    .line 603
    aput-byte v1, v0, v2

    .line 602
    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    .line 604
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    .line 606
    new-array v0, v3, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    .line 607
    new-array v0, v3, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_VALIDATE:[B

    .line 608
    new-array v0, v3, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    .line 609
    new-array v0, v3, [B

    const/4 v1, 0x6

    aput-byte v1, v0, v2

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RESET:[B

    .line 612
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 613
    const/16 v1, 0x8

    aput-byte v1, v0, v2

    .line 612
    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    .line 616
    new-instance v0, Ljava/util/UUID;

    .line 617
    const-wide v2, 0x180100001000L

    .line 616
    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    .line 618
    new-instance v0, Ljava/util/UUID;

    .line 619
    const-wide v2, 0x2a0500001000L

    .line 618
    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    .line 620
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15301212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 622
    new-instance v0, Ljava/util/UUID;

    .line 623
    const-wide v2, 0x15311212efdeL

    .line 622
    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 624
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15321212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    .line 626
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x15341212efdeL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_VERSION:Ljava/util/UUID;

    .line 628
    new-instance v0, Ljava/util/UUID;

    .line 629
    const-wide v2, 0x290200001000L

    .line 628
    invoke-direct {v0, v2, v3, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 634
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->HEX_ARRAY:[C

    .line 660
    return-void

    .line 604
    :array_0
    .array-data 1
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1244
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 638
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBuffer:[B

    .line 642
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    .line 679
    const/16 v0, 0xa

    iput v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsBeforeNotification:I

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 771
    new-instance v0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;

    invoke-direct {v0, p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;-><init>(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 793
    new-instance v0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;

    invoke-direct {v0, p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;-><init>(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    .line 823
    new-instance v0, Lcom/smalife/upgrade/ble/service/DFUBaseService$3;

    invoke-direct {v0, p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService$3;-><init>(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 848
    new-instance v0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;

    invoke-direct {v0, p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;-><init>(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 1241
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgress:I

    .line 1245
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3864
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3851
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$12()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$13(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mServiceChangedIndicationsEnabled:Z

    return-void
.end method

.method static synthetic access$14(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mNotificationsEnabled:Z

    return-void
.end method

.method static synthetic access$15()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 624
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$16(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    return v0
.end method

.method static synthetic access$17(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInitPacketSent:Z

    return v0
.end method

.method static synthetic access$18(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    return v0
.end method

.method static synthetic access$19(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V
    .locals 0

    .prologue
    .line 687
    iput p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V
    .locals 0

    .prologue
    .line 652
    iput p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    return-void
.end method

.method static synthetic access$20(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsSentSinceNotification:I

    return v0
.end method

.method static synthetic access$21(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V
    .locals 0

    .prologue
    .line 693
    iput p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsSentSinceNotification:I

    return-void
.end method

.method static synthetic access$22(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsBeforeNotification:I

    return v0
.end method

.method static synthetic access$23(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeInBytes:I

    return v0
.end method

.method static synthetic access$24(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V
    .locals 0

    .prologue
    .line 3463
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->waitIfPaused()V

    return-void
.end method

.method static synthetic access$25(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    return v0
.end method

.method static synthetic access$26(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    return v0
.end method

.method static synthetic access$27(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRemoteErrorOccurred:Z

    return v0
.end method

.method static synthetic access$28(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mResetRequestSent:Z

    return v0
.end method

.method static synthetic access$29(Lcom/smalife/upgrade/ble/service/DFUBaseService;)[B
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBuffer:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$30(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$31(Lcom/smalife/upgrade/ble/service/DFUBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 0

    .prologue
    .line 3439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method static synthetic access$32(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V
    .locals 0

    .prologue
    .line 3608
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification()V

    return-void
.end method

.method static synthetic access$33(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 3855
    invoke-direct {p0, p1, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$34(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    return-void
.end method

.method static synthetic access$35(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 725
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInitPacketSent:Z

    return-void
.end method

.method static synthetic access$36(Lcom/smalife/upgrade/ble/service/DFUBaseService;[B)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    return-void
.end method

.method static synthetic access$37()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$38(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V
    .locals 0

    .prologue
    .line 692
    iput p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesConfirmed:I

    return-void
.end method

.method static synthetic access$39(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRemoteErrorOccurred:Z

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    return-void
.end method

.method static synthetic access$40()[C
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->HEX_ARRAY:[C

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    return-void
.end method

.method static synthetic access$6(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V
    .locals 0

    .prologue
    .line 729
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    return-void
.end method

.method static synthetic access$7(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3869
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 3813
    invoke-direct {p0, p1, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V
    .locals 0

    .prologue
    .line 664
    iput p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    return-void
.end method

.method private close(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 2798
    const-string v0, "Cleaning up..."

    invoke-direct {p0, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2799
    const/4 v0, 0x0

    const-string v1, "gatt.close()"

    invoke-direct {p0, v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2800
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2801
    const/4 v0, -0x5

    iput v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2802
    return-void
.end method

.method private connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 2696
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2697
    const/4 v2, 0x0

    .line 2722
    :goto_0
    return-object v2

    .line 2699
    :cond_0
    iput v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2701
    const-string v3, "Connecting to the device..."

    invoke-direct {p0, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2702
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2703
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2705
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "gatt = device.connectGatt(autoConnect = false)"

    .line 2704
    invoke-direct {p0, v4, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2707
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 2706
    invoke-virtual {v0, p0, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    .line 2713
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    :try_start_0
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2714
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_2

    .line 2715
    :cond_1
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v3, :cond_3

    .line 2716
    :cond_2
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v3, :cond_3

    .line 2713
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2719
    :catch_0
    move-exception v1

    .line 2720
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2717
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 3476
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 3499
    :goto_0
    return v1

    .line 3480
    :cond_0
    iput-boolean v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    .line 3482
    const-string v2, "Starting pairing..."

    invoke-direct {p0, v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3483
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 3484
    const-string v2, "gatt.getDevice().createBond()"

    invoke-direct {p0, v4, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3485
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    .line 3492
    .local v1, "result":Z
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3493
    :goto_2
    :try_start_1
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_3

    .line 3492
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3496
    :catch_0
    move-exception v0

    .line 3497
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3487
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "result":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 3494
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private createBondApi18(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 3509
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "createBond"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3510
    .local v0, "createBond":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 3511
    const/4 v2, 0x0

    .line 3512
    const-string v4, "gatt.getDevice().createBond() (hidden)"

    .line 3511
    invoke-direct {p0, v2, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3513
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3518
    .end local v0    # "createBond":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 3515
    :catch_0
    move-exception v1

    .line 3516
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    const-string v4, "An exception occurred while creating bond"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 3518
    goto :goto_0
.end method

.method private disconnect(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 2759
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-nez v0, :cond_0

    .line 2774
    :goto_0
    return-void

    .line 2762
    :cond_0
    const/4 v0, 0x1

    const-string v1, "Disconnecting..."

    invoke-direct {p0, v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2763
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    .line 2765
    const/4 v0, -0x4

    iput v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2767
    const-string v0, "Disconnecting from the device..."

    invoke-direct {p0, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2768
    const/4 v0, 0x0

    const-string v1, "gatt.disconnect()"

    invoke-direct {p0, v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2769
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2772
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->waitUntilDisconnected()V

    .line 2773
    const/4 v0, 0x5

    const-string v1, "Disconnected"

    invoke-direct {p0, v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x3

    const/4 v5, 0x1

    .line 2948
    if-ne p3, v5, :cond_0

    const-string v0, "notifications"

    .line 2950
    .local v0, "debugString":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_1

    .line 2951
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2951
    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2949
    .end local v0    # "debugString":Ljava/lang/String;
    :cond_0
    const-string v0, "indications"

    goto :goto_0

    .line 2954
    .restart local v0    # "debugString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 2955
    iput v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 2956
    if-ne p3, v5, :cond_2

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mNotificationsEnabled:Z

    if-nez v3, :cond_3

    .line 2957
    :cond_2
    if-ne p3, v8, :cond_4

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mServiceChangedIndicationsEnabled:Z

    if-eqz v3, :cond_4

    .line 3000
    :cond_3
    return-void

    .line 2960
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enabling "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2961
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enabling "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2962
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2961
    invoke-direct {p0, v5, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2965
    invoke-virtual {p1, p2, v5}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 2969
    sget-object v3, Lcom/smalife/upgrade/ble/service/DFUBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 2971
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-ne p3, v5, :cond_8

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_1
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 2974
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gatt.writeDescriptor("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2976
    if-ne p3, v5, :cond_9

    const-string v3, ", value=0x01-00)"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2974
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2973
    invoke-direct {p0, v7, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2978
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2982
    :try_start_0
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2983
    :goto_3
    if-ne p3, v5, :cond_5

    :try_start_1
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mNotificationsEnabled:Z

    if-eqz v3, :cond_6

    :cond_5
    if-ne p3, v8, :cond_7

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mServiceChangedIndicationsEnabled:Z

    if-nez v3, :cond_7

    .line 2984
    :cond_6
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v3, v6, :cond_7

    .line 2985
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v3, :cond_a

    .line 2986
    :cond_7
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v3, :cond_a

    .line 2982
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2992
    :goto_4
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v3, :cond_b

    .line 2993
    new-instance v3, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v3}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v3

    .line 2972
    :cond_8
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_1

    .line 2977
    :cond_9
    const-string v3, ", value=0x02-00)"

    goto :goto_2

    .line 2987
    :cond_a
    :try_start_2
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 2982
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2989
    :catch_0
    move-exception v2

    .line 2990
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2994
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_b
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v3, :cond_c

    .line 2995
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DfuException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2996
    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 2995
    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 2997
    :cond_c
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_3

    .line 2998
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2999
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2998
    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getStatusCode([BI)I
    .locals 4
    .param p1, "response"    # [B
    .param p2, "request"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/UnknownResponseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 2859
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2860
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2861
    aget-byte v0, p1, v3

    if-ne v0, p2, :cond_0

    aget-byte v0, p1, v2

    if-lt v0, v3, :cond_0

    aget-byte v0, p1, v2

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 2862
    :cond_0
    new-instance v0, Lcom/smalife/upgrade/ble/exception/UnknownResponseException;

    const-string v1, "Invalid response received"

    invoke-direct {v0, v1, p1, p2}, Lcom/smalife/upgrade/ble/exception/UnknownResponseException;-><init>(Ljava/lang/String;[BI)V

    throw v0

    .line 2864
    :cond_1
    aget-byte v0, p1, v2

    return v0
.end method

.method private initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3836
    const-string v2, "bluetooth"

    invoke-virtual {p0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 3837
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-nez v0, :cond_0

    .line 3838
    const-string v2, "Unable to initialize BluetoothManager."

    invoke-direct {p0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 3848
    :goto_0
    return v1

    .line 3842
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3843
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 3844
    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-direct {p0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3848
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x3

    const/4 v2, 0x0

    .line 3020
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v3, v4, :cond_0

    .line 3021
    new-instance v2, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 3022
    const-string v3, "Unable to read Service Changed CCCD"

    iget v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3021
    invoke-direct {v2, v3, v4}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3025
    :cond_0
    if-nez p2, :cond_2

    .line 3063
    :cond_1
    :goto_0
    return v2

    .line 3029
    :cond_2
    sget-object v3, Lcom/smalife/upgrade/ble/service/DFUBaseService;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 3030
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_1

    .line 3033
    iput-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    .line 3034
    iput v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3036
    const-string v2, "Reading Service Changed CCCD value..."

    invoke-direct {p0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 3037
    const/4 v2, 0x1

    .line 3038
    const-string v3, "Reading Service Changed CCCD value..."

    .line 3037
    invoke-direct {p0, v2, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3040
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 3044
    :try_start_0
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3045
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    if-nez v2, :cond_3

    .line 3046
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v2, v4, :cond_3

    .line 3047
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_4

    .line 3048
    :cond_3
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v2, :cond_4

    .line 3044
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3054
    :goto_2
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_5

    .line 3055
    new-instance v2, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v2}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v2

    .line 3049
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 3044
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3051
    :catch_0
    move-exception v1

    .line 3052
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3056
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v2, :cond_6

    .line 3057
    new-instance v2, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v3, "Unable to read Service Changed CCCD"

    .line 3058
    iget v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3057
    invoke-direct {v2, v3, v4}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3059
    :cond_6
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v2, v4, :cond_7

    .line 3060
    new-instance v2, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 3061
    const-string v3, "Unable to read Service Changed CCCD"

    iget v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3060
    invoke-direct {v2, v3, v4}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3063
    :cond_7
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mServiceChangedIndicationsEnabled:Z

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3871
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3852
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 3856
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3857
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3866
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3861
    sget-object v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    return-void
.end method

.method private static makeDfuActionIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 1248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1249
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1250
    return-object v0
.end method

.method private openInputStream(ILjava/lang/String;II)Ljava/io/InputStream;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mbrSize"    # I
    .param p4, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 2673
    .local v1, "is":Ljava/io/InputStream;
    const-string v2, "application/zip"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2674
    new-instance v2, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    invoke-direct {v2, v1, p3, p4}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object v1, v2

    .line 2680
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 2675
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 2676
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2677
    .local v0, "firstByte":I
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 2678
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    .line 2679
    new-instance v2, Lcom/smalife/upgrade/ble/utils/HexInputStream;

    invoke-direct {v2, v1, p3}, Lcom/smalife/upgrade/ble/utils/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v2

    goto :goto_0
.end method

.method private openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 9
    .param p1, "stream"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mbrSize"    # I
    .param p4, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2636
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 2637
    .local v8, "is":Ljava/io/InputStream;
    const-string v0, "application/zip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2638
    new-instance v0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    invoke-direct {v0, v8, p3, p4}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object v8, v0

    .line 2653
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v8

    .line 2640
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v1

    .line 2641
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2644
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2645
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2647
    .local v7, "fileName":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2648
    new-instance v0, Lcom/smalife/upgrade/ble/utils/HexInputStream;

    invoke-direct {v0, v8, p3}, Lcom/smalife/upgrade/ble/utils/HexInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2651
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v0

    .line 2648
    goto :goto_0

    .line 2650
    .end local v7    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 2651
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2652
    throw v0

    .line 2651
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mbrSize"    # I
    .param p4, "types"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2612
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2613
    .local v0, "is":Ljava/io/InputStream;
    const-string v1, "application/zip"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2614
    new-instance v1, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    invoke-direct {v1, v0, p3, p4}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object v0, v1

    .line 2617
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 2615
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2616
    new-instance v1, Lcom/smalife/upgrade/ble/utils/HexInputStream;

    invoke-direct {v1, v0, p3}, Lcom/smalife/upgrade/ble/utils/HexInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method private parse([B)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 3875
    if-nez p1, :cond_0

    .line 3876
    const-string v4, ""

    .line 3890
    :goto_0
    return-object v4

    .line 3878
    :cond_0
    array-length v1, p1

    .line 3879
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 3880
    const-string v4, ""

    goto :goto_0

    .line 3882
    :cond_1
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [C

    .line 3883
    .local v2, "out":[C
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 3890
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 3884
    :cond_2
    aget-byte v4, p1, v0

    and-int/lit16 v3, v4, 0xff

    .line 3885
    .local v3, "v":I
    mul-int/lit8 v4, v0, 0x3

    sget-object v5, Lcom/smalife/upgrade/ble/service/DFUBaseService;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 3886
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/smalife/upgrade/ble/service/DFUBaseService;->HEX_ARRAY:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 3887
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_3

    .line 3888
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    const/16 v5, 0x2d

    aput-char v5, v2, v4

    .line 3883
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readNotificationResponse()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x3

    .line 3582
    const/4 v1, 0x0

    iput v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3584
    :try_start_0
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3585
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    if-nez v1, :cond_0

    .line 3586
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v1, v3, :cond_0

    .line 3587
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    .line 3588
    :cond_0
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v1, :cond_1

    .line 3584
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3594
    :goto_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_2

    .line 3595
    new-instance v1, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 3589
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3584
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3591
    :catch_0
    move-exception v0

    .line 3592
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3596
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v1, :cond_3

    .line 3597
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v2, "Unable to write Op Code"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3598
    :cond_3
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v1, v3, :cond_4

    .line 3599
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    const-string v2, "Unable to write Op Code"

    .line 3600
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3599
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3601
    :cond_4
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    return-object v1
.end method

.method private readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x3

    const/4 v1, 0x0

    .line 2884
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v2, v4, :cond_0

    .line 2885
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 2886
    const-string v2, "Unable to read version number"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2885
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2888
    :cond_0
    if-nez p2, :cond_1

    .line 2923
    :goto_0
    return v1

    .line 2891
    :cond_1
    iput-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 2892
    iput v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 2894
    const-string v2, "Reading DFU version number..."

    invoke-direct {p0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2895
    const/4 v2, 0x1

    const-string v3, "Reading DFU version number..."

    invoke-direct {p0, v2, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2897
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2898
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 2902
    :try_start_0
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    if-nez v2, :cond_3

    .line 2904
    :cond_2
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v2, v4, :cond_3

    .line 2905
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_4

    .line 2906
    :cond_3
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v2, :cond_4

    .line 2902
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2914
    :goto_2
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_5

    .line 2915
    new-instance v1, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 2907
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    .line 2908
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 2902
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2911
    :catch_0
    move-exception v0

    .line 2912
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2916
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v2, :cond_6

    .line 2917
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v2, "Unable to read version number"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2918
    :cond_6
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v2, v4, :cond_7

    .line 2919
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 2920
    const-string v2, "Unable to read version number"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 2919
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2924
    :cond_7
    const/16 v2, 0x12

    .line 2923
    invoke-virtual {p2, v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2825
    if-nez p2, :cond_0

    .line 2826
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 2827
    :cond_0
    const-string v3, "gatt.refresh() (hidden)"

    invoke-direct {p0, v5, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2833
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "refresh"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2834
    .local v1, "refresh":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 2835
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2836
    .local v2, "success":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Refreshing result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2843
    .end local v1    # "refresh":Ljava/lang/reflect/Method;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return-void

    .line 2838
    :catch_0
    move-exception v0

    .line 2839
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "An exception occurred while refreshing device"

    invoke-direct {p0, v3, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2840
    const/16 v3, 0xf

    const-string v4, "Refreshing failed"

    invoke-direct {p0, v3, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 3530
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 3562
    :goto_0
    return v2

    .line 3533
    :cond_0
    const-string v3, "Removing bond information..."

    invoke-direct {p0, v2, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3534
    const/4 v2, 0x0

    .line 3540
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3541
    .local v1, "removeBond":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 3542
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    .line 3543
    const/4 v3, 0x0

    .line 3544
    const-string v4, "gatt.getDevice().removeBond() (hidden)"

    .line 3543
    invoke-direct {p0, v3, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3545
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3549
    :try_start_1
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3550
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v3, :cond_3

    .line 3549
    :cond_1
    monitor-exit v4

    .line 3557
    :cond_2
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 3551
    :cond_3
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 3549
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3553
    :catch_0
    move-exception v0

    .line 3554
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 3558
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "removeBond":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 3559
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    const-string v4, "An exception occurred while removing bond information"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendErrorBroadcast(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 3793
    new-instance v0, Landroid/content/Intent;

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3794
    .local v0, "broadcast":Landroid/content/Intent;
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    .line 3795
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    and-int/lit16 v2, p1, -0x4001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3796
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3809
    :goto_0
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3810
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3811
    return-void

    .line 3797
    :cond_0
    const v1, 0x8000

    and-int/2addr v1, p1

    if-lez v1, :cond_1

    .line 3799
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    const v2, -0x8001

    and-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3801
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3802
    :cond_1
    and-int/lit16 v1, p1, 0x2000

    if-lez v1, :cond_2

    .line 3803
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3804
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3806
    :cond_2
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3807
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendLogBroadcast(ILjava/lang/String;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3814
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DFU] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3815
    .local v1, "fullMessage":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3816
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3817
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3818
    const-string v2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3819
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3820
    return-void
.end method

.method private sendProgressBroadcast(I)V
    .locals 12
    .param p1, "progress"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 3773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3774
    .local v2, "now":J
    iget-wide v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgressTime:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    iget v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastBytesSent:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 3775
    iget-wide v8, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgressTime:J

    sub-long v8, v2, v8

    long-to-float v7, v8

    div-float v4, v6, v7

    .line 3777
    .local v4, "speed":F
    :goto_0
    iget-wide v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mStartTime:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    int-to-float v5, v5

    .line 3778
    iget-wide v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    div-float v0, v5, v6

    .line 3779
    .local v0, "avgSpeed":F
    :goto_1
    iput-wide v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgressTime:J

    .line 3780
    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    iput v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastBytesSent:I

    .line 3782
    new-instance v1, Landroid/content/Intent;

    const-string v5, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3783
    .local v1, "broadcast":Landroid/content/Intent;
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3784
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3785
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    iget v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartCurrent:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3786
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    iget v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartsTotal:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3787
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 3788
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 3789
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 3790
    return-void

    .end local v0    # "avgSpeed":F
    .end local v1    # "broadcast":Landroid/content/Intent;
    .end local v4    # "speed":F
    :cond_0
    move v4, v5

    .line 3776
    goto :goto_0

    .restart local v4    # "speed":F
    :cond_1
    move v0, v5

    .line 3778
    goto :goto_1
.end method

.method private setNumberOfPackets([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "value"    # I

    .prologue
    .line 2591
    const/4 v0, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2592
    const/4 v0, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2593
    return-void
.end method

.method private terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "error"    # I

    .prologue
    .line 2736
    iget v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eqz v0, :cond_0

    .line 2738
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->disconnect(Landroid/bluetooth/BluetoothGatt;)V

    .line 2742
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 2744
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 2745
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    .line 2746
    return-void
.end method

.method private updateProgressNotification()V
    .locals 3

    .prologue
    .line 3609
    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeInBytes:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 3610
    .local v0, "progress":I
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgress:I

    if-ne v1, v0, :cond_0

    .line 3615
    :goto_0
    return-void

    .line 3613
    :cond_0
    iput v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgress:I

    .line 3614
    invoke-direct {p0, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    goto :goto_0
.end method

.method private updateProgressNotification(I)V
    .locals 12
    .param p1, "progress"    # I

    .prologue
    const/high16 v11, 0x8000000

    const/16 v10, 0x1000

    const/4 v9, 0x1

    .line 3632
    if-ge p1, v10, :cond_1

    .line 3633
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendProgressBroadcast(I)V

    .line 3637
    :goto_0
    iget-boolean v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDisableNotification:Z

    if-eqz v7, :cond_2

    .line 3739
    :cond_0
    :goto_1
    return-void

    .line 3635
    :cond_1
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendErrorBroadcast(I)V

    goto :goto_0

    .line 3641
    :cond_2
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 3642
    .local v2, "deviceAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceName:Ljava/lang/String;

    .line 3648
    .local v3, "deviceName":Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v7, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 3649
    const v8, 0x1080088

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 3650
    invoke-virtual {v7, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 3652
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v7, -0x777778

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 3711
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getNotificationTarget()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3712
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3713
    const-string v7, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3714
    const-string v7, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3715
    const-string v7, "no.nordicsemi.android.dfu.extra.EXTRA_PROGRESS"

    invoke-virtual {v4, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3718
    const/4 v7, 0x0

    invoke-static {p0, v7, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3720
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 3723
    const/4 v7, -0x7

    if-eq p1, v7, :cond_0

    const/4 v7, -0x6

    if-eq p1, v7, :cond_0

    .line 3724
    if-ge p1, v10, :cond_0

    .line 3725
    new-instance v0, Landroid/content/Intent;

    const-string v7, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3726
    .local v0, "abortIntent":Landroid/content/Intent;
    const-string v7, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3728
    invoke-static {p0, v9, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 3730
    .local v5, "pendingAbortIntent":Landroid/app/PendingIntent;
    const v7, 0x7f0200c2

    .line 3731
    const v8, 0x7f090269

    invoke-virtual {p0, v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3730
    invoke-virtual {v1, v7, v8, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 3643
    .end local v0    # "abortIntent":Landroid/content/Intent;
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pendingAbortIntent":Landroid/app/PendingIntent;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    const v7, 0x7f090280

    invoke-virtual {p0, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "packetCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x3

    .line 3385
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 3386
    const/4 v3, 0x0

    iput v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3388
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBuffer:[B

    .line 3390
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 3391
    .local v2, "size":I
    const/4 v3, 0x1

    .line 3392
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending firmware to characteristic "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3392
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3391
    invoke-direct {p0, v3, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3394
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_0
    .catch Lcom/smalife/upgrade/ble/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3403
    :try_start_1
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3404
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    if-nez v3, :cond_0

    .line 3405
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v3, v6, :cond_0

    .line 3406
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v3, :cond_1

    .line 3407
    :cond_0
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v3, :cond_1

    .line 3403
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3413
    :goto_1
    iget-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v3, :cond_2

    .line 3414
    new-instance v3, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v3}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v3

    .line 3395
    .end local v2    # "size":I
    :catch_0
    move-exception v1

    .line 3396
    .local v1, "e":Lcom/smalife/upgrade/ble/exception/HexFileValidationException;
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v4, "HEX file not valid"

    const/16 v5, 0x1003

    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 3397
    .end local v1    # "e":Lcom/smalife/upgrade/ble/exception/HexFileValidationException;
    :catch_1
    move-exception v1

    .line 3398
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v4, "Error while reading file"

    .line 3399
    const/16 v5, 0x1004

    .line 3398
    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 3408
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "size":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3403
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3410
    :catch_2
    move-exception v1

    .line 3411
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping interrupted"

    invoke-direct {p0, v3, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3415
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v3, :cond_3

    .line 3416
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v4, "Uploading Firmware Image failed"

    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 3417
    :cond_3
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v3, v6, :cond_4

    .line 3418
    new-instance v3, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 3419
    const-string v4, "Uploading Firmware Image failed: device disconnected"

    .line 3420
    iget v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3418
    invoke-direct {v3, v4, v5}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 3422
    :cond_4
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    return-object v3
.end method

.method private waitIfPaused()V
    .locals 3

    .prologue
    .line 3464
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3466
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3464
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3472
    return-void

    .line 3467
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3468
    :catch_0
    move-exception v0

    .line 3469
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3464
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private waitUntilDisconnected()V
    .locals 3

    .prologue
    .line 2782
    :try_start_0
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2783
    :goto_0
    :try_start_1
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v1, :cond_1

    .line 2782
    :cond_0
    monitor-exit v2

    .line 2789
    :goto_1
    return-void

    .line 2784
    :cond_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2782
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2786
    :catch_0
    move-exception v0

    .line 2787
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "imageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x3

    const/4 v3, 0x0

    .line 3182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 3183
    iput v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3184
    iput-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    .line 3187
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 3188
    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 3190
    const/16 v1, 0x14

    .line 3189
    invoke-virtual {p2, p3, v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 3191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing to characteristic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3192
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3191
    invoke-direct {p0, v5, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gatt.writeCharacteristic("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3193
    invoke-direct {p0, v3, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3195
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 3199
    :try_start_0
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    if-nez v1, :cond_0

    .line 3201
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v1, v4, :cond_0

    .line 3202
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    .line 3203
    :cond_0
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v1, :cond_1

    .line 3199
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3209
    :goto_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_2

    .line 3210
    new-instance v1, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 3204
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3199
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3206
    :catch_0
    move-exception v0

    .line 3207
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3211
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v1, :cond_3

    .line 3212
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v2, "Unable to write Image Size"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3213
    :cond_3
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v1, v4, :cond_4

    .line 3214
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    const-string v2, "Unable to write Image Size"

    .line 3215
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3214
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3216
    :cond_4
    return-void
.end method

.method private writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "softDeviceImageSize"    # I
    .param p4, "bootloaderImageSize"    # I
    .param p5, "appImageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x3

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 3253
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 3254
    iput v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3255
    iput-boolean v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    .line 3258
    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 3259
    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 3260
    invoke-virtual {p2, p3, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 3263
    const/4 v1, 0x4

    .line 3262
    invoke-virtual {p2, p4, v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 3265
    const/16 v1, 0x8

    .line 3264
    invoke-virtual {p2, p5, v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 3266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing to characteristic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3266
    invoke-direct {p0, v5, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gatt.writeCharacteristic("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3268
    invoke-direct {p0, v3, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3270
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 3274
    :try_start_0
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    if-nez v1, :cond_0

    .line 3276
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v1, v4, :cond_0

    .line 3277
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    .line 3278
    :cond_0
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v1, :cond_1

    .line 3274
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3284
    :goto_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_2

    .line 3285
    new-instance v1, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 3279
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3274
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3281
    :catch_0
    move-exception v0

    .line 3282
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3286
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v1, :cond_3

    .line 3287
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v2, "Unable to write Image Sizes"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3288
    :cond_3
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v1, v4, :cond_4

    .line 3289
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 3290
    const-string v2, "Unable to write Image Sizes"

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3289
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3291
    :cond_4
    return-void
.end method

.method private writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "buffer"    # [B
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    .line 3319
    move-object v1, p3

    .line 3320
    .local v1, "locBuffer":[B
    array-length v2, p3

    if-eq v2, p4, :cond_0

    .line 3321
    new-array v1, p4, [B

    .line 3322
    invoke-static {p3, v4, v1, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3324
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 3325
    iput v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3326
    iput-boolean v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInitPacketSent:Z

    .line 3329
    invoke-virtual {p2, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 3330
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 3331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending init packet (Value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->parse([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 3332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing to characteristic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3332
    invoke-direct {p0, v6, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3334
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gatt.writeCharacteristic("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3334
    invoke-direct {p0, v4, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3336
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 3340
    :try_start_0
    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3341
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInitPacketSent:Z

    if-nez v2, :cond_1

    .line 3342
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v2, v5, :cond_1

    .line 3343
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_2

    .line 3344
    :cond_1
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v2, :cond_2

    .line 3340
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3350
    :goto_1
    iget-boolean v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v2, :cond_3

    .line 3351
    new-instance v2, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v2}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v2

    .line 3345
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3340
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Sleeping interrupted"

    invoke-direct {p0, v2, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3352
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v2, :cond_4

    .line 3353
    new-instance v2, Lcom/smalife/upgrade/ble/exception/DfuException;

    const-string v3, "Unable to write Init DFU Parameters"

    .line 3354
    iget v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3353
    invoke-direct {v2, v3, v4}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3355
    :cond_4
    iget v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v2, v5, :cond_5

    .line 3356
    new-instance v2, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    .line 3357
    const-string v3, "Unable to write Init DFU Parameters"

    iget v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3356
    invoke-direct {v2, v3, v4}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 3358
    :cond_5
    return-void
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3089
    aget-byte v1, p3, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 3090
    aget-byte v1, p3, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3091
    .local v0, "reset":Z
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 3092
    return-void

    .line 3089
    .end local v0    # "reset":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "value"    # [B
    .param p4, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;,
            Lcom/smalife/upgrade/ble/exception/DfuException;,
            Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x3

    const/4 v4, 0x0

    .line 3120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mReceivedData:[B

    .line 3121
    iput v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3122
    iput-boolean v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    .line 3129
    iput-boolean p4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mResetRequestSent:Z

    .line 3131
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 3132
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing to characteristic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3132
    invoke-direct {p0, v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gatt.writeCharacteristic("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3134
    invoke-direct {p0, v4, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 3136
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 3140
    :try_start_0
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3141
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    if-nez v1, :cond_0

    .line 3142
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-ne v1, v5, :cond_0

    .line 3143
    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_1

    .line 3144
    :cond_0
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    if-nez v1, :cond_1

    .line 3140
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3150
    :goto_1
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v1, :cond_2

    .line 3151
    new-instance v1, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;

    invoke-direct {v1}, Lcom/smalife/upgrade/ble/exception/UploadAbortedException;-><init>()V

    throw v1

    .line 3145
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3147
    :catch_0
    move-exception v0

    .line 3148
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Sleeping interrupted"

    invoke-direct {p0, v1, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mResetRequestSent:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-eqz v1, :cond_3

    .line 3153
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DfuException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to write Op Code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3154
    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 3153
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3155
    :cond_3
    iget-boolean v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mResetRequestSent:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    if-eq v1, v5, :cond_4

    .line 3156
    new-instance v1, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to write Op Code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3157
    aget-byte v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 3156
    invoke-direct {v1, v2, v3}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3158
    :cond_4
    return-void
.end method

.method private writePacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "buffer"    # [B
    .param p4, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 3442
    move-object v0, p3

    .line 3443
    .local v0, "locBuffer":[B
    array-length v1, p3

    if-eq v1, p4, :cond_0

    .line 3444
    new-array v0, p4, [B

    .line 3445
    invoke-static {p3, v2, v0, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3447
    :cond_0
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 3448
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 3461
    return-void
.end method


# virtual methods
.method protected abstract getNotificationTarget()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 1257
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 1258
    invoke-virtual {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/smalife/MyApplication;

    iput-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->application:Lcom/smalife/MyApplication;

    .line 1260
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->initialize()Z

    .line 1263
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    .line 1264
    .local v3, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->makeDfuActionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 1265
    .local v0, "actionFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1266
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1275
    new-instance v2, Landroid/content/IntentFilter;

    .line 1276
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 1275
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1279
    new-instance v1, Landroid/content/IntentFilter;

    .line 1280
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 1279
    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v1, "bondFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1282
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1286
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 1289
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 1290
    .local v0, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1292
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDfuActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1293
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1294
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBondStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1295
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 64
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1300
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v47

    .line 1304
    .local v47, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1305
    .local v15, "deviceAddress":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1307
    .local v16, "deviceName":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_NOTIFICATION"

    const/16 v60, 0x0

    .line 1306
    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 1308
    .local v18, "disableNotification":Z
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1309
    .local v24, "filePath":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/net/Uri;

    .line 1310
    .local v27, "fileUri":Landroid/net/Uri;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

    const/16 v60, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1311
    .local v25, "fileResId":I
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1312
    .local v31, "initFilePath":Ljava/lang/String;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/net/Uri;

    .line 1313
    .local v33, "initFileUri":Landroid/net/Uri;
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

    const/16 v60, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 1314
    .local v32, "initFileResId":I
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/16 v60, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 1316
    .local v26, "fileType":I
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->TAG:Ljava/lang/String;

    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "DfuServiceInitiator.java deviceAddress = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1317
    const-string v61, ", deviceName = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", disableNotification = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1318
    move-object/from16 v0, v60

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", fileType = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1319
    const-string v61, ", fileUri = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", filePath = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1320
    const-string v61, ", fileResId = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", initFileUri = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1321
    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", initFilePath = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1322
    const-string v61, ", initFileResId = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 1316
    move-object/from16 v0, v60

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    if-eqz v24, :cond_0

    if-nez v26, :cond_0

    .line 1325
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v60, "zip"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v26, 0x0

    .line 1327
    :cond_0
    :goto_0
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1328
    .local v40, "mimeType":Ljava/lang/String;
    if-eqz v40, :cond_4

    .line 1331
    :goto_1
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    const/16 v60, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartCurrent:I

    .line 1332
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    const/16 v60, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartsTotal:I

    .line 1335
    and-int/lit8 v6, v26, -0x8

    if-gtz v6, :cond_1

    .line 1336
    const-string v6, "application/zip"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "application/octet-stream"

    .line 1337
    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1338
    :cond_1
    const-string v6, "File type or file mime-type not supported"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logw(Ljava/lang/String;)V

    .line 1339
    const/16 v6, 0xf

    .line 1340
    const-string v60, "File type or file mime-type not supported"

    .line 1339
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1341
    const/16 v6, 0x1009

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendErrorBroadcast(I)V

    .line 2577
    :cond_2
    :goto_2
    return-void

    .line 1326
    .end local v40    # "mimeType":Ljava/lang/String;
    :cond_3
    const/16 v26, 0x4

    goto :goto_0

    .line 1329
    .restart local v40    # "mimeType":Ljava/lang/String;
    :cond_4
    if-nez v26, :cond_5

    const-string v40, "application/zip"

    goto :goto_1

    .line 1330
    :cond_5
    const-string v40, "application/octet-stream"

    goto :goto_1

    .line 1344
    :cond_6
    const-string v6, "application/octet-stream"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1345
    const/4 v6, 0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_7

    const/4 v6, 0x2

    move/from16 v0, v26

    if-eq v0, v6, :cond_7

    .line 1346
    const/4 v6, 0x4

    move/from16 v0, v26

    if-eq v0, v6, :cond_7

    .line 1347
    const-string v6, "Unable to determine file type"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logw(Ljava/lang/String;)V

    .line 1348
    const/16 v6, 0xf

    const-string v60, "Unable to determine file type"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1349
    const/16 v6, 0x1009

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendErrorBroadcast(I)V

    goto :goto_2

    .line 1353
    :cond_7
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    .line 1354
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceName:Ljava/lang/String;

    .line 1355
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDisableNotification:Z

    .line 1356
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I

    .line 1357
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    .line 1358
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesConfirmed:I

    .line 1359
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsSentSinceNotification:I

    .line 1360
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    .line 1361
    const-wide/16 v60, 0x0

    move-wide/from16 v0, v60

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgressTime:J

    .line 1362
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    .line 1363
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPaused:Z

    .line 1364
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mNotificationsEnabled:Z

    .line 1365
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mResetRequestSent:Z

    .line 1366
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRequestCompleted:Z

    .line 1367
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeSent:Z

    .line 1368
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRemoteErrorOccurred:Z

    .line 1373
    const-string v6, "settings_packet_receipt_notification_enabled"

    .line 1374
    const/16 v60, 0x1

    .line 1372
    move-object/from16 v0, v47

    move/from16 v1, v60

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 1377
    .local v46, "packetReceiptNotificationEnabled":Z
    const-string v6, "settings_number_of_packets"

    .line 1378
    const/16 v60, 0xc

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    .line 1376
    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1381
    .local v56, "value":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v44

    .line 1382
    .local v44, "numberOfPackets":I
    if-ltz v44, :cond_8

    const v6, 0xffff

    move/from16 v0, v44

    if-le v0, v6, :cond_9

    .line 1383
    :cond_8
    const/16 v44, 0xc

    .line 1387
    :cond_9
    :goto_3
    if-nez v46, :cond_a

    .line 1388
    const/16 v44, 0x0

    .line 1389
    :cond_a
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsBeforeNotification:I

    .line 1396
    const-string v6, "settings_mbr_size"

    .line 1397
    const/16 v60, 0x1000

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    .line 1396
    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1400
    :try_start_1
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v39

    .line 1401
    .local v39, "mbrSize":I
    if-gez v39, :cond_b

    .line 1402
    const/16 v39, 0x0

    .line 1426
    :cond_b
    :goto_4
    const-string v6, "settings_assume_dfu_mode"

    const/16 v60, 0x0

    .line 1425
    move-object/from16 v0, v47

    move/from16 v1, v60

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1428
    .local v12, "assumeDfuMode":Z
    const/4 v6, 0x1

    const-string v60, "DFU service started"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1434
    const/16 v36, 0x0

    .line 1435
    .local v36, "is":Ljava/io/InputStream;
    const/16 v34, 0x0

    .line 1440
    .local v34, "initIs":Ljava/io/InputStream;
    const/4 v6, 0x1

    :try_start_2
    const-string v60, "Opening file..."

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1441
    if-eqz v27, :cond_d

    .line 1442
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    move/from16 v3, v39

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->openInputStream(Landroid/net/Uri;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v36

    .line 1449
    :cond_c
    :goto_5
    if-eqz v33, :cond_f

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v34

    move-object/from16 v35, v34

    .line 1460
    .end local v34    # "initIs":Ljava/io/InputStream;
    .local v35, "initIs":Ljava/io/InputStream;
    :goto_6
    :try_start_3
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 1461
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->available()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeInBytes:I

    .line 1463
    .local v30, "imageSizeInBytes":I
    rem-int/lit8 v6, v30, 0x4

    if-eqz v6, :cond_11

    .line 1464
    new-instance v6, Lcom/smalife/upgrade/ble/exception/SizeValidationException;

    .line 1465
    const-string v60, "The new firmware is not word-aligned."

    .line 1464
    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Lcom/smalife/upgrade/ble/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_25
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1503
    .end local v30    # "imageSizeInBytes":I
    :catch_0
    move-exception v19

    move-object/from16 v34, v35

    .line 1504
    .end local v35    # "initIs":Ljava/io/InputStream;
    .local v19, "e":Ljava/lang/SecurityException;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    :goto_7
    :try_start_4
    const-string v6, "A security exception occurred while opening file"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1505
    const/16 v6, 0x1001

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 2573
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 1384
    .end local v12    # "assumeDfuMode":Z
    .end local v19    # "e":Ljava/lang/SecurityException;
    .end local v34    # "initIs":Ljava/io/InputStream;
    .end local v36    # "is":Ljava/io/InputStream;
    .end local v39    # "mbrSize":I
    .end local v44    # "numberOfPackets":I
    :catch_2
    move-exception v19

    .line 1385
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/16 v44, 0xc

    .restart local v44    # "numberOfPackets":I
    goto/16 :goto_3

    .line 1403
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v19

    .line 1404
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/16 v39, 0x1000

    .restart local v39    # "mbrSize":I
    goto/16 :goto_4

    .line 1443
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "assumeDfuMode":Z
    .restart local v34    # "initIs":Ljava/io/InputStream;
    .restart local v36    # "is":Ljava/io/InputStream;
    :cond_d
    if-eqz v24, :cond_e

    .line 1444
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v40

    move/from16 v3, v39

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->openInputStream(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v36

    .line 1445
    goto :goto_5

    :cond_e
    if-lez v25, :cond_c

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v40

    move/from16 v3, v39

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->openInputStream(ILjava/lang/String;II)Ljava/io/InputStream;

    move-result-object v36

    goto :goto_5

    .line 1452
    :cond_f
    if-eqz v31, :cond_10

    .line 1454
    new-instance v35, Ljava/io/FileInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1455
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v35    # "initIs":Ljava/io/InputStream;
    goto :goto_6

    .end local v35    # "initIs":Ljava/io/InputStream;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    :cond_10
    if-lez v32, :cond_40

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_28
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_6 .. :try_end_6} :catch_27
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v34

    move-object/from16 v35, v34

    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v35    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 1468
    .restart local v30    # "imageSizeInBytes":I
    :cond_11
    if-nez v26, :cond_12

    :try_start_7
    const-string v6, "application/zip"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1469
    move-object/from16 v0, v36

    check-cast v0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    move-object/from16 v59, v0

    .line 1470
    .local v59, "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getContentType()I

    move-result v26

    .line 1472
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :cond_12
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mFileType:I

    .line 1474
    const-string v6, "application/zip"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1475
    move-object/from16 v0, v36

    check-cast v0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    move-object/from16 v59, v0

    .line 1478
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    and-int/lit8 v6, v26, 0x4

    if-lez v6, :cond_13

    .line 1479
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationImageSize()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_13

    .line 1480
    new-instance v6, Lcom/smalife/upgrade/ble/exception/SizeValidationException;

    .line 1481
    const-string v60, "Application firmware is not word-aligned."

    .line 1480
    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Lcom/smalife/upgrade/ble/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_25
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1507
    .end local v30    # "imageSizeInBytes":I
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_4
    move-exception v19

    move-object/from16 v34, v35

    .line 1508
    .end local v35    # "initIs":Ljava/io/InputStream;
    .local v19, "e":Ljava/io/FileNotFoundException;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    :goto_8
    :try_start_8
    const-string v6, "An exception occurred while opening file"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1509
    const/16 v6, 0x1001

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 2573
    :catch_5
    move-exception v6

    goto/16 :goto_2

    .line 1482
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v30    # "imageSizeInBytes":I
    .restart local v35    # "initIs":Ljava/io/InputStream;
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :cond_13
    and-int/lit8 v6, v26, 0x2

    if-lez v6, :cond_14

    .line 1483
    :try_start_a
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderImageSize()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_14

    .line 1484
    new-instance v6, Lcom/smalife/upgrade/ble/exception/SizeValidationException;

    .line 1485
    const-string v60, "Bootloader firmware is not word-aligned."

    .line 1484
    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Lcom/smalife/upgrade/ble/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_25
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1511
    .end local v30    # "imageSizeInBytes":I
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_6
    move-exception v19

    move-object/from16 v34, v35

    .line 1512
    .end local v35    # "initIs":Ljava/io/InputStream;
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/SizeValidationException;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    :goto_9
    :try_start_b
    const-string v6, "Firmware not word-aligned"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1513
    const/16 v6, 0x100c

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_2

    .line 2573
    :catch_7
    move-exception v6

    goto/16 :goto_2

    .line 1486
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/SizeValidationException;
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v30    # "imageSizeInBytes":I
    .restart local v35    # "initIs":Ljava/io/InputStream;
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :cond_14
    and-int/lit8 v6, v26, 0x1

    if-lez v6, :cond_15

    .line 1487
    :try_start_d
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceImageSize()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_15

    .line 1488
    new-instance v6, Lcom/smalife/upgrade/ble/exception/SizeValidationException;

    .line 1489
    const-string v60, "Soft Device firmware is not word-aligned."

    .line 1488
    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Lcom/smalife/upgrade/ble/exception/SizeValidationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_25
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1515
    .end local v30    # "imageSizeInBytes":I
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_8
    move-exception v19

    move-object/from16 v34, v35

    .line 1516
    .end local v35    # "initIs":Ljava/io/InputStream;
    .local v19, "e":Ljava/io/IOException;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    :goto_a
    :try_start_e
    const-string v6, "An exception occurred while calculating file size"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1517
    const/16 v6, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_2

    .line 2573
    :catch_9
    move-exception v6

    goto/16 :goto_2

    .line 1491
    .end local v19    # "e":Ljava/io/IOException;
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v30    # "imageSizeInBytes":I
    .restart local v35    # "initIs":Ljava/io/InputStream;
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :cond_15
    const/4 v6, 0x4

    move/from16 v0, v26

    if-ne v0, v6, :cond_16

    .line 1492
    :try_start_10
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1493
    new-instance v34, Ljava/io/ByteArrayInputStream;

    .line 1494
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v6

    .line 1493
    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_25
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1501
    .end local v35    # "initIs":Ljava/io/InputStream;
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    :goto_b
    const/4 v6, 0x5

    :try_start_11
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Image file opened ("

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeInBytes:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " bytes in total)"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 1501
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_28
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_11 .. :try_end_11} :catch_27
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1528
    :try_start_12
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1530
    const/4 v6, 0x0

    :try_start_13
    const-string v60, "wait(1000)"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1531
    const-wide/16 v60, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_24
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1528
    :goto_c
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1542
    const/4 v6, 0x1

    :try_start_15
    const-string v60, "Connecting to DFU target..."

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1543
    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    .line 1545
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->connect(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v7

    .line 1547
    .local v7, "gatt":Landroid/bluetooth/BluetoothGatt;
    if-nez v7, :cond_18

    .line 1548
    const-string v6, "Bluetooth adapter disabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 1549
    const/16 v6, 0x14

    const-string v60, "Bluetooth adapter disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1550
    const/16 v6, 0x100a

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_2

    .line 2573
    :catch_a
    move-exception v6

    goto/16 :goto_2

    .line 1496
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v35    # "initIs":Ljava/io/InputStream;
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :cond_16
    :try_start_17
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getSystemInit()[B

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1497
    new-instance v34, Ljava/io/ByteArrayInputStream;

    .line 1498
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->getSystemInit()[B

    move-result-object v6

    .line 1497
    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Lcom/smalife/upgrade/ble/exception/SizeValidationException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_25
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .end local v35    # "initIs":Ljava/io/InputStream;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_b

    .line 1519
    .end local v30    # "imageSizeInBytes":I
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_b
    move-exception v19

    .line 1520
    .local v19, "e":Ljava/lang/Exception;
    :goto_d
    :try_start_18
    const-string v6, "An exception occurred while opening files. Did you set the firmware file?"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1522
    const/16 v6, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_19
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c

    goto/16 :goto_2

    .line 2573
    :catch_c
    move-exception v6

    goto/16 :goto_2

    .line 1528
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v30    # "imageSizeInBytes":I
    :catchall_0
    move-exception v6

    :try_start_1a
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    throw v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 2567
    .end local v30    # "imageSizeInBytes":I
    :catchall_1
    move-exception v6

    .line 2570
    :goto_e
    const/16 v60, 0x0

    :try_start_1c
    move-object/from16 v0, v60

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_17

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1f

    .line 2576
    :cond_17
    :goto_f
    throw v6

    .line 1553
    .restart local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v30    # "imageSizeInBytes":I
    :cond_18
    :try_start_1d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    if-lez v6, :cond_19

    .line 1554
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    const v60, -0x8001

    and-int v21, v6, v60

    .line 1555
    .local v21, "error":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "An error occurred while connecting to the device:"

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1556
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1555
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 1557
    const/16 v6, 0x14

    .line 1558
    const-string v60, "Connection failed (0x%02X): %s"

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    aput-object v63, v61, v62

    const/16 v62, 0x1

    .line 1559
    invoke-static/range {v21 .. v21}, Lcom/smalife/upgrade/ble/utils/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v63

    aput-object v63, v61, v62

    .line 1557
    invoke-static/range {v60 .. v61}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mError:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    goto/16 :goto_2

    .line 2573
    :catch_d
    move-exception v6

    goto/16 :goto_2

    .line 1563
    .end local v21    # "error":I
    :cond_19
    :try_start_1f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    if-eqz v6, :cond_1a

    .line 1564
    const-string v6, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 1565
    const/16 v6, 0xf

    const-string v60, "Upload aborted"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1566
    const/4 v6, -0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_20
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_e

    goto/16 :goto_2

    .line 2573
    :catch_e
    move-exception v6

    goto/16 :goto_2

    .line 1572
    :cond_1a
    :try_start_21
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v17

    .line 1575
    .local v17, "dfuService":Landroid/bluetooth/BluetoothGattService;
    if-nez v17, :cond_1b

    .line 1576
    const-string v6, "DFU service does not exists on the device"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 1577
    const/16 v6, 0xf

    .line 1578
    const-string v60, "Connected. DFU Service not found"

    .line 1577
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1579
    const/16 v6, 0x1006

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_22
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f

    goto/16 :goto_2

    .line 2573
    :catch_f
    move-exception v6

    goto/16 :goto_2

    .line 1583
    :cond_1b
    :try_start_23
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v13

    .line 1585
    .local v13, "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_PACKET_UUID:Ljava/util/UUID;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v8

    .line 1586
    .local v8, "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v13, :cond_1c

    .line 1587
    if-nez v8, :cond_1d

    .line 1588
    :cond_1c
    const-string v6, "DFU characteristics not found in the DFU service"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 1589
    const/16 v6, 0xf

    .line 1590
    const-string v60, "Connected. DFU Characteristics not found"

    .line 1589
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1591
    const/16 v6, 0x1007

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_24
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_10

    goto/16 :goto_2

    .line 2573
    :catch_10
    move-exception v6

    goto/16 :goto_2

    .line 1624
    :cond_1d
    :try_start_25
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->DFU_VERSION:Ljava/util/UUID;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v58

    .line 1628
    .local v58, "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/4 v6, 0x5

    const-string v60, "Connected. Services discovered"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 1630
    const/4 v6, -0x2

    :try_start_26
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    .line 1680
    const/16 v57, 0x0

    .line 1681
    .local v57, "version":I
    if-eqz v58, :cond_1e

    .line 1682
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v7, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->readVersion(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)I

    move-result v57

    .line 1683
    and-int/lit8 v41, v57, 0xf

    .line 1684
    .local v41, "minor":I
    shr-int/lit8 v38, v57, 0x8

    .line 1685
    .local v38, "major":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Version number read: "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, "."

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 1686
    const/16 v6, 0xa

    .line 1687
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Version number read: "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v60

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "."

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 1686
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1702
    .end local v38    # "major":I
    .end local v41    # "minor":I
    :cond_1e
    const/4 v6, 0x1

    move/from16 v0, v57

    if-eq v0, v6, :cond_1f

    .line 1703
    if-nez v12, :cond_24

    if-nez v57, :cond_24

    .line 1704
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v60, 0x3

    move/from16 v0, v60

    if-le v6, v0, :cond_24

    .line 1713
    :cond_1f
    const-string v6, "Application with buttonless update found"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logw(Ljava/lang/String;)V

    .line 1714
    const/16 v6, 0xf

    .line 1715
    const-string v60, "Application with buttonless update found"

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1722
    const/16 v29, 0x0

    .line 1723
    .local v29, "hasServiceChanged":Z
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v60, 0xc

    move/from16 v0, v60

    if-ne v6, v0, :cond_22

    .line 1725
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->GENERIC_ATTRIBUTE_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v28

    .line 1726
    .local v28, "genericAttributeService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v28, :cond_22

    .line 1728
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v50

    .line 1729
    .local v50, "serviceChangedCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v50, :cond_22

    .line 1732
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v7, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->isServiceChangedCCCDEnabled(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v51

    .line 1735
    .local v51, "serviceChangedIndicationsEnabled":Z
    if-nez v51, :cond_20

    .line 1738
    const/4 v6, 0x2

    .line 1736
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v7, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1739
    const/16 v6, 0xa

    .line 1740
    const-string v60, "Service Changed indications enabled"

    .line 1739
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1794
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    .line 1795
    const/16 v60, 0x0

    .line 1794
    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v37

    .line 1796
    .local v37, "keepBond":Z
    if-eqz v37, :cond_21

    .line 1797
    and-int/lit8 v6, v26, 0x1

    if-nez v6, :cond_21

    .line 1798
    const/4 v6, 0x1

    .line 1799
    const-string v60, "Restarting service..."

    .line 1798
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1802
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->disconnect(Landroid/bluetooth/BluetoothGatt;)V

    .line 1805
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1807
    const-string v6, "Restarting service"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 1808
    const/4 v6, 0x1

    .line 1809
    const-string v60, "Restarting service..."

    .line 1808
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1810
    new-instance v43, Landroid/content/Intent;

    invoke-direct/range {v43 .. v43}, Landroid/content/Intent;-><init>()V

    .line 1813
    .local v43, "newIntent":Landroid/content/Intent;
    const/16 v6, 0x18

    .line 1812
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1815
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_26
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_26 .. :try_end_26} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_26 .. :try_end_26} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_26 .. :try_end_26} :catch_1b
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_27
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_11

    goto/16 :goto_2

    .line 2573
    :catch_11
    move-exception v6

    goto/16 :goto_2

    .line 1819
    .end local v37    # "keepBond":Z
    .end local v43    # "newIntent":Landroid/content/Intent;
    :cond_20
    const/16 v6, 0xa

    .line 1820
    :try_start_28
    const-string v60, "Service Changed indications enabled"

    .line 1819
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1822
    :cond_21
    const/16 v29, 0x1

    .line 1827
    .end local v28    # "genericAttributeService":Landroid/bluetooth/BluetoothGattService;
    .end local v50    # "serviceChangedCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v51    # "serviceChangedIndicationsEnabled":Z
    :cond_22
    const/4 v6, 0x1

    .line 1828
    const-string v60, "Jumping to the DFU Bootloader..."

    .line 1827
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1831
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1832
    const/16 v6, 0xa

    .line 1833
    const-string v60, "Notifications enabled"

    .line 1832
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1836
    const/4 v6, -0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    .line 1837
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    const/16 v60, 0x1

    const/16 v61, 0x4

    aput-byte v61, v6, v60

    .line 1838
    const-string v6, "Sending Start DFU command (Op Code = 1, Upload Mode = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 1840
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    const/16 v60, 0x1

    .line 1839
    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-direct {v0, v7, v13, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    .line 1841
    const/16 v6, 0xa

    .line 1842
    const-string v60, "Jump to bootloader sent (Op Code = 1, Upload Mode = 4)"

    .line 1841
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1846
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->waitUntilDisconnected()V

    .line 1847
    const/4 v6, 0x5

    .line 1848
    const-string v60, "Disconnected by the remote device"

    .line 1847
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1873
    if-eqz v29, :cond_23

    const/4 v6, 0x0

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 1876
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 1878
    const-string v6, "Starting service that will connect to the DFU bootloader"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 1879
    new-instance v43, Landroid/content/Intent;

    invoke-direct/range {v43 .. v43}, Landroid/content/Intent;-><init>()V

    .line 1880
    .restart local v43    # "newIntent":Landroid/content/Intent;
    const/16 v6, 0x18

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1882
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_28
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_28 .. :try_end_28} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_28 .. :try_end_28} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_28 .. :try_end_28} :catch_1b
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_29
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_12

    goto/16 :goto_2

    .line 2573
    :catch_12
    move-exception v6

    goto/16 :goto_2

    .line 1873
    .end local v43    # "newIntent":Landroid/content/Intent;
    :cond_23
    const/4 v6, 0x1

    goto :goto_10

    .line 1895
    .end local v29    # "hasServiceChanged":Z
    :cond_24
    const/4 v6, 0x5

    move/from16 v0, v57

    if-lt v0, v6, :cond_25

    if-nez v34, :cond_25

    .line 1896
    :try_start_2a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Init packet not set for the DFU Bootloader version "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1897
    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1896
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logw(Ljava/lang/String;)V

    .line 1898
    const/16 v6, 0x14

    .line 1899
    const-string v60, "The Init packet is required by this version DFU Bootloader"

    .line 1898
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1900
    const/16 v6, 0x100b

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_2a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_2a .. :try_end_2a} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_2a .. :try_end_2a} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_2a .. :try_end_2a} :catch_1b
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 2570
    const/4 v6, 0x0

    :try_start_2b
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_13

    goto/16 :goto_2

    .line 2573
    :catch_13
    move-exception v6

    goto/16 :goto_2

    .line 1905
    :cond_25
    const/4 v6, 0x1

    :try_start_2c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->enableCCCD(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1906
    const/16 v6, 0xa

    const-string v60, "Notifications enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_2c
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_2c .. :try_end_2c} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_2c .. :try_end_2c} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_2c .. :try_end_2c} :catch_1b
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 1946
    and-int/lit8 v6, v26, 0x1

    if-lez v6, :cond_27

    move/from16 v9, v30

    .line 1948
    .local v9, "softDeviceImageSize":I
    :goto_11
    and-int/lit8 v6, v26, 0x2

    if-lez v6, :cond_28

    move/from16 v10, v30

    .line 1950
    .local v10, "bootloaderImageSize":I
    :goto_12
    and-int/lit8 v6, v26, 0x4

    if-lez v6, :cond_29

    move/from16 v11, v30

    .line 1954
    .local v11, "appImageSize":I
    :goto_13
    :try_start_2d
    const-string v6, "application/zip"

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1955
    move-object/from16 v0, v36

    check-cast v0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    move-object/from16 v59, v0

    .line 1956
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->softDeviceImageSize()I

    move-result v9

    .line 1957
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->bootloaderImageSize()I

    move-result v10

    .line 1958
    invoke-virtual/range {v59 .. v59}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->applicationImageSize()I
    :try_end_2d
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_2d .. :try_end_2d} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_2d .. :try_end_2d} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_2d .. :try_end_2d} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_2d .. :try_end_2d} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_2d .. :try_end_2d} :catch_1b
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    move-result v11

    .line 1962
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :cond_26
    :try_start_2e
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    const/16 v60, 0x1

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v61, v0

    aput-byte v61, v6, v60

    .line 1965
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Sending Start DFU command (Op Code = 1, Upload Mode = "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1966
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, ")"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1965
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 1968
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    .line 1967
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 1969
    const/16 v6, 0xa

    .line 1970
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1971
    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1970
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 1969
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1974
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "1 Sending image size array to DFU Packet ("

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, "b, "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1976
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, "b, "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1977
    const-string v60, "b)"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1974
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    move-object/from16 v6, p0

    .line 1978
    invoke-direct/range {v6 .. v11}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 1981
    const/16 v6, 0xa

    .line 1982
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Firmware image size sent ("

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1983
    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "b, "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1984
    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "b, "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1985
    move-object/from16 v0, v60

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "b)"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 1982
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 1981
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 1989
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->readNotificationResponse()[B

    move-result-object v48

    .line 2005
    .local v48, "response":[B
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getStatusCode([BI)I

    move-result v53

    .line 2006
    .local v53, "status":I
    const/16 v6, 0xa

    .line 2007
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Response received (Op Code = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v61, 0x1

    aget-byte v61, v48, v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2008
    const-string v61, " Status = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2007
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2006
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2009
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_30

    .line 2010
    new-instance v6, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;

    const-string v60, "Starting DFU failed"

    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_2e
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_2e .. :try_end_2e} :catch_14
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_2e .. :try_end_2e} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_2e .. :try_end_2e} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_2e .. :try_end_2e} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_2e .. :try_end_2e} :catch_1b
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    .line 2012
    .end local v48    # "response":[B
    .end local v53    # "status":I
    :catch_14
    move-exception v19

    .line 2014
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    :try_start_2f
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    const/16 v60, 0x3

    move/from16 v0, v60

    if-eq v6, v0, :cond_2a

    .line 2015
    throw v19
    :try_end_2f
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_2f .. :try_end_2f} :catch_15
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_2f .. :try_end_2f} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_2f .. :try_end_2f} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_2f .. :try_end_2f} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_2f .. :try_end_2f} :catch_1b
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    .line 2090
    :catch_15
    move-exception v20

    .line 2091
    .local v20, "e1":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    :try_start_30
    invoke-virtual/range {v20 .. v20}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    const/16 v60, 0x3

    move/from16 v0, v60

    if-eq v6, v0, :cond_2d

    .line 2092
    throw v20
    :try_end_30
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_30 .. :try_end_30} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_30 .. :try_end_30} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_30 .. :try_end_30} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_30 .. :try_end_30} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_30 .. :try_end_30} :catch_1b
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    .line 2487
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v20    # "e1":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    :catch_16
    move-exception v19

    .line 2488
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/UnknownResponseException;
    const/16 v21, 0x1008

    .line 2489
    .restart local v21    # "error":I
    :try_start_31
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 2490
    const/16 v6, 0x14

    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2492
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2493
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2494
    const/16 v6, 0xa

    .line 2495
    const-string v60, "Reset request sent"

    .line 2494
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2496
    const/16 v6, 0x1008

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_31
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_31 .. :try_end_31} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_31 .. :try_end_31} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_31 .. :try_end_31} :catch_1b
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 2570
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/UnknownResponseException;
    .end local v21    # "error":I
    .end local v57    # "version":I
    :goto_14
    const/4 v6, 0x0

    :try_start_32
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInputStream:Ljava/io/InputStream;

    .line 2571
    if-eqz v36, :cond_2

    .line 2572
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_17

    goto/16 :goto_2

    .line 2573
    :catch_17
    move-exception v6

    goto/16 :goto_2

    .line 1947
    .restart local v57    # "version":I
    :cond_27
    const/4 v9, 0x0

    goto/16 :goto_11

    .line 1949
    .restart local v9    # "softDeviceImageSize":I
    :cond_28
    const/4 v10, 0x0

    goto/16 :goto_12

    .line 1951
    .restart local v10    # "bootloaderImageSize":I
    :cond_29
    const/4 v11, 0x0

    goto/16 :goto_13

    .line 2022
    .restart local v11    # "appImageSize":I
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    :cond_2a
    and-int/lit8 v6, v26, 0x4

    if-lez v6, :cond_2c

    .line 2023
    and-int/lit8 v6, v26, 0x3

    if-lez v6, :cond_2c

    .line 2025
    const/4 v6, 0x0

    :try_start_33
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRemoteErrorOccurred:Z

    .line 2027
    const-string v6, "DFU target does not support (SD/BL)+App update"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logw(Ljava/lang/String;)V

    .line 2028
    const/16 v6, 0xf

    .line 2029
    const-string v60, "DFU target does not support (SD/BL)+App update"

    .line 2028
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2031
    and-int/lit8 v26, v26, -0x5

    .line 2034
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mFileType:I

    .line 2035
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    const/16 v60, 0x1

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v61, v0

    aput-byte v61, v6, v60

    .line 2036
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartsTotal:I

    .line 2040
    move-object/from16 v0, v36

    check-cast v0, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;

    move-object/from16 v59, v0

    .line 2041
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    move-object/from16 v0, v59

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;->setContentType(I)I
    :try_end_33
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_33 .. :try_end_33} :catch_15
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_33 .. :try_end_33} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_33 .. :try_end_33} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_33 .. :try_end_33} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_33 .. :try_end_33} :catch_1b
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    .line 2043
    const/4 v11, 0x0

    .line 2044
    :try_start_34
    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->available()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeInBytes:I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_23
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_34 .. :try_end_34} :catch_15
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_34 .. :try_end_34} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_34 .. :try_end_34} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_34 .. :try_end_34} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_34 .. :try_end_34} :catch_1b
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    .line 2050
    :goto_15
    const/4 v6, 0x1

    .line 2051
    :try_start_35
    const-string v60, "Sending only SD/BL"

    .line 2050
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2052
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Resending Start DFU command (Op Code = 1, Upload Mode = "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2053
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, ")"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2052
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2055
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    .line 2054
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2056
    const/16 v6, 0xa

    .line 2057
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "DFU Start sent (Op Code = 1, Upload Mode = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2057
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2056
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2061
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "2 Sending image size array to DFU Packet: ["

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2063
    const-string v60, "b, "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2064
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2065
    const-string v60, "b, "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2066
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, "b]"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2061
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    move-object/from16 v6, p0

    .line 2067
    invoke-direct/range {v6 .. v11}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;III)V

    .line 2070
    const/16 v6, 0xa

    .line 2071
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Firmware image size sent ["

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2072
    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "b, "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2073
    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "b, "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2074
    move-object/from16 v0, v60

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, "b]"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2071
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2070
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2078
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->readNotificationResponse()[B

    move-result-object v48

    .line 2080
    .restart local v48    # "response":[B
    const/4 v6, 0x1

    .line 2079
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getStatusCode([BI)I

    move-result v53

    .line 2081
    .restart local v53    # "status":I
    const/16 v6, 0xa

    .line 2082
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Response received (Op Code = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2083
    const/16 v61, 0x1

    aget-byte v61, v48, v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " Status = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2084
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2082
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2081
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2085
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_30

    .line 2086
    new-instance v6, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;

    .line 2087
    const-string v60, "Starting DFU failed"

    .line 2086
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_35
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_35 .. :try_end_35} :catch_15
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_35 .. :try_end_35} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_35 .. :try_end_35} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_35 .. :try_end_35} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_35 .. :try_end_35} :catch_1b
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    .line 2511
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v48    # "response":[B
    .end local v53    # "status":I
    .end local v57    # "version":I
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_18
    move-exception v19

    .line 2512
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
    :try_start_36
    const-string v6, "Upload aborted"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2513
    const/16 v6, 0xf

    const-string v60, "Upload aborted"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2514
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    const/16 v60, -0x3

    move/from16 v0, v60

    if-ne v6, v0, :cond_2b

    .line 2516
    const/4 v6, 0x0

    :try_start_37
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mAborted:Z

    .line 2517
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2519
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RESET:[B

    .line 2518
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2520
    const/16 v6, 0xa

    .line 2521
    const-string v60, "Reset request sent"

    .line 2520
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_21
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    .line 2525
    :cond_2b
    :goto_16
    const/4 v6, -0x7

    :try_start_38
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    goto/16 :goto_14

    .line 2089
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v57    # "version":I
    :cond_2c
    :try_start_39
    throw v19
    :try_end_39
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_39 .. :try_end_39} :catch_15
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_39 .. :try_end_39} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_39 .. :try_end_39} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_39 .. :try_end_39} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_39 .. :try_end_39} :catch_1b
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    .line 2526
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v57    # "version":I
    :catch_19
    move-exception v19

    .line 2527
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;
    const/16 v6, 0x14

    :try_start_3a
    const-string v60, "Device has disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2529
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 2530
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 2531
    const/16 v6, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    goto/16 :goto_14

    .line 2097
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v20    # "e1":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v57    # "version":I
    :cond_2d
    const/4 v6, 0x4

    move/from16 v0, v26

    if-ne v0, v6, :cond_2f

    .line 2099
    const/4 v6, 0x0

    :try_start_3b
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mRemoteErrorOccurred:Z

    .line 2103
    const-string v6, "DFU target does not support DFU v.2"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logw(Ljava/lang/String;)V

    .line 2104
    const/16 v6, 0xf

    .line 2105
    const-string v60, "DFU target does not support DFU v.2"

    .line 2104
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2108
    const/4 v6, 0x1

    .line 2109
    const-string v60, "Switching to DFU v.1"

    .line 2108
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2110
    const-string v6, "Resending Start DFU command (Op Code = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2112
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_START_DFU:[B

    .line 2111
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2115
    const/16 v6, 0xa

    .line 2116
    const-string v60, "DFU Start sent (Op Code = 1)"

    .line 2115
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2119
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Sending application image size to DFU Packet: "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2120
    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, " bytes"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2119
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2122
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mImageSizeInBytes:I

    .line 2121
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeImageSize(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 2123
    const/16 v6, 0xa

    .line 2124
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Firmware image size sent ("

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2125
    move-object/from16 v0, v60

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " bytes)"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2124
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2129
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->readNotificationResponse()[B

    move-result-object v48

    .line 2131
    .restart local v48    # "response":[B
    const/4 v6, 0x1

    .line 2130
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getStatusCode([BI)I

    move-result v53

    .line 2132
    .restart local v53    # "status":I
    const/16 v6, 0xa

    .line 2133
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Response received (Op Code = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2134
    const/16 v61, 0x1

    aget-byte v61, v48, v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ", Status = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2135
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2133
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2132
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2136
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_30

    .line 2137
    new-instance v6, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;

    .line 2138
    const-string v60, "Starting DFU failed"

    .line 2137
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_3b
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_3b .. :try_end_3b} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_3b .. :try_end_3b} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_3b .. :try_end_3b} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_3b .. :try_end_3b} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_3b .. :try_end_3b} :catch_1b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1

    .line 2497
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v20    # "e1":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v48    # "response":[B
    .end local v53    # "status":I
    :catch_1a
    move-exception v19

    .line 2498
    .restart local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    :try_start_3c
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;->getErrorNumber()I

    move-result v6

    or-int/lit16 v0, v6, 0x2000

    move/from16 v21, v0

    .line 2499
    .restart local v21    # "error":I
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 2501
    const/16 v6, 0x14

    .line 2502
    const-string v60, "Remote DFU error: %s"

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 2503
    invoke-static/range {v21 .. v21}, Lcom/smalife/upgrade/ble/utils/GattError;->parse(I)Ljava/lang/String;

    move-result-object v63

    aput-object v63, v61, v62

    .line 2502
    invoke-static/range {v60 .. v61}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    .line 2500
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2505
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2506
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RESET:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2507
    const/16 v6, 0xa

    .line 2508
    const-string v60, "Reset request sent"

    .line 2507
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2509
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_3c
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_3c .. :try_end_3c} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_3c .. :try_end_3c} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_3c .. :try_end_3c} :catch_1b
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    goto/16 :goto_14

    .line 2532
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v21    # "error":I
    .end local v57    # "version":I
    :catch_1b
    move-exception v19

    .line 2533
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/DfuException;
    :try_start_3d
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/DfuException;->getErrorNumber()I

    move-result v21

    .line 2537
    .restart local v21    # "error":I
    const v6, 0x8000

    and-int v6, v6, v21

    if-lez v6, :cond_3e

    .line 2538
    const v6, -0x8001

    and-int v21, v21, v6

    .line 2539
    const/16 v6, 0x14

    .line 2540
    const-string v60, "Error (0x%02X): %s"

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    aput-object v63, v61, v62

    const/16 v62, 0x1

    .line 2541
    invoke-static/range {v21 .. v21}, Lcom/smalife/upgrade/ble/utils/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v63

    aput-object v63, v61, v62

    .line 2539
    invoke-static/range {v60 .. v61}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2548
    :goto_17
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/DfuException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 2549
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mConnectionState:I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    const/16 v60, -0x3

    move/from16 v0, v60

    if-ne v6, v0, :cond_2e

    .line 2551
    :try_start_3e
    const-string v6, "Sending Reset command (Op Code = 6)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2553
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RESET:[B

    .line 2552
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2554
    const/16 v6, 0xa

    .line 2555
    const-string v60, "Reset request sent"

    .line 2554
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_20
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    .line 2559
    :cond_2e
    :goto_18
    :try_start_3f
    invoke-virtual/range {v19 .. v19}, Lcom/smalife/upgrade/ble/exception/DfuException;->getErrorNumber()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1

    goto/16 :goto_14

    .line 2140
    .end local v21    # "error":I
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v20    # "e1":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v57    # "version":I
    :cond_2f
    :try_start_40
    throw v20

    .line 2207
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v20    # "e1":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v48    # "response":[B
    .restart local v53    # "status":I
    :cond_30
    if-eqz v34, :cond_32

    .line 2208
    const/16 v6, 0xa

    .line 2209
    const-string v60, "Writing Initialize DFU Parameters..."

    .line 2208
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2211
    const-string v6, "Sending the Initialize DFU Parameters START (Op Code = 2, Value = 0)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2213
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_INIT_DFU_PARAMS_START:[B

    .line 2212
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    :try_end_40
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_40 .. :try_end_40} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_40 .. :try_end_40} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_40 .. :try_end_40} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_40 .. :try_end_40} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_40 .. :try_end_40} :catch_1b
    .catchall {:try_start_40 .. :try_end_40} :catchall_1

    .line 2216
    const/16 v6, 0x14

    :try_start_41
    new-array v14, v6, [B

    .line 2218
    .local v14, "data":[B
    :goto_19
    const/4 v6, 0x0

    array-length v0, v14

    move/from16 v60, v0

    move-object/from16 v0, v34

    move/from16 v1, v60

    invoke-virtual {v0, v14, v6, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_1c
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_41 .. :try_end_41} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_41 .. :try_end_41} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_41 .. :try_end_41} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_41 .. :try_end_41} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_41 .. :try_end_41} :catch_1b
    .catchall {:try_start_41 .. :try_end_41} :catchall_1

    move-result v52

    .local v52, "size":I
    const/4 v6, -0x1

    move/from16 v0, v52

    if-ne v0, v6, :cond_31

    .line 2228
    :try_start_42
    const-string v6, "Sending the Initialize DFU Parameters COMPLETE (Op Code = 2, Value = 1)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2230
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_INIT_DFU_PARAMS_COMPLETE:[B

    .line 2229
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2231
    const/16 v6, 0xa

    .line 2232
    const-string v60, "Initialize DFU Parameters completed"

    .line 2231
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2236
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->readNotificationResponse()[B

    move-result-object v48

    .line 2238
    const/4 v6, 0x2

    .line 2237
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getStatusCode([BI)I

    move-result v53

    .line 2239
    const/16 v6, 0xa

    .line 2240
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Response received (Op Code = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v61, 0x1

    aget-byte v61, v48, v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2241
    const-string v61, ", Status = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2240
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2239
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2242
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_33

    .line 2243
    new-instance v6, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;

    .line 2244
    const-string v60, "Device returned error after sending init packet"

    .line 2243
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_42
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_42 .. :try_end_42} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_42 .. :try_end_42} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_42 .. :try_end_42} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_42 .. :try_end_42} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_42 .. :try_end_42} :catch_1b
    .catchall {:try_start_42 .. :try_end_42} :catchall_1

    .line 2219
    :cond_31
    :try_start_43
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-direct {v0, v7, v8, v14, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeInitPacket(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_1c
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_43 .. :try_end_43} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_43 .. :try_end_43} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_43 .. :try_end_43} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_43 .. :try_end_43} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_43 .. :try_end_43} :catch_1b
    .catchall {:try_start_43 .. :try_end_43} :catchall_1

    goto :goto_19

    .line 2222
    .end local v14    # "data":[B
    .end local v52    # "size":I
    :catch_1c
    move-exception v19

    .line 2223
    .local v19, "e":Ljava/io/IOException;
    :try_start_44
    const-string v6, "Error while reading Init packet file"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 2224
    new-instance v6, Lcom/smalife/upgrade/ble/exception/DfuException;

    .line 2225
    const-string v60, "Error while reading Init packet file"

    .line 2226
    const/16 v61, 0x1002

    .line 2224
    move-object/from16 v0, v60

    move/from16 v1, v61

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/DfuException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2247
    .end local v19    # "e":Ljava/io/IOException;
    :cond_32
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mInitPacketSent:Z

    .line 2251
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPacketsBeforeNotification:I

    move/from16 v45, v0

    .line 2252
    .local v45, "numberOfPacketsBeforeNotification":I
    if-lez v45, :cond_34

    .line 2253
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Sending the number of packets before notifications (Op Code = 8, Value = "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2254
    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, ")"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2253
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2255
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->setNumberOfPackets([BI)V

    .line 2258
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    .line 2257
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2259
    const/16 v6, 0xa

    .line 2260
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Packet Receipt Notif Req (Op Code = 8) sent (Value = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2261
    move-object/from16 v0, v60

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2262
    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2260
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2259
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2266
    :cond_34
    const-string v6, "Sending Receive Firmware Image request (Op Code = 3)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2268
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_RECEIVE_FIRMWARE_IMAGE:[B

    .line 2267
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2269
    const/16 v6, 0xa

    .line 2270
    const-string v60, "Receive Firmware Image request sent"

    .line 2269
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v54

    .line 2274
    move-wide/from16 v0, v54

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mStartTime:J

    move-wide/from16 v0, v54

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLastProgressTime:J

    .line 2276
    .local v54, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification()V
    :try_end_44
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_44 .. :try_end_44} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_44 .. :try_end_44} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_44 .. :try_end_44} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_44 .. :try_end_44} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_44 .. :try_end_44} :catch_1b
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    .line 2278
    :try_start_45
    const-string v6, "Uploading firmware..."

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2279
    const/16 v6, 0xa

    .line 2280
    const-string v60, "Uploading firmware..."

    .line 2279
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2281
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v7, v8, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->uploadFirmwareImage(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/InputStream;)[B
    :try_end_45
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_45 .. :try_end_45} :catch_1d
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_45 .. :try_end_45} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_45 .. :try_end_45} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_45 .. :try_end_45} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_45 .. :try_end_45} :catch_1b
    .catchall {:try_start_45 .. :try_end_45} :catchall_1

    move-result-object v48

    .line 2288
    :try_start_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 2292
    .local v22, "endTime":J
    const/4 v6, 0x3

    .line 2291
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getStatusCode([BI)I

    move-result v53

    .line 2293
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Response received. Op Code: "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v60, 0x0

    aget-byte v60, v48, v60

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2294
    const-string v60, " Req Op Code = "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v60, 0x1

    aget-byte v60, v48, v60

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, ", Status = "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2295
    const/16 v60, 0x2

    aget-byte v60, v48, v60

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2293
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2296
    const/16 v6, 0xa

    .line 2297
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Response received (Op Code = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v61, 0x1

    aget-byte v61, v48, v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2298
    const-string v61, ", Status = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2297
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2296
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2299
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_35

    .line 2300
    new-instance v6, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;

    .line 2301
    const-string v60, "Device returned error after sending file"

    .line 2300
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2283
    .end local v22    # "endTime":J
    :catch_1d
    move-exception v19

    .line 2284
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;
    const-string v6, "Disconnected while sending data"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->loge(Ljava/lang/String;)V

    .line 2285
    throw v19

    .line 2304
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException;
    .restart local v22    # "endTime":J
    :cond_35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Transfer of "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mBytesSent:I

    move/from16 v60, v0

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, " bytes has taken "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2305
    sub-long v60, v22, v54

    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, " ms"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2304
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2306
    const/16 v6, 0xa

    .line 2307
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Upload completed in "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v62, v22, v54

    move-object/from16 v0, v60

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2308
    const-string v61, " ms"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2307
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2306
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2311
    const-string v6, "Sending Validate request (Op Code = 4)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2313
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_VALIDATE:[B

    .line 2312
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2314
    const/16 v6, 0xa

    .line 2315
    const-string v60, "Validate request sent"

    .line 2314
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2319
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->readNotificationResponse()[B

    move-result-object v48

    .line 2320
    const/4 v6, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->getStatusCode([BI)I

    move-result v53

    .line 2321
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v60, "Response received. Op Code: "

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v60, 0x0

    aget-byte v60, v48, v60

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2322
    const-string v60, " Req Op Code = "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v60, 0x1

    aget-byte v60, v48, v60

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v60, ", Status = "

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2323
    const/16 v60, 0x2

    aget-byte v60, v48, v60

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2321
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2324
    const/16 v6, 0xa

    .line 2325
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "Response received (Op Code = "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v61, 0x1

    aget-byte v61, v48, v61

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2326
    const-string v61, ", Status = "

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ")"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2325
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2324
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2327
    const/4 v6, 0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_36

    .line 2328
    new-instance v6, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;

    .line 2329
    const-string v60, "Device returned validation error"

    .line 2328
    move-object/from16 v0, v60

    move/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lcom/smalife/upgrade/ble/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2332
    :cond_36
    const/4 v6, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V

    .line 2333
    const-string v6, "Sending Activate and Reset request (Op Code = 5)"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2335
    sget-object v6, Lcom/smalife/upgrade/ble/service/DFUBaseService;->OP_CODE_ACTIVATE_AND_RESET:[B

    .line 2334
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->writeOpCode(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 2336
    const/16 v6, 0xa

    .line 2337
    const-string v60, "Activate and Reset request sent"

    .line 2336
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2341
    invoke-direct/range {p0 .. p0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->waitUntilDisconnected()V

    .line 2342
    const/4 v6, 0x5

    .line 2343
    const-string v60, "Disconnected by the remote device"

    .line 2342
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2356
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    const/16 v60, 0x0

    .line 2355
    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v37

    .line 2357
    .restart local v37    # "keepBond":Z
    const/4 v6, 0x5

    move/from16 v0, v57

    if-eq v0, v6, :cond_3a

    if-eqz v37, :cond_3a

    const/4 v6, 0x0

    :goto_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 2360
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->close(Landroid/bluetooth/BluetoothGatt;)V

    .line 2368
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v60, 0xc

    move/from16 v0, v60

    if-ne v6, v0, :cond_39

    .line 2370
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

    const/16 v60, 0x0

    .line 2369
    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v49

    .line 2372
    .local v49, "restoreBond":Z
    if-nez v49, :cond_37

    if-eqz v37, :cond_37

    .line 2373
    and-int/lit8 v6, v26, 0x1

    if-lez v6, :cond_38

    .line 2375
    :cond_37
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2380
    monitor-enter p0
    :try_end_46
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_46 .. :try_end_46} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_46 .. :try_end_46} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_46 .. :try_end_46} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_46 .. :try_end_46} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_46 .. :try_end_46} :catch_1b
    .catchall {:try_start_46 .. :try_end_46} :catchall_1

    .line 2382
    const-wide/16 v60, 0x7d0

    :try_start_47
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_47} :catch_1e
    .catchall {:try_start_47 .. :try_end_47} :catchall_2

    .line 2380
    :goto_1b
    :try_start_48
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2

    .line 2389
    :cond_38
    if-eqz v49, :cond_39

    and-int/lit8 v6, v26, 0x4

    if-lez v6, :cond_39

    .line 2391
    :try_start_49
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2404
    .end local v49    # "restoreBond":Z
    :cond_39
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartCurrent:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartsTotal:I

    move/from16 v60, v0

    move/from16 v0, v60

    if-ne v6, v0, :cond_3b

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    move-object/from16 v60, v0

    monitor-enter v60
    :try_end_49
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_49 .. :try_end_49} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_49 .. :try_end_49} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_49 .. :try_end_49} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_49 .. :try_end_49} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_49 .. :try_end_49} :catch_1b
    .catchall {:try_start_49 .. :try_end_49} :catchall_1

    .line 2409
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mLock:Ljava/lang/Object;

    const-wide/16 v62, 0x578

    move-wide/from16 v0, v62

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4a} :catch_22
    .catchall {:try_start_4a .. :try_end_4a} :catchall_3

    .line 2407
    :goto_1c
    :try_start_4b
    monitor-exit v60
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_3

    .line 2414
    const/4 v6, -0x6

    :try_start_4c
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->updateProgressNotification(I)V
    :try_end_4c
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_4c .. :try_end_4c} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_4c .. :try_end_4c} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_4c .. :try_end_4c} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_4c .. :try_end_4c} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_4c .. :try_end_4c} :catch_1b
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1

    goto/16 :goto_14

    .line 2357
    :cond_3a
    const/4 v6, 0x1

    goto :goto_1a

    .line 2380
    .restart local v49    # "restoreBond":Z
    :catchall_2
    move-exception v6

    :try_start_4d
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2

    :try_start_4e
    throw v6
    :try_end_4e
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_4e .. :try_end_4e} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_4e .. :try_end_4e} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_4e .. :try_end_4e} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_4e .. :try_end_4e} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_4e .. :try_end_4e} :catch_1b
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1

    .line 2407
    .end local v49    # "restoreBond":Z
    :catchall_3
    move-exception v6

    :try_start_4f
    monitor-exit v60
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_3

    :try_start_50
    throw v6

    .line 2444
    :cond_3b
    const/4 v6, 0x1

    .line 2445
    const-string v60, "Scanning for the DFU Bootloader..."

    .line 2444
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2447
    invoke-static {}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerFactory;->getScanner()Lcom/smalife/upgrade/ble/utils/BootloaderScanner;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    invoke-interface {v6, v0}, Lcom/smalife/upgrade/ble/utils/BootloaderScanner;->searchFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2448
    .local v42, "newAddress":Ljava/lang/String;
    if-eqz v42, :cond_3d

    .line 2449
    const/4 v6, 0x5

    .line 2450
    new-instance v60, Ljava/lang/StringBuilder;

    const-string v61, "DFU Bootloader found with address "

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2451
    move-object/from16 v0, v60

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    .line 2450
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2449
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 2462
    :goto_1d
    const-string v6, "Starting service that will upload application"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->logi(Ljava/lang/String;)V

    .line 2463
    new-instance v43, Landroid/content/Intent;

    invoke-direct/range {v43 .. v43}, Landroid/content/Intent;-><init>()V

    .line 2464
    .restart local v43    # "newIntent":Landroid/content/Intent;
    const/16 v6, 0x18

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 2466
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    const-string v60, "application/zip"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2473
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    const/16 v60, 0x4

    move-object/from16 v0, v43

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2479
    if-eqz v42, :cond_3c

    .line 2481
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2483
    :cond_3c
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartCurrent:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2484
    const-string v6, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/upgrade/ble/service/DFUBaseService;->mPartsTotal:I

    move/from16 v60, v0

    move-object/from16 v0, v43

    move/from16 v1, v60

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2485
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_14

    .line 2453
    .end local v43    # "newIntent":Landroid/content/Intent;
    :cond_3d
    const/4 v6, 0x5

    .line 2454
    const-string v60, "DFU Bootloader not found. Trying the same address..."

    .line 2453
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_50
    .catch Lcom/smalife/upgrade/ble/exception/UnknownResponseException; {:try_start_50 .. :try_end_50} :catch_16
    .catch Lcom/smalife/upgrade/ble/exception/RemoteDfuException; {:try_start_50 .. :try_end_50} :catch_1a
    .catch Lcom/smalife/upgrade/ble/exception/UploadAbortedException; {:try_start_50 .. :try_end_50} :catch_18
    .catch Lcom/smalife/upgrade/ble/exception/DeviceDisconnectedException; {:try_start_50 .. :try_end_50} :catch_19
    .catch Lcom/smalife/upgrade/ble/exception/DfuException; {:try_start_50 .. :try_end_50} :catch_1b
    .catchall {:try_start_50 .. :try_end_50} :catchall_1

    goto :goto_1d

    .line 2543
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v22    # "endTime":J
    .end local v37    # "keepBond":Z
    .end local v42    # "newAddress":Ljava/lang/String;
    .end local v45    # "numberOfPacketsBeforeNotification":I
    .end local v48    # "response":[B
    .end local v53    # "status":I
    .end local v54    # "startTime":J
    .end local v57    # "version":I
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/DfuException;
    .restart local v21    # "error":I
    :cond_3e
    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x4001

    move/from16 v21, v0

    .line 2544
    const/16 v6, 0x14

    .line 2545
    :try_start_51
    const-string v60, "Error (0x%02X): %s"

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    aput-object v63, v61, v62

    const/16 v62, 0x1

    .line 2546
    invoke-static/range {v21 .. v21}, Lcom/smalife/upgrade/ble/utils/GattError;->parse(I)Ljava/lang/String;

    move-result-object v63

    aput-object v63, v61, v62

    .line 2545
    invoke-static/range {v60 .. v61}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    .line 2544
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_1

    goto/16 :goto_17

    .line 2383
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/DfuException;
    .end local v21    # "error":I
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .restart local v22    # "endTime":J
    .restart local v37    # "keepBond":Z
    .restart local v45    # "numberOfPacketsBeforeNotification":I
    .restart local v48    # "response":[B
    .restart local v49    # "restoreBond":Z
    .restart local v53    # "status":I
    .restart local v54    # "startTime":J
    .restart local v57    # "version":I
    :catch_1e
    move-exception v6

    goto/16 :goto_1b

    .line 2573
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v13    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v17    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .end local v22    # "endTime":J
    .end local v30    # "imageSizeInBytes":I
    .end local v37    # "keepBond":Z
    .end local v45    # "numberOfPacketsBeforeNotification":I
    .end local v48    # "response":[B
    .end local v49    # "restoreBond":Z
    .end local v53    # "status":I
    .end local v54    # "startTime":J
    .end local v57    # "version":I
    .end local v58    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_1f
    move-exception v60

    goto/16 :goto_f

    .line 2567
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v35    # "initIs":Ljava/io/InputStream;
    :catchall_4
    move-exception v6

    move-object/from16 v34, v35

    .end local v35    # "initIs":Ljava/io/InputStream;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_e

    .line 2556
    .restart local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .restart local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v13    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v17    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .restart local v19    # "e":Lcom/smalife/upgrade/ble/exception/DfuException;
    .restart local v21    # "error":I
    .restart local v30    # "imageSizeInBytes":I
    .restart local v58    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_20
    move-exception v6

    goto/16 :goto_18

    .line 2522
    .end local v21    # "error":I
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
    :catch_21
    move-exception v6

    goto/16 :goto_16

    .line 2410
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/UploadAbortedException;
    .restart local v9    # "softDeviceImageSize":I
    .restart local v10    # "bootloaderImageSize":I
    .restart local v11    # "appImageSize":I
    .restart local v22    # "endTime":J
    .restart local v37    # "keepBond":Z
    .restart local v45    # "numberOfPacketsBeforeNotification":I
    .restart local v48    # "response":[B
    .restart local v53    # "status":I
    .restart local v54    # "startTime":J
    .restart local v57    # "version":I
    :catch_22
    move-exception v6

    goto/16 :goto_1c

    .line 2045
    .end local v22    # "endTime":J
    .end local v37    # "keepBond":Z
    .end local v45    # "numberOfPacketsBeforeNotification":I
    .end local v48    # "response":[B
    .end local v53    # "status":I
    .end local v54    # "startTime":J
    .local v19, "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .restart local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_23
    move-exception v6

    goto/16 :goto_15

    .line 1532
    .end local v7    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v8    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v9    # "softDeviceImageSize":I
    .end local v10    # "bootloaderImageSize":I
    .end local v11    # "appImageSize":I
    .end local v13    # "controlPointCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v17    # "dfuService":Landroid/bluetooth/BluetoothGattService;
    .end local v19    # "e":Lcom/smalife/upgrade/ble/exception/RemoteDfuException;
    .end local v57    # "version":I
    .end local v58    # "versionCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v59    # "zhis":Lcom/smalife/upgrade/ble/utils/ArchiveInputStream;
    :catch_24
    move-exception v6

    goto/16 :goto_c

    .line 1519
    .end local v30    # "imageSizeInBytes":I
    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v35    # "initIs":Ljava/io/InputStream;
    :catch_25
    move-exception v19

    move-object/from16 v34, v35

    .end local v35    # "initIs":Ljava/io/InputStream;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_d

    .line 1515
    :catch_26
    move-exception v19

    goto/16 :goto_a

    .line 1511
    :catch_27
    move-exception v19

    goto/16 :goto_9

    .line 1507
    :catch_28
    move-exception v19

    goto/16 :goto_8

    .line 1503
    :catch_29
    move-exception v19

    goto/16 :goto_7

    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v30    # "imageSizeInBytes":I
    .restart local v35    # "initIs":Ljava/io/InputStream;
    :cond_3f
    move-object/from16 v34, v35

    .end local v35    # "initIs":Ljava/io/InputStream;
    .restart local v34    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_b

    .end local v30    # "imageSizeInBytes":I
    :cond_40
    move-object/from16 v35, v34

    .end local v34    # "initIs":Ljava/io/InputStream;
    .restart local v35    # "initIs":Ljava/io/InputStream;
    goto/16 :goto_6
.end method
