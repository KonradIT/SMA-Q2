.class public Lcom/smalife/ble/BlueToothService;
.super Landroid/app/Service;
.source "BlueToothService.java"

# interfaces
.implements Lcom/smalife/ble/SwatchManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/ble/BlueToothService$ActionListener;,
        Lcom/smalife/ble/BlueToothService$GetRateThread;,
        Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;,
        Lcom/smalife/ble/BlueToothService$ReconnectThread;,
        Lcom/smalife/ble/BlueToothService$SMSObserver;
    }
.end annotation


# static fields
.field public static final B_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final MSG_BIND:I = 0x2

.field private static final MSG_GET_RATE:I = 0x4

.field private static final MSG_LOGIN:I = 0x1

.field private static final MSG_RECEIVE_DATA:I = 0x3

.field private static final SMS_CONTENT_URI:Landroid/net/Uri;

.field private static final mMinRSSI:I = -0x58


# instance fields
.field private final call:I

.field private callRunning:Z

.field code_key:I

.field private df:Ljava/text/DateFormat;

.field private dlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private endRefreshRunnable:Ljava/lang/Runnable;

.field private fAccount:Ljava/lang/String;

.field private getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

.field id_bytes:[B

.field private volatile isConnected:Z

.field private isReceiveBack:Z

.field private isScaned:Z

.field private len:I

.field private listener:Lcom/smalife/ble/BlueToothService$ActionListener;

.field private mApplication:Lcom/smalife/MyApplication;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattService:Landroid/bluetooth/BluetoothGattService;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field mObserver:Lcom/smalife/ble/BlueToothService$SMSObserver;

.field private mRCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSemaphore_NACK:Ljava/util/concurrent/Semaphore;

.field private mSmaDao:Lcom/smalife/db/SmaDao;

.field private mTaskQueen:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mWCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mWatchType:Ljava/lang/String;

.field private mWriteThread:Ljava/lang/Thread;

.field private reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

.field private ringer_mode:I

.field rt:[B

.field private sendManager:Lcom/smalife/ablecloud/SendMsgManager;

.field private volatile serviceStart:Z

.field private final show_love:I

.field private syncOpenOrClose:I

.field telReceiver:Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;

.field private userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2844
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/ble/BlueToothService;->SMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mTaskQueen:Ljava/util/LinkedList;

    .line 94
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 95
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore_NACK:Ljava/util/concurrent/Semaphore;

    .line 99
    iput v3, p0, Lcom/smalife/ble/BlueToothService;->syncOpenOrClose:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->fAccount:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmm"

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->df:Ljava/text/DateFormat;

    .line 114
    new-instance v0, Lcom/smalife/ble/BlueToothService$1;

    invoke-direct {v0, p0}, Lcom/smalife/ble/BlueToothService$1;-><init>(Lcom/smalife/ble/BlueToothService;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    .line 162
    iput-boolean v3, p0, Lcom/smalife/ble/BlueToothService;->serviceStart:Z

    .line 351
    new-instance v0, Lcom/smalife/ble/BlueToothService$2;

    invoke-direct {v0, p0}, Lcom/smalife/ble/BlueToothService$2;-><init>(Lcom/smalife/ble/BlueToothService;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 440
    new-instance v0, Lcom/smalife/ble/BlueToothService$3;

    invoke-direct {v0, p0}, Lcom/smalife/ble/BlueToothService$3;-><init>(Lcom/smalife/ble/BlueToothService;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    .line 658
    iput v3, p0, Lcom/smalife/ble/BlueToothService;->len:I

    .line 2237
    new-instance v0, Lcom/smalife/ble/BlueToothService$ActionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smalife/ble/BlueToothService$ActionListener;-><init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$ActionListener;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->listener:Lcom/smalife/ble/BlueToothService$ActionListener;

    .line 2454
    iput-boolean v3, p0, Lcom/smalife/ble/BlueToothService;->callRunning:Z

    .line 2708
    const/16 v0, 0x20

    iput v0, p0, Lcom/smalife/ble/BlueToothService;->show_love:I

    .line 2709
    const/16 v0, 0x21

    iput v0, p0, Lcom/smalife/ble/BlueToothService;->call:I

    .line 2710
    iput v3, p0, Lcom/smalife/ble/BlueToothService;->code_key:I

    .line 3000
    iput-boolean v3, p0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 3001
    new-instance v0, Lcom/smalife/ble/BlueToothService$4;

    invoke-direct {v0, p0}, Lcom/smalife/ble/BlueToothService$4;-><init>(Lcom/smalife/ble/BlueToothService;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/ble/BlueToothService;[B)V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/smalife/ble/BlueToothService;->receiveData([B)V

    return-void
.end method

.method static synthetic access$10(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService;->mRCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$11(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService;->mWCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static synthetic access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mRCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$13(Lcom/smalife/ble/BlueToothService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$15(Lcom/smalife/ble/BlueToothService;)Z
    .locals 1

    .prologue
    .line 3000
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    return v0
.end method

.method static synthetic access$16(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2759
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->setSystemTime()V

    return-void
.end method

.method static synthetic access$17(Lcom/smalife/ble/BlueToothService;I)V
    .locals 0

    .prologue
    .line 2687
    iput p1, p0, Lcom/smalife/ble/BlueToothService;->ringer_mode:I

    return-void
.end method

.method static synthetic access$18(Lcom/smalife/ble/BlueToothService;)Z
    .locals 1

    .prologue
    .line 2454
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->callRunning:Z

    return v0
.end method

.method static synthetic access$19(Lcom/smalife/ble/BlueToothService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2527
    invoke-direct {p0, p1}, Lcom/smalife/ble/BlueToothService;->sendCallMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/smalife/ble/BlueToothService;Z)V
    .locals 0

    .prologue
    .line 2454
    iput-boolean p1, p0, Lcom/smalife/ble/BlueToothService;->callRunning:Z

    return-void
.end method

.method static synthetic access$21(Lcom/smalife/ble/BlueToothService;)I
    .locals 1

    .prologue
    .line 2687
    iget v0, p0, Lcom/smalife/ble/BlueToothService;->ringer_mode:I

    return v0
.end method

.method static synthetic access$22(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$24(Lcom/smalife/ble/BlueToothService;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->serviceStart:Z

    return v0
.end method

.method static synthetic access$25(Lcom/smalife/ble/BlueToothService;)Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->df:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$26(Lcom/smalife/ble/BlueToothService;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isConnected:Z

    return v0
.end method

.method static synthetic access$27(Lcom/smalife/ble/BlueToothService;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mTaskQueen:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore_NACK:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$29(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mWCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2960
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->stopScan()V

    return-void
.end method

.method static synthetic access$30(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$31(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method static synthetic access$32(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2018
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->unpairDevice()V

    return-void
.end method

.method static synthetic access$33(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2048
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->handleUnbindSucceed()V

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/ble/BlueToothService;Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/smalife/ble/BlueToothService;->isConnected:Z

    return-void
.end method

.method static synthetic access$6(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->resetWriteThread()V

    return-void
.end method

.method static synthetic access$7(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2992
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->close()V

    return-void
.end method

.method static synthetic access$8(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService;->mGattService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method static synthetic access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGattService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method private addSMSObserver()V
    .locals 4

    .prologue
    .line 2847
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2848
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/smalife/ble/BlueToothService$SMSObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/smalife/ble/BlueToothService$SMSObserver;-><init>(Lcom/smalife/ble/BlueToothService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/smalife/ble/BlueToothService;->mObserver:Lcom/smalife/ble/BlueToothService$SMSObserver;

    .line 2849
    sget-object v1, Lcom/smalife/ble/BlueToothService;->SMS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smalife/ble/BlueToothService;->mObserver:Lcom/smalife/ble/BlueToothService$SMSObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2850
    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2994
    const-string v0, "close"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2995
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2998
    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2985
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isConnected:Z

    if-eqz v0, :cond_0

    .line 2986
    const-string v0, "disconnect"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2987
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2990
    :cond_0
    return-void
.end method

.method private duankai()V
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2974
    const-string v0, "duankai"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2975
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isConnected:Z

    if-eqz v0, :cond_1

    .line 2976
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->disconnect()V

    .line 2981
    :cond_0
    :goto_0
    return-void

    .line 2978
    :cond_1
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->close()V

    goto :goto_0
.end method

.method private endCall()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2652
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/smalife/ble/BlueToothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 2653
    .local v7, "telMag":Landroid/telephony/TelephonyManager;
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 2654
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/telephony/TelephonyManager;>;"
    const/4 v6, 0x0

    .line 2656
    .local v6, "mthEndCall":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v8, "getITelephony"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2657
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2659
    const/4 v8, 0x0

    .line 2658
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ITelephony;

    .line 2660
    .local v2, "iTel":Lcom/android/internal/telephony/ITelephony;
    iget-object v8, p0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    const-string v9, "SMA-04"

    if-ne v8, v9, :cond_0

    .line 2661
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 2662
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 2685
    .end local v2    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 2664
    .restart local v2    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2666
    .end local v2    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2667
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2668
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    const-string v9, "SMA-04"

    if-ne v8, v9, :cond_1

    .line 2669
    new-instance v4, Landroid/view/KeyEvent;

    .line 2670
    const/16 v8, 0x4f

    .line 2669
    invoke-direct {v4, v10, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2671
    .local v4, "keyEvent":Landroid/view/KeyEvent;
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2673
    const-string v8, "android.permission.CALL_PRIVILEGED"

    .line 2672
    invoke-virtual {p0, v3, v8}, Lcom/smalife/ble/BlueToothService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2675
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/smalife/ble/BlueToothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2674
    check-cast v5, Landroid/media/AudioManager;

    .line 2676
    .local v5, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v5, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 2678
    .end local v4    # "keyEvent":Landroid/view/KeyEvent;
    .end local v5    # "mAudioManager":Landroid/media/AudioManager;
    :cond_1
    new-instance v4, Landroid/view/KeyEvent;

    .line 2679
    const/4 v8, 0x6

    .line 2678
    invoke-direct {v4, v10, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2680
    .restart local v4    # "keyEvent":Landroid/view/KeyEvent;
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2682
    const-string v8, "android.permission.CALL_PRIVILEGED"

    .line 2681
    invoke-virtual {p0, v3, v8}, Lcom/smalife/ble/BlueToothService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 610
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 611
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 612
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 613
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 614
    .local v1, "day":I
    sub-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 615
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 616
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private handleUnbindSucceed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2050
    const v1, 0x7f09011a

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2051
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2053
    sput-boolean v3, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 2054
    sput-object v4, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 2055
    sput-boolean v3, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    .line 2056
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v3}, Lcom/smalife/MyApplication;->editBonded(Z)V

    .line 2057
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v3}, Lcom/smalife/MyApplication;->editStartSign(Z)V

    .line 2058
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editBondedDeviceAddress(Ljava/lang/String;)V

    .line 2059
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editFirmWareVersion(Ljava/lang/String;)V

    .line 2060
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editBleVersion(Ljava/lang/String;)V

    .line 2062
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    iput-boolean v3, v1, Lcom/smalife/MyApplication;->isConnected:Z

    .line 2063
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v3}, Lcom/smalife/MyApplication;->editChoseXiaoQ(Z)V

    .line 2065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UnBondingActionResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2066
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2068
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    if-eqz v1, :cond_0

    .line 2069
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    invoke-virtual {v1}, Lcom/smalife/ble/BlueToothService$ReconnectThread;->interrupt()V

    .line 2070
    iput-object v4, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    .line 2072
    :cond_0
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    if-eqz v1, :cond_1

    .line 2073
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    invoke-virtual {v1}, Lcom/smalife/ble/BlueToothService$GetRateThread;->interrupt()V

    .line 2074
    iput-object v4, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    .line 2076
    :cond_1
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->stopSelf()V

    .line 2077
    return-void
.end method

.method private declared-synchronized parserData([B)V
    .locals 111
    .param p1, "rt"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    .line 707
    const/16 v52, 0x0

    .local v52, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/ble/BlueToothService;->len:I

    move/from16 v0, v52

    if-lt v0, v5, :cond_3

    .line 712
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/ble/BlueToothService;->len:I

    new-array v0, v5, [B

    move-object/from16 v31, v0

    .line 714
    .local v31, "crc":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Ljava/util/ArrayList;

    .line 715
    .local v104, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 716
    const/16 v58, 0x0

    .local v58, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/ble/BlueToothService;->len:I

    move/from16 v0, v58

    if-lt v0, v5, :cond_4

    .line 719
    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-byte v6, v31, v5

    .line 720
    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-byte v6, v31, v5

    .line 721
    invoke-static/range {v31 .. v31}, Lcom/smalife/ble/CmdManager;->cmdCRC([B)[B

    move-result-object v32

    .line 723
    .local v32, "crcBytes":[B
    invoke-static/range {v32 .. v32}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v33

    .line 724
    .local v33, "crcRt":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v35

    .line 725
    .local v35, "dataRt":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    invoke-direct/range {p0 .. p1}, Lcom/smalife/ble/BlueToothService;->rebackACK([B)V

    .line 729
    :cond_0
    const/16 v5, 0x8

    aget-byte v25, p1, v5

    .line 731
    .local v25, "cmd_byte":B
    const/16 v5, 0xa

    aget-byte v26, p1, v5

    .line 732
    .local v26, "cmd_key":B
    new-instance v56, Landroid/content/Intent;

    invoke-direct/range {v56 .. v56}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v56, "intent":Landroid/content/Intent;
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_6

    .line 734
    const/4 v5, 0x2

    move/from16 v0, v26

    if-ne v0, v5, :cond_1

    .line 735
    const-string v5, "OTA_back"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 736
    const-string v5, "OTAActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const/16 v5, 0xd

    aget-byte v5, p1, v5

    if-nez v5, :cond_5

    .line 738
    const-string v5, "OTA_back>>>>ok"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 739
    const-string v5, "OTAResult"

    const/4 v6, 0x1

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    const-string v5, "blue_tooth"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1572
    .end local v52    # "i":I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    :cond_2
    monitor-exit p0

    return-void

    .line 708
    .end local v25    # "cmd_byte":B
    .end local v26    # "cmd_key":B
    .end local v31    # "crc":[B
    .end local v32    # "crcBytes":[B
    .end local v33    # "crcRt":Ljava/lang/String;
    .end local v35    # "dataRt":Ljava/lang/String;
    .end local v56    # "intent":Landroid/content/Intent;
    .end local v58    # "j":I
    .end local v104    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v52    # "i":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, p1, v52

    .line 707
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_0

    .line 717
    .restart local v31    # "crc":[B
    .restart local v58    # "j":I
    .restart local v104    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_4
    move-object/from16 v0, v104

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v31, v58

    .line 716
    add-int/lit8 v58, v58, 0x1

    goto/16 :goto_1

    .line 746
    .restart local v25    # "cmd_byte":B
    .restart local v26    # "cmd_key":B
    .restart local v32    # "crcBytes":[B
    .restart local v33    # "crcRt":Ljava/lang/String;
    .restart local v35    # "dataRt":Ljava/lang/String;
    .restart local v56    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v5, "OTA_back>>>>fail"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 747
    const-string v5, "OTAResult"

    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 705
    .end local v25    # "cmd_byte":B
    .end local v26    # "cmd_key":B
    .end local v31    # "crc":[B
    .end local v32    # "crcBytes":[B
    .end local v33    # "crcRt":Ljava/lang/String;
    .end local v35    # "dataRt":Ljava/lang/String;
    .end local v52    # "i":I
    .end local v56    # "intent":Landroid/content/Intent;
    .end local v58    # "j":I
    .end local v104    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 750
    .restart local v25    # "cmd_byte":B
    .restart local v26    # "cmd_key":B
    .restart local v31    # "crc":[B
    .restart local v32    # "crcBytes":[B
    .restart local v33    # "crcRt":Ljava/lang/String;
    .restart local v35    # "dataRt":Ljava/lang/String;
    .restart local v52    # "i":I
    .restart local v56    # "intent":Landroid/content/Intent;
    .restart local v58    # "j":I
    .restart local v104    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_6
    const/4 v5, 0x2

    move/from16 v0, v25

    if-ne v0, v5, :cond_e

    .line 751
    const/4 v5, 0x4

    move/from16 v0, v26

    if-ne v0, v5, :cond_a

    .line 752
    :try_start_2
    const-string v5, "colock_list_back_key"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 753
    const-string v5, "ClockListActionString"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    rem-int/lit8 v5, v5, 0x5

    if-nez v5, :cond_7

    const/16 v57, 0x1

    .line 756
    .local v57, "isokay":Z
    :goto_3
    if-eqz v57, :cond_1

    .line 757
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    div-int/lit8 v63, v5, 0x5

    .line 758
    .local v63, "m":I
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move/from16 v1, v63

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 759
    .local v27, "cmlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    const/16 v53, 0x0

    .local v53, "index":I
    :goto_4
    move/from16 v0, v53

    move/from16 v1, v63

    if-lt v0, v1, :cond_8

    .line 804
    const-string v5, "ClockListResult"

    move-object/from16 v0, v56

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 755
    .end local v27    # "cmlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    .end local v53    # "index":I
    .end local v57    # "isokay":Z
    .end local v63    # "m":I
    :cond_7
    const/16 v57, 0x0

    goto :goto_3

    .line 760
    .restart local v27    # "cmlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    .restart local v53    # "index":I
    .restart local v57    # "isokay":Z
    .restart local v63    # "m":I
    :cond_8
    const/4 v5, 0x5

    new-array v0, v5, [B

    move-object/from16 v24, v0

    .line 761
    .local v24, "clock":[B
    const/16 v58, 0x1

    :goto_5
    const/4 v5, 0x5

    move/from16 v0, v58

    if-le v0, v5, :cond_9

    .line 766
    invoke-static/range {v24 .. v24}, Lcom/smalife/ble/ToolKit;->bytes2BinaryStr([B)Ljava/lang/String;

    move-result-object v18

    .line 767
    .local v18, "binaryString":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v59

    .line 768
    .local v59, "len":I
    add-int/lit8 v5, v59, -0x7

    move-object/from16 v0, v18

    move/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v78

    .line 770
    .local v78, "repeatString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0xe

    .line 771
    add-int/lit8 v6, v59, -0xb

    .line 770
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 772
    .local v12, "IDString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x14

    .line 773
    add-int/lit8 v6, v59, -0xe

    .line 772
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v65

    .line 774
    .local v65, "minString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x19

    .line 775
    add-int/lit8 v6, v59, -0x14

    .line 774
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v51

    .line 776
    .local v51, "hourString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x1e

    .line 777
    add-int/lit8 v6, v59, -0x19

    .line 776
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 778
    .local v41, "dayString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x22

    .line 779
    add-int/lit8 v6, v59, -0x1e

    .line 778
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 780
    .local v70, "monthString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x28

    .line 781
    add-int/lit8 v6, v59, -0x22

    .line 780
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v110

    .line 783
    .local v110, "yearString":Ljava/lang/String;
    invoke-static/range {v78 .. v78}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v77

    .line 784
    .local v77, "repeat":I
    invoke-static {v12}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v5

    int-to-byte v11, v5

    .line 785
    .local v11, "ID":B
    invoke-static/range {v65 .. v65}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v5

    int-to-byte v0, v5

    move/from16 v64, v0

    .line 787
    .local v64, "min":B
    invoke-static/range {v51 .. v51}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v5

    int-to-byte v0, v5

    move/from16 v50, v0

    .line 788
    .local v50, "hour":B
    invoke-static/range {v41 .. v41}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v5

    int-to-byte v0, v5

    move/from16 v40, v0

    .line 790
    .local v40, "day":B
    invoke-static/range {v70 .. v70}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v5

    int-to-byte v0, v5

    move/from16 v69, v0

    .line 792
    .local v69, "month":B
    invoke-static/range {v110 .. v110}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v5

    int-to-byte v0, v5

    move/from16 v109, v0

    .line 794
    .local v109, "year":B
    new-instance v49, Lcom/smalife/adapter/TimeField;

    invoke-direct/range {v49 .. v49}, Lcom/smalife/adapter/TimeField;-><init>()V

    .line 795
    .local v49, "field":Lcom/smalife/adapter/TimeField;
    move/from16 v0, v109

    move-object/from16 v1, v49

    iput-byte v0, v1, Lcom/smalife/adapter/TimeField;->year:B

    .line 796
    move/from16 v0, v69

    move-object/from16 v1, v49

    iput-byte v0, v1, Lcom/smalife/adapter/TimeField;->month:B

    .line 797
    move/from16 v0, v40

    move-object/from16 v1, v49

    iput-byte v0, v1, Lcom/smalife/adapter/TimeField;->day:B

    .line 798
    move/from16 v0, v50

    move-object/from16 v1, v49

    iput-byte v0, v1, Lcom/smalife/adapter/TimeField;->hour:B

    .line 799
    move/from16 v0, v64

    move-object/from16 v1, v49

    iput-byte v0, v1, Lcom/smalife/adapter/TimeField;->mintue:B

    .line 800
    move-object/from16 v0, v49

    iput-byte v11, v0, Lcom/smalife/adapter/TimeField;->id:B

    .line 801
    move/from16 v0, v77

    move-object/from16 v1, v49

    iput v0, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 802
    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v53, v53, 0x1

    goto/16 :goto_4

    .line 762
    .end local v11    # "ID":B
    .end local v12    # "IDString":Ljava/lang/String;
    .end local v18    # "binaryString":Ljava/lang/String;
    .end local v40    # "day":B
    .end local v41    # "dayString":Ljava/lang/String;
    .end local v49    # "field":Lcom/smalife/adapter/TimeField;
    .end local v50    # "hour":B
    .end local v51    # "hourString":Ljava/lang/String;
    .end local v59    # "len":I
    .end local v64    # "min":B
    .end local v65    # "minString":Ljava/lang/String;
    .end local v69    # "month":B
    .end local v70    # "monthString":Ljava/lang/String;
    .end local v77    # "repeat":I
    .end local v78    # "repeatString":Ljava/lang/String;
    .end local v109    # "year":B
    .end local v110    # "yearString":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v58, -0x1

    add-int/lit8 v6, v58, 0xc

    mul-int/lit8 v7, v53, 0x5

    add-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v24, v5

    .line 761
    add-int/lit8 v58, v58, 0x1

    goto/16 :goto_5

    .line 806
    .end local v24    # "clock":[B
    .end local v27    # "cmlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    .end local v53    # "index":I
    .end local v57    # "isokay":Z
    .end local v63    # "m":I
    :cond_a
    const/16 v5, 0x9

    move/from16 v0, v26

    if-ne v0, v5, :cond_b

    .line 807
    const-string v5, "battery_Back_key"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 808
    const-string v5, "BatteryActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v60, v0

    .line 810
    .local v60, "level":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Lcom/smalife/MyApplication;->editBatteryLevel(I)V

    .line 811
    const-string v5, "BatteryReslut"

    move-object/from16 v0, v56

    move/from16 v1, v60

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    new-instance v5, Landroid/content/Intent;

    const-string v6, "BatteryActionResult"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 813
    .end local v60    # "level":I
    :cond_b
    const/16 v5, 0xb

    move/from16 v0, v26

    if-ne v0, v5, :cond_d

    .line 814
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "firware_back = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 815
    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 814
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 816
    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v13, v5, 0xff

    .line 817
    .local v13, "a":I
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v17, v0

    .line 819
    .local v17, "b":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v108

    .line 820
    .local v108, "version":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FirmWar version = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v108

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    move-object/from16 v0, v108

    invoke-virtual {v5, v0}, Lcom/smalife/MyApplication;->editFirmWareVersion(Ljava/lang/String;)V

    .line 824
    const-string v19, ""

    .line 825
    .local v19, "bleVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    const-string v6, "SM05"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 826
    const/16 v5, 0x10

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v20, v0

    .line 827
    .local v20, "ble_a":I
    const/16 v5, 0x11

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v21, v0

    .line 828
    .local v21, "ble_b":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 832
    .end local v20    # "ble_a":I
    .end local v21    # "ble_b":I
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ble version = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/smalife/MyApplication;->editBleVersion(Ljava/lang/String;)V

    .line 925
    new-instance v5, Landroid/content/Intent;

    const-string v6, "FrimWareVersionResult"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 830
    :cond_c
    move-object/from16 v19, v108

    goto :goto_6

    .line 926
    .end local v13    # "a":I
    .end local v17    # "b":I
    .end local v19    # "bleVersion":Ljava/lang/String;
    .end local v108    # "version":Ljava/lang/String;
    :cond_d
    const/4 v5, 0x7

    move/from16 v0, v26

    if-ne v0, v5, :cond_1

    .line 927
    const-string v5, "systemTime_back"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 928
    const/16 v5, 0xd

    aget-byte v79, p1, v5

    .line 929
    .local v79, "result":I
    shr-int/lit8 v109, v79, 0x2

    .line 930
    .local v109, "year":I
    const/16 v5, 0xa

    move/from16 v0, v109

    if-lt v0, v5, :cond_1

    goto/16 :goto_2

    .line 934
    .end local v79    # "result":I
    .end local v109    # "year":I
    :cond_e
    const/4 v5, 0x3

    move/from16 v0, v25

    if-ne v0, v5, :cond_18

    .line 935
    const/4 v5, 0x2

    move/from16 v0, v26

    if-ne v0, v5, :cond_11

    .line 936
    const-string v5, "bond_back"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 937
    const-string v5, "BondingActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const/4 v5, 0x0

    sput-boolean v5, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 942
    const/16 v5, 0xd

    aget-byte v5, p1, v5

    if-nez v5, :cond_10

    .line 943
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->hasUploadMAC2WX()Z

    move-result v5

    if-nez v5, :cond_f

    .line 946
    new-instance v5, Landroid/content/Intent;

    .line 947
    const-string v6, "ACTION_UPLOAD_MAC_WX"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 950
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 951
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 950
    invoke-virtual {v5, v6}, Lcom/smalife/MyApplication;->editBondedDeviceAddress(Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/smalife/MyApplication;->editFirmWareVersion(Ljava/lang/String;)V

    .line 953
    const-string v5, "bondResult"

    const/4 v6, 0x1

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 954
    const/4 v5, 0x0

    sput-boolean v5, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    .line 955
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smalife/MyApplication;->editBonded(Z)V

    .line 956
    new-instance v5, Landroid/content/Intent;

    const-string v6, "FinishBond"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 958
    :cond_10
    const-string v5, "bondResult"

    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 960
    :cond_11
    const/4 v5, 0x4

    move/from16 v0, v26

    if-ne v0, v5, :cond_1

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "login_back>>>>rt[13]="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xd

    aget-byte v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 962
    const-string v5, "LoginActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const/16 v5, 0xd

    aget-byte v5, p1, v5

    if-nez v5, :cond_1

    .line 966
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/smalife/MyApplication;->isConnected:Z

    .line 969
    new-instance v5, Landroid/content/Intent;

    const-string v6, "BleConnecting"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 971
    const-string v5, "loginResult"

    const/4 v6, 0x1

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    invoke-direct/range {p0 .. p0}, Lcom/smalife/ble/BlueToothService;->setSystemTime()V

    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v5

    .line 979
    const-string v6, "SM07"

    .line 978
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 979
    if-nez v5, :cond_12

    .line 980
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sync([B)V

    .line 982
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getStartSign()Z

    move-result v5

    if-nez v5, :cond_1

    .line 983
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smalife/MyApplication;->editStartSign(Z)V

    .line 984
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v5

    .line 985
    const-string v6, "SM07"

    .line 984
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 985
    if-eqz v5, :cond_13

    .line 987
    const/4 v5, 0x1

    new-array v6, v5, [B

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/ble/BlueToothService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 988
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 989
    const-string v8, "CN"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    :goto_7
    int-to-byte v5, v5

    aput-byte v5, v6, v7

    .line 987
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/smalife/ble/BlueToothService;->languageSet([B)V

    .line 990
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/ble/BlueToothService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 991
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 992
    const-string v7, "CN"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    .line 990
    :goto_8
    invoke-virtual {v6, v5}, Lcom/smalife/MyApplication;->editLanguageSet(I)V

    .line 994
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->lightHandSet([B)V

    .line 996
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    .line 997
    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getVerticalScreenSet()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 996
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->verticalScreenSet([B)V

    .line 999
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->setSleepDetection([B)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/smalife/MyApplication;->editSleepDetection(Z)V

    .line 1004
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/smalife/db/SmaDao;->getUserInfo(Ljava/lang/String;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v106

    .line 1005
    .local v106, "user":Lcom/smalife/db/entity/UserEntity;
    if-eqz v106, :cond_14

    .line 1006
    invoke-virtual/range {v106 .. v106}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v106 .. v106}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1007
    invoke-virtual/range {v106 .. v106}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v106 .. v106}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 1006
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/smalife/ble/BlueToothService;->userInfo(IIFF)V

    .line 1019
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/smalife/db/SmaDao;->getAim(Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v16

    .line 1020
    .local v16, "aimEntity":Lcom/smalife/db/entity/AimEntity;
    if-eqz v16, :cond_15

    .line 1021
    invoke-virtual/range {v16 .. v16}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->stepAim(I)V

    .line 1025
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->lostSetting(Z)V

    .line 1030
    const/4 v5, 0x2

    .line 1031
    const/4 v6, 0x2

    .line 1032
    const/4 v7, 0x0

    new-array v7, v7, [B

    .line 1029
    invoke-static {v5, v6, v7}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v5

    .line 1028
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1035
    const/4 v5, 0x2

    .line 1036
    const/16 v6, 0x21

    const/4 v7, 0x0

    new-array v7, v7, [B

    .line 1034
    invoke-static {v5, v6, v7}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    goto/16 :goto_2

    .line 989
    .end local v16    # "aimEntity":Lcom/smalife/db/entity/AimEntity;
    .end local v106    # "user":Lcom/smalife/db/entity/UserEntity;
    :cond_16
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 992
    :cond_17
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 1040
    :cond_18
    const/4 v5, 0x5

    move/from16 v0, v25

    if-ne v0, v5, :cond_4e

    .line 1041
    const/4 v5, 0x2

    move/from16 v0, v26

    if-ne v0, v5, :cond_1e

    .line 1042
    const-string v5, "sport_back"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1044
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit8 v40, v5, 0x1f

    .line 1045
    .local v40, "day":I
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x7

    const/16 v6, 0xd

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x8

    or-int v69, v5, v6

    .line 1048
    .local v69, "month":I
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    add-int/lit8 v5, v5, -0x4

    int-to-byte v0, v5

    move/from16 v46, v0

    .line 1049
    .local v46, "dl":B
    new-instance v92, Ljava/util/ArrayList;

    invoke-direct/range {v92 .. v92}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .local v92, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    const/16 v90, 0x0

    .line 1051
    .local v90, "slen":I
    rem-int/lit8 v5, v46, 0x8

    if-nez v5, :cond_19

    .line 1052
    div-int/lit8 v90, v46, 0x8

    .line 1054
    :cond_19
    const/16 v71, 0x0

    .local v71, "n":I
    :goto_9
    move/from16 v0, v71

    move/from16 v1, v90

    if-ge v0, v1, :cond_1

    .line 1055
    new-instance v72, Lcom/smalife/db/entity/SportEntity;

    invoke-direct/range {v72 .. v72}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 1056
    .local v72, "obj":Lcom/smalife/db/entity/SportEntity;
    const/16 v5, 0x8

    new-array v0, v5, [B

    move-object/from16 v93, v0

    .line 1057
    .local v93, "sport":[B
    const/16 v63, 0x0

    .restart local v63    # "m":I
    :goto_a
    const/16 v5, 0x8

    move/from16 v0, v63

    if-lt v0, v5, :cond_1a

    .line 1064
    invoke-static/range {v93 .. v93}, Lcom/smalife/ble/ToolKit;->bytes2BinaryStr([B)Ljava/lang/String;

    move-result-object v94

    .line 1065
    .local v94, "sportString":Ljava/lang/String;
    invoke-virtual/range {v94 .. v94}, Ljava/lang/String;->length()I

    move-result v59

    .line 1066
    .restart local v59    # "len":I
    add-int/lit8 v5, v59, -0x10

    move-object/from16 v0, v94

    move/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 1067
    .local v45, "distenceSting":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x23

    .line 1068
    add-int/lit8 v6, v59, -0x10

    .line 1067
    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1069
    .local v23, "calorieString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x27

    .line 1070
    add-int/lit8 v6, v59, -0x23

    .line 1069
    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v95

    .line 1071
    .local v95, "sportTimeString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x33

    .line 1072
    add-int/lit8 v6, v59, -0x27

    .line 1071
    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v101

    .line 1075
    .local v101, "stepString":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x40

    .line 1076
    add-int/lit8 v6, v59, -0x35

    .line 1075
    move-object/from16 v0, v94

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v74

    .line 1077
    .local v74, "offsetString":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v97

    .line 1079
    .local v97, "sport_dis":I
    invoke-static/range {v23 .. v23}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v96

    .line 1080
    .local v96, "sport_calorie":I
    invoke-static/range {v95 .. v95}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v99

    .line 1083
    .local v99, "sport_time":I
    invoke-static/range {v74 .. v74}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v98

    .line 1084
    .local v98, "sport_offset":I
    invoke-static/range {v101 .. v101}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v102

    .line 1086
    .local v102, "steps":I
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1085
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v22

    .line 1087
    .local v22, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x2

    add-int/lit8 v6, v69, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1088
    const/16 v5, 0x60

    move/from16 v0, v98

    if-le v0, v5, :cond_1c

    .line 1089
    div-int/lit8 v42, v98, 0x60

    .line 1090
    .local v42, "day_index":I
    rem-int/lit8 v98, v98, 0x60

    .line 1091
    move-object/from16 v0, v72

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 1092
    const/4 v5, 0x5

    add-int v6, v40, v42

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1098
    .end local v42    # "day_index":I
    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v47

    .line 1099
    .local v47, "dt":Ljava/util/Date;
    new-instance v37, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v37, "dateFormat":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1101
    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v39

    .line 1102
    .local v39, "dateString":Ljava/lang/String;
    move-object/from16 v0, v72

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 1106
    new-instance v38, Ljava/text/SimpleDateFormat;

    .line 1107
    const-string v5, "yyyyMMddHHmm"

    .line 1106
    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v38, "dateFormat2":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1109
    const-string v73, ""

    .line 1110
    .local v73, "offset":Ljava/lang/String;
    const/16 v5, 0xa

    move/from16 v0, v98

    if-ge v0, v5, :cond_1d

    .line 1111
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    .line 1115
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v73

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 1116
    .local v54, "id":J
    move-object/from16 v0, v72

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/smalife/db/entity/SportEntity;->setSport_id(J)V

    .line 1117
    move/from16 v0, v96

    int-to-float v5, v0

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 1118
    move/from16 v0, v97

    int-to-float v5, v0

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 1119
    move-object/from16 v0, v72

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SportEntity;->setSportTime(I)V

    .line 1120
    move-object/from16 v0, v72

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, v92

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v72

    invoke-virtual {v5, v0, v6}, Lcom/smalife/db/SmaDao;->addSportData(Lcom/smalife/db/entity/SportEntity;Ljava/lang/String;)V

    .line 1054
    add-int/lit8 v71, v71, 0x1

    goto/16 :goto_9

    .line 1058
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v23    # "calorieString":Ljava/lang/String;
    .end local v37    # "dateFormat":Ljava/text/DateFormat;
    .end local v38    # "dateFormat2":Ljava/text/DateFormat;
    .end local v39    # "dateString":Ljava/lang/String;
    .end local v45    # "distenceSting":Ljava/lang/String;
    .end local v47    # "dt":Ljava/util/Date;
    .end local v54    # "id":J
    .end local v59    # "len":I
    .end local v73    # "offset":Ljava/lang/String;
    .end local v74    # "offsetString":Ljava/lang/String;
    .end local v94    # "sportString":Ljava/lang/String;
    .end local v95    # "sportTimeString":Ljava/lang/String;
    .end local v96    # "sport_calorie":I
    .end local v97    # "sport_dis":I
    .end local v98    # "sport_offset":I
    .end local v99    # "sport_time":I
    .end local v101    # "stepString":Ljava/lang/String;
    .end local v102    # "steps":I
    :cond_1a
    mul-int/lit8 v5, v71, 0x8

    add-int/lit8 v5, v5, 0x11

    add-int v30, v5, v63

    .line 1059
    .local v30, "cout":I
    add-int/lit8 v5, v46, 0x11

    move/from16 v0, v30

    if-ge v0, v5, :cond_1b

    .line 1060
    aget-byte v5, p1, v30

    aput-byte v5, v93, v63

    .line 1057
    :cond_1b
    add-int/lit8 v63, v63, 0x1

    goto/16 :goto_a

    .line 1095
    .end local v30    # "cout":I
    .restart local v22    # "calendar":Ljava/util/Calendar;
    .restart local v23    # "calorieString":Ljava/lang/String;
    .restart local v45    # "distenceSting":Ljava/lang/String;
    .restart local v59    # "len":I
    .restart local v74    # "offsetString":Ljava/lang/String;
    .restart local v94    # "sportString":Ljava/lang/String;
    .restart local v95    # "sportTimeString":Ljava/lang/String;
    .restart local v96    # "sport_calorie":I
    .restart local v97    # "sport_dis":I
    .restart local v98    # "sport_offset":I
    .restart local v99    # "sport_time":I
    .restart local v101    # "stepString":Ljava/lang/String;
    .restart local v102    # "steps":I
    :cond_1c
    move-object/from16 v0, v72

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 1096
    const/4 v5, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_b

    .line 1113
    .restart local v37    # "dateFormat":Ljava/text/DateFormat;
    .restart local v38    # "dateFormat2":Ljava/text/DateFormat;
    .restart local v39    # "dateString":Ljava/lang/String;
    .restart local v47    # "dt":Ljava/util/Date;
    .restart local v73    # "offset":Ljava/lang/String;
    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    goto/16 :goto_c

    .line 1126
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v23    # "calorieString":Ljava/lang/String;
    .end local v37    # "dateFormat":Ljava/text/DateFormat;
    .end local v38    # "dateFormat2":Ljava/text/DateFormat;
    .end local v39    # "dateString":Ljava/lang/String;
    .end local v40    # "day":I
    .end local v45    # "distenceSting":Ljava/lang/String;
    .end local v46    # "dl":B
    .end local v47    # "dt":Ljava/util/Date;
    .end local v59    # "len":I
    .end local v63    # "m":I
    .end local v69    # "month":I
    .end local v71    # "n":I
    .end local v72    # "obj":Lcom/smalife/db/entity/SportEntity;
    .end local v73    # "offset":Ljava/lang/String;
    .end local v74    # "offsetString":Ljava/lang/String;
    .end local v90    # "slen":I
    .end local v92    # "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    .end local v93    # "sport":[B
    .end local v94    # "sportString":Ljava/lang/String;
    .end local v95    # "sportTimeString":Ljava/lang/String;
    .end local v96    # "sport_calorie":I
    .end local v97    # "sport_dis":I
    .end local v98    # "sport_offset":I
    .end local v99    # "sport_time":I
    .end local v101    # "stepString":Ljava/lang/String;
    .end local v102    # "steps":I
    :cond_1e
    const/16 v5, 0x42

    move/from16 v0, v26

    if-ne v0, v5, :cond_22

    .line 1127
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1129
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sport_back_shouhuan>>>>count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1131
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v29, v5, 0x8

    .line 1132
    .local v29, "count":I
    if-lez v29, :cond_1f

    .line 1133
    new-instance v37, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1134
    .restart local v37    # "dateFormat":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1135
    new-instance v38, Ljava/text/SimpleDateFormat;

    .line 1136
    const-string v5, "yyyyMMddHHmm"

    .line 1135
    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1137
    .restart local v38    # "dateFormat2":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1138
    new-instance v62, Ljava/util/ArrayList;

    invoke-direct/range {v62 .. v62}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v62, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    const/16 v52, 0x0

    :goto_d
    move/from16 v0, v52

    move/from16 v1, v29

    if-lt v0, v1, :cond_20

    .line 1183
    .end local v37    # "dateFormat":Ljava/text/DateFormat;
    .end local v38    # "dateFormat2":Ljava/text/DateFormat;
    .end local v62    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    :cond_1f
    const/16 v5, 0x14

    move/from16 v0, v29

    if-lt v0, v5, :cond_21

    .line 1184
    const/4 v5, 0x0

    new-array v5, v5, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sport_shouhuan([B)V

    goto/16 :goto_2

    .line 1142
    .restart local v37    # "dateFormat":Ljava/text/DateFormat;
    .restart local v38    # "dateFormat2":Ljava/text/DateFormat;
    .restart local v62    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    :cond_20
    new-instance v80, Lcom/smalife/db/entity/SportEntity;

    invoke-direct/range {v80 .. v80}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 1143
    .local v80, "se":Lcom/smalife/db/entity/SportEntity;
    mul-int/lit8 v5, v52, 0x8

    add-int/lit8 v5, v5, 0xd

    mul-int/lit8 v6, v52, 0x8

    add-int/lit8 v6, v6, 0x15

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v34

    .line 1146
    .local v34, "data":[B
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1145
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 1147
    .local v4, "cal":Ljava/util/Calendar;
    const/16 v5, 0x7d0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1148
    const/16 v5, 0xd

    .line 1150
    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1149
    invoke-static {v6}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1150
    const/16 v7, 0x10

    .line 1148
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1151
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v36

    .line 1153
    .local v36, "date":Ljava/util/Date;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 1154
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1153
    add-int v67, v5, v6

    .line 1155
    .local v67, "minutes":I
    div-int/lit8 v73, v67, 0xf

    .line 1156
    .local v73, "offset":I
    move-object/from16 v0, v80

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 1157
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 1158
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    move/from16 v0, v73

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1158
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v80

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/SportEntity;->setSport_id(J)V

    .line 1162
    const/4 v5, 0x4

    const/16 v6, 0x8

    move-object/from16 v0, v34

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1161
    invoke-static {v5}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1162
    const/16 v6, 0x10

    .line 1160
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 1165
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CountDate="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {v80 .. v80}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1167
    const-string v6, ",date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1168
    invoke-virtual/range {v36 .. v36}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1169
    const-string v6, ",Steps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1170
    invoke-virtual/range {v80 .. v80}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1171
    const-string v6, ",calories = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1172
    invoke-virtual/range {v80 .. v80}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1173
    const-string v6, ",distance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1174
    invoke-virtual/range {v80 .. v80}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1177
    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 1176
    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1177
    const/16 v7, 0x10

    .line 1175
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1178
    const-string v6, ",offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v73

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, v62

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v80

    invoke-virtual {v5, v0, v6}, Lcom/smalife/db/SmaDao;->addSportData(Lcom/smalife/db/entity/SportEntity;Ljava/lang/String;)V

    .line 1141
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_d

    .line 1186
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v34    # "data":[B
    .end local v36    # "date":Ljava/util/Date;
    .end local v37    # "dateFormat":Ljava/text/DateFormat;
    .end local v38    # "dateFormat2":Ljava/text/DateFormat;
    .end local v62    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    .end local v67    # "minutes":I
    .end local v73    # "offset":I
    .end local v80    # "se":Lcom/smalife/db/entity/SportEntity;
    :cond_21
    const/4 v5, 0x0

    new-array v5, v5, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sleep_shouhuan([B)V

    goto/16 :goto_2

    .line 1188
    .end local v29    # "count":I
    :cond_22
    const/4 v5, 0x3

    move/from16 v0, v26

    if-ne v0, v5, :cond_2d

    .line 1189
    const-string v5, "sleep_back"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1191
    const/16 v5, 0xf

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x10

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x0

    or-int v88, v5, v6

    .line 1193
    .local v88, "sleepheader":I
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x7

    const/16 v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x3

    or-int v69, v5, v6

    .line 1194
    .restart local v69    # "month":I
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit8 v40, v5, 0x1f

    .line 1195
    .restart local v40    # "day":I
    const v5, 0xffff

    and-int v84, v88, v5

    .line 1196
    .local v84, "sleep_count":I
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    add-int/lit8 v5, v5, -0x4

    int-to-byte v0, v5

    move/from16 v105, v0

    .line 1197
    .local v105, "total_len":B
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v89, "sleeplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    const/16 v71, 0x0

    .restart local v71    # "n":I
    :goto_e
    move/from16 v0, v71

    move/from16 v1, v84

    if-lt v0, v1, :cond_23

    .line 1273
    const-string v5, "SleepActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    const-string v5, "SleepResult"

    move-object/from16 v0, v56

    move-object/from16 v1, v89

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1199
    :cond_23
    new-instance v72, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct/range {v72 .. v72}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 1200
    .local v72, "obj":Lcom/smalife/db/entity/SleepEntity;
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v82, v0

    .line 1201
    .local v82, "sleep":[B
    const/16 v63, 0x0

    .restart local v63    # "m":I
    :goto_f
    const/4 v5, 0x4

    move/from16 v0, v63

    if-lt v0, v5, :cond_27

    .line 1207
    invoke-static/range {v82 .. v82}, Lcom/smalife/ble/ToolKit;->bytes2BinaryStr([B)Ljava/lang/String;

    move-result-object v83

    .line 1208
    .local v83, "sleepString":Ljava/lang/String;
    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v59

    .line 1209
    .restart local v59    # "len":I
    add-int/lit8 v5, v59, -0x4

    move-object/from16 v0, v83

    move/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v100

    .line 1210
    .local v100, "statusSting":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x20

    .line 1211
    add-int/lit8 v6, v59, -0x10

    .line 1210
    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1212
    .local v14, "actionTimeString":Ljava/lang/String;
    invoke-static/range {v100 .. v100}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v86

    .line 1214
    .local v86, "sleep_model":I
    invoke-static {v14}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v15

    .line 1216
    .local v15, "action_time":I
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1215
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v22

    .line 1217
    .restart local v22    # "calendar":Ljava/util/Calendar;
    const/4 v5, 0x2

    add-int/lit8 v6, v69, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1218
    const/16 v5, 0x5a0

    if-le v15, v5, :cond_29

    .line 1219
    div-int/lit16 v0, v15, 0x5a0

    move/from16 v42, v0

    .line 1220
    .restart local v42    # "day_index":I
    rem-int/lit16 v15, v15, 0x5a0

    .line 1221
    const/4 v5, 0x5

    add-int v6, v40, v42

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1222
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    .line 1227
    .end local v42    # "day_index":I
    :goto_10
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v47

    .line 1228
    .restart local v47    # "dt":Ljava/util/Date;
    if-eqz v47, :cond_24

    .line 1229
    new-instance v44, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v44, "dft":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1231
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v85

    .line 1232
    .local v85, "sleep_date":Ljava/lang/String;
    move-object/from16 v0, v72

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SleepEntity;->setSleep_date(Ljava/lang/String;)V

    .line 1236
    .end local v44    # "dft":Ljava/text/DateFormat;
    .end local v85    # "sleep_date":Ljava/lang/String;
    :cond_24
    new-instance v43, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHH"

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v43, "df":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1238
    const-string v81, ""

    .line 1239
    .local v81, "sle_action":Ljava/lang/String;
    const/16 v5, 0xa

    if-ge v15, v5, :cond_2a

    .line 1240
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "000"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1248
    :cond_25
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v81

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 1249
    .restart local v54    # "id":J
    move-object/from16 v0, v72

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_id(J)V

    .line 1258
    const/4 v5, 0x1

    move/from16 v0, v86

    if-lt v0, v5, :cond_2

    const/4 v5, 0x3

    move/from16 v0, v86

    if-gt v0, v5, :cond_2

    .line 1261
    move-object/from16 v0, v72

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 1262
    const/4 v5, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 1263
    move-object/from16 v0, v89

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/ble/BlueToothService;->syncOpenOrClose:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    .line 1266
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v72

    invoke-virtual {v5, v6, v0}, Lcom/smalife/db/SmaDao;->addSleepData(Ljava/lang/String;Lcom/smalife/db/entity/SleepEntity;)V

    .line 1198
    :cond_26
    add-int/lit8 v71, v71, 0x1

    goto/16 :goto_e

    .line 1202
    .end local v14    # "actionTimeString":Ljava/lang/String;
    .end local v15    # "action_time":I
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v43    # "df":Ljava/text/DateFormat;
    .end local v47    # "dt":Ljava/util/Date;
    .end local v54    # "id":J
    .end local v59    # "len":I
    .end local v81    # "sle_action":Ljava/lang/String;
    .end local v83    # "sleepString":Ljava/lang/String;
    .end local v86    # "sleep_model":I
    .end local v100    # "statusSting":Ljava/lang/String;
    :cond_27
    mul-int/lit8 v5, v71, 0x4

    add-int/lit8 v5, v5, 0x11

    add-int v30, v5, v63

    .line 1203
    .restart local v30    # "cout":I
    add-int/lit8 v5, v105, 0x11

    move/from16 v0, v30

    if-ge v0, v5, :cond_28

    .line 1204
    aget-byte v5, p1, v30

    aput-byte v5, v82, v63

    .line 1201
    :cond_28
    add-int/lit8 v63, v63, 0x1

    goto/16 :goto_f

    .line 1224
    .end local v30    # "cout":I
    .restart local v14    # "actionTimeString":Ljava/lang/String;
    .restart local v15    # "action_time":I
    .restart local v22    # "calendar":Ljava/util/Calendar;
    .restart local v59    # "len":I
    .restart local v83    # "sleepString":Ljava/lang/String;
    .restart local v86    # "sleep_model":I
    .restart local v100    # "statusSting":Ljava/lang/String;
    :cond_29
    const/4 v5, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1225
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1241
    .restart local v43    # "df":Ljava/text/DateFormat;
    .restart local v47    # "dt":Ljava/util/Date;
    .restart local v81    # "sle_action":Ljava/lang/String;
    :cond_2a
    const/16 v5, 0x9

    if-ge v5, v15, :cond_2b

    const/16 v5, 0x64

    if-ge v15, v5, :cond_2b

    .line 1242
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1243
    goto/16 :goto_11

    :cond_2b
    const/16 v5, 0x63

    if-ge v5, v15, :cond_2c

    const/16 v5, 0x3e8

    if-ge v15, v5, :cond_2c

    .line 1244
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1245
    goto/16 :goto_11

    :cond_2c
    const/16 v5, 0x3e7

    if-le v15, v5, :cond_25

    .line 1246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    goto/16 :goto_11

    .line 1275
    .end local v14    # "actionTimeString":Ljava/lang/String;
    .end local v15    # "action_time":I
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v40    # "day":I
    .end local v43    # "df":Ljava/text/DateFormat;
    .end local v47    # "dt":Ljava/util/Date;
    .end local v59    # "len":I
    .end local v63    # "m":I
    .end local v69    # "month":I
    .end local v71    # "n":I
    .end local v72    # "obj":Lcom/smalife/db/entity/SleepEntity;
    .end local v81    # "sle_action":Ljava/lang/String;
    .end local v82    # "sleep":[B
    .end local v83    # "sleepString":Ljava/lang/String;
    .end local v84    # "sleep_count":I
    .end local v86    # "sleep_model":I
    .end local v88    # "sleepheader":I
    .end local v89    # "sleeplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    .end local v100    # "statusSting":Ljava/lang/String;
    .end local v105    # "total_len":B
    :cond_2d
    const/16 v5, 0x46

    move/from16 v0, v26

    if-ne v0, v5, :cond_3b

    .line 1276
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1278
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sleep_back_shouhuan>>>>count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1279
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v29, v5, 0x7

    .line 1281
    .restart local v29    # "count":I
    if-lez v29, :cond_3a

    .line 1282
    new-instance v37, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1283
    .restart local v37    # "dateFormat":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1284
    new-instance v38, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHH"

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1285
    .restart local v38    # "dateFormat2":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1286
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v61, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    const/16 v52, 0x0

    :goto_12
    move/from16 v0, v52

    move/from16 v1, v29

    if-lt v0, v1, :cond_2e

    .line 1364
    const-string v5, "SleepActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    const-string v5, "SleepResult"

    move-object/from16 v0, v56

    move-object/from16 v1, v61

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1366
    const/16 v5, 0x14

    move/from16 v0, v29

    if-lt v0, v5, :cond_39

    .line 1367
    const/4 v5, 0x0

    new-array v5, v5, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->sleep_shouhuan([B)V

    goto/16 :goto_2

    .line 1291
    :cond_2e
    new-instance v80, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct/range {v80 .. v80}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 1292
    .local v80, "se":Lcom/smalife/db/entity/SleepEntity;
    mul-int/lit8 v5, v52, 0x7

    add-int/lit8 v5, v5, 0xd

    mul-int/lit8 v6, v52, 0x7

    add-int/lit8 v6, v6, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v34

    .line 1295
    .restart local v34    # "data":[B
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1294
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 1296
    .restart local v4    # "cal":Ljava/util/Calendar;
    const/16 v5, 0x7d0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1297
    const/16 v5, 0xd

    .line 1299
    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1298
    invoke-static {v6}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1299
    const/16 v7, 0x10

    .line 1297
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1300
    const/16 v5, 0xc

    const/16 v6, -0xf

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1301
    const/4 v5, 0x4

    aget-byte v5, v34, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v68, v0

    .line 1302
    .local v68, "mode":I
    const/4 v5, 0x5

    aget-byte v5, v34, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v91, v0

    .line 1303
    .local v91, "soft":I
    const/4 v5, 0x6

    aget-byte v5, v34, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v103, v0

    .line 1304
    .local v103, "strong":I
    const/16 v5, 0x11

    move/from16 v0, v68

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x22

    move/from16 v0, v68

    if-ne v0, v5, :cond_33

    .line 1305
    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sleep mode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v68

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action_time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1306
    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1307
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1305
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1314
    :goto_13
    const/4 v5, 0x1

    move/from16 v0, v68

    if-ne v0, v5, :cond_30

    .line 1316
    const/4 v5, 0x2

    move/from16 v0, v103

    if-le v0, v5, :cond_34

    .line 1317
    const/16 v68, 0x3

    .line 1328
    :cond_30
    :goto_14
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v36

    .line 1330
    .restart local v36    # "date":Ljava/util/Date;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 1331
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1330
    add-int v67, v5, v6

    .line 1332
    .restart local v67    # "minutes":I
    const-string v81, ""

    .line 1333
    .restart local v81    # "sle_action":Ljava/lang/String;
    const/16 v5, 0xa

    move/from16 v0, v67

    if-ge v0, v5, :cond_35

    .line 1334
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "000"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1342
    :cond_31
    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, v81

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1342
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 1344
    .restart local v54    # "id":J
    move-object/from16 v0, v80

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_id(J)V

    .line 1346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setSleep_date(Ljava/lang/String;)V

    .line 1349
    const/4 v5, 0x0

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 1350
    const/16 v5, 0x11

    move/from16 v0, v68

    if-ne v0, v5, :cond_38

    .line 1351
    const/4 v5, 0x1

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 1352
    const/16 v68, 0x1

    .line 1358
    :cond_32
    :goto_16
    move-object/from16 v0, v80

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 1359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {v80 .. v80}, Lcom/smalife/db/entity/SleepEntity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ",strong = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v103

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",soft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1360
    move/from16 v0, v91

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1359
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 1361
    move-object/from16 v0, v61

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v80

    invoke-virtual {v5, v6, v0}, Lcom/smalife/db/SmaDao;->addSleepData(Ljava/lang/String;Lcom/smalife/db/entity/SleepEntity;)V

    .line 1290
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_12

    .line 1309
    .end local v36    # "date":Ljava/util/Date;
    .end local v54    # "id":J
    .end local v67    # "minutes":I
    .end local v81    # "sle_action":Ljava/lang/String;
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sleep mode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v68

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action_time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1310
    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1311
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1309
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1321
    :cond_34
    const/4 v5, 0x2

    move/from16 v0, v91

    if-le v0, v5, :cond_30

    .line 1322
    const/16 v68, 0x2

    goto/16 :goto_14

    .line 1335
    .restart local v36    # "date":Ljava/util/Date;
    .restart local v67    # "minutes":I
    .restart local v81    # "sle_action":Ljava/lang/String;
    :cond_35
    const/16 v5, 0x9

    move/from16 v0, v67

    if-ge v5, v0, :cond_36

    const/16 v5, 0x64

    move/from16 v0, v67

    if-ge v0, v5, :cond_36

    .line 1336
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1337
    goto/16 :goto_15

    :cond_36
    const/16 v5, 0x63

    move/from16 v0, v67

    if-ge v5, v0, :cond_37

    const/16 v5, 0x3e8

    move/from16 v0, v67

    if-ge v0, v5, :cond_37

    .line 1338
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1339
    goto/16 :goto_15

    :cond_37
    const/16 v5, 0x3e7

    move/from16 v0, v67

    if-le v0, v5, :cond_31

    .line 1340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    goto/16 :goto_15

    .line 1353
    .restart local v54    # "id":J
    :cond_38
    const/16 v5, 0x22

    move/from16 v0, v68

    if-ne v0, v5, :cond_32

    .line 1354
    const/4 v5, 0x1

    move-object/from16 v0, v80

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 1355
    const/16 v68, 0x0

    goto/16 :goto_16

    .line 1370
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v34    # "data":[B
    .end local v36    # "date":Ljava/util/Date;
    .end local v54    # "id":J
    .end local v67    # "minutes":I
    .end local v68    # "mode":I
    .end local v80    # "se":Lcom/smalife/db/entity/SleepEntity;
    .end local v81    # "sle_action":Ljava/lang/String;
    .end local v91    # "soft":I
    .end local v103    # "strong":I
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1374
    .end local v37    # "dateFormat":Ljava/text/DateFormat;
    .end local v38    # "dateFormat2":Ljava/text/DateFormat;
    .end local v61    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1376
    .end local v29    # "count":I
    :cond_3b
    const/4 v5, 0x5

    move/from16 v0, v26

    if-ne v0, v5, :cond_46

    .line 1377
    const-string v5, "sleep_setKey"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1379
    const/16 v5, 0xf

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0x10

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x0

    or-int v88, v5, v6

    .line 1381
    .restart local v88    # "sleepheader":I
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x7

    const/16 v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x3

    or-int v69, v5, v6

    .line 1382
    .restart local v69    # "month":I
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit8 v40, v5, 0x1f

    .line 1383
    .restart local v40    # "day":I
    const v5, 0xffff

    and-int v84, v88, v5

    .line 1384
    .restart local v84    # "sleep_count":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sleep_setKey>>>>count : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v84

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1385
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    add-int/lit8 v5, v5, -0x4

    int-to-byte v0, v5

    move/from16 v105, v0

    .line 1386
    .restart local v105    # "total_len":B
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .restart local v89    # "sleeplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    const/16 v71, 0x0

    .restart local v71    # "n":I
    :goto_17
    move/from16 v0, v71

    move/from16 v1, v84

    if-lt v0, v1, :cond_3c

    .line 1456
    const-string v5, "SleepSetActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v5, "SleepSetResult"

    move-object/from16 v0, v56

    move-object/from16 v1, v89

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1388
    :cond_3c
    new-instance v72, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct/range {v72 .. v72}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 1389
    .restart local v72    # "obj":Lcom/smalife/db/entity/SleepEntity;
    const/4 v5, 0x4

    new-array v0, v5, [B

    move-object/from16 v82, v0

    .line 1390
    .restart local v82    # "sleep":[B
    const/16 v63, 0x0

    .restart local v63    # "m":I
    :goto_18
    const/4 v5, 0x4

    move/from16 v0, v63

    if-lt v0, v5, :cond_40

    .line 1396
    invoke-static/range {v82 .. v82}, Lcom/smalife/ble/ToolKit;->bytes2BinaryStr([B)Ljava/lang/String;

    move-result-object v83

    .line 1397
    .restart local v83    # "sleepString":Ljava/lang/String;
    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v59

    .line 1398
    .restart local v59    # "len":I
    add-int/lit8 v5, v59, -0x4

    move-object/from16 v0, v83

    move/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v100

    .line 1399
    .restart local v100    # "statusSting":Ljava/lang/String;
    add-int/lit8 v5, v59, -0x20

    .line 1400
    add-int/lit8 v6, v59, -0x10

    .line 1399
    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1401
    .restart local v14    # "actionTimeString":Ljava/lang/String;
    invoke-static/range {v100 .. v100}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v87

    .line 1403
    .local v87, "sleep_type":I
    invoke-static {v14}, Lcom/smalife/ble/ToolKit;->binaryStr2Integer(Ljava/lang/String;)I

    move-result v15

    .line 1405
    .restart local v15    # "action_time":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 1406
    .restart local v22    # "calendar":Ljava/util/Calendar;
    const/4 v5, 0x2

    add-int/lit8 v6, v69, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1407
    const/16 v5, 0x5a0

    if-le v15, v5, :cond_42

    .line 1408
    div-int/lit16 v0, v15, 0x5a0

    move/from16 v42, v0

    .line 1409
    .restart local v42    # "day_index":I
    rem-int/lit16 v15, v15, 0x5a0

    .line 1410
    const/4 v5, 0x5

    add-int v6, v40, v42

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1411
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    .line 1416
    .end local v42    # "day_index":I
    :goto_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v47

    .line 1417
    .restart local v47    # "dt":Ljava/util/Date;
    if-eqz v47, :cond_3d

    .line 1418
    new-instance v44, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1419
    .restart local v44    # "dft":Ljava/text/DateFormat;
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v85

    .line 1420
    .restart local v85    # "sleep_date":Ljava/lang/String;
    move-object/from16 v0, v72

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SleepEntity;->setSleep_date(Ljava/lang/String;)V

    .line 1427
    .end local v44    # "dft":Ljava/text/DateFormat;
    .end local v85    # "sleep_date":Ljava/lang/String;
    :cond_3d
    const/4 v5, 0x1

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 1428
    move-object/from16 v0, v72

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 1431
    new-instance v43, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHH"

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1432
    .restart local v43    # "df":Ljava/text/DateFormat;
    const-string v81, ""

    .line 1433
    .restart local v81    # "sle_action":Ljava/lang/String;
    const/16 v5, 0xa

    if-ge v15, v5, :cond_43

    .line 1434
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "000"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1442
    :cond_3e
    :goto_1a
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v81

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 1443
    .restart local v54    # "id":J
    move-object/from16 v0, v72

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_id(J)V

    .line 1445
    move-object/from16 v0, v89

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smalife/ble/BlueToothService;->syncOpenOrClose:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    .line 1448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v72

    invoke-virtual {v5, v6, v0}, Lcom/smalife/db/SmaDao;->addSleepData(Ljava/lang/String;Lcom/smalife/db/entity/SleepEntity;)V

    .line 1387
    :cond_3f
    add-int/lit8 v71, v71, 0x1

    goto/16 :goto_17

    .line 1391
    .end local v14    # "actionTimeString":Ljava/lang/String;
    .end local v15    # "action_time":I
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v43    # "df":Ljava/text/DateFormat;
    .end local v47    # "dt":Ljava/util/Date;
    .end local v54    # "id":J
    .end local v59    # "len":I
    .end local v81    # "sle_action":Ljava/lang/String;
    .end local v83    # "sleepString":Ljava/lang/String;
    .end local v87    # "sleep_type":I
    .end local v100    # "statusSting":Ljava/lang/String;
    :cond_40
    mul-int/lit8 v5, v71, 0x4

    add-int/lit8 v5, v5, 0x11

    add-int v30, v5, v63

    .line 1392
    .restart local v30    # "cout":I
    add-int/lit8 v5, v105, 0x11

    move/from16 v0, v30

    if-ge v0, v5, :cond_41

    .line 1393
    aget-byte v5, p1, v30

    aput-byte v5, v82, v63

    .line 1390
    :cond_41
    add-int/lit8 v63, v63, 0x1

    goto/16 :goto_18

    .line 1413
    .end local v30    # "cout":I
    .restart local v14    # "actionTimeString":Ljava/lang/String;
    .restart local v15    # "action_time":I
    .restart local v22    # "calendar":Ljava/util/Calendar;
    .restart local v59    # "len":I
    .restart local v83    # "sleepString":Ljava/lang/String;
    .restart local v87    # "sleep_type":I
    .restart local v100    # "statusSting":Ljava/lang/String;
    :cond_42
    const/4 v5, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1414
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1435
    .restart local v43    # "df":Ljava/text/DateFormat;
    .restart local v47    # "dt":Ljava/util/Date;
    .restart local v81    # "sle_action":Ljava/lang/String;
    :cond_43
    const/16 v5, 0x9

    if-ge v5, v15, :cond_44

    const/16 v5, 0x64

    if-ge v15, v5, :cond_44

    .line 1436
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1437
    goto/16 :goto_1a

    :cond_44
    const/16 v5, 0x63

    if-ge v5, v15, :cond_45

    const/16 v5, 0x3e8

    if-ge v15, v5, :cond_45

    .line 1438
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    .line 1439
    goto/16 :goto_1a

    :cond_45
    const/16 v5, 0x3e7

    if-le v15, v5, :cond_3e

    .line 1440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    goto/16 :goto_1a

    .line 1458
    .end local v14    # "actionTimeString":Ljava/lang/String;
    .end local v15    # "action_time":I
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v40    # "day":I
    .end local v43    # "df":Ljava/text/DateFormat;
    .end local v47    # "dt":Ljava/util/Date;
    .end local v59    # "len":I
    .end local v63    # "m":I
    .end local v69    # "month":I
    .end local v71    # "n":I
    .end local v72    # "obj":Lcom/smalife/db/entity/SleepEntity;
    .end local v81    # "sle_action":Ljava/lang/String;
    .end local v82    # "sleep":[B
    .end local v83    # "sleepString":Ljava/lang/String;
    .end local v84    # "sleep_count":I
    .end local v87    # "sleep_type":I
    .end local v88    # "sleepheader":I
    .end local v89    # "sleeplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    .end local v100    # "statusSting":Ljava/lang/String;
    .end local v105    # "total_len":B
    :cond_46
    const/4 v5, 0x7

    move/from16 v0, v26

    if-ne v0, v5, :cond_47

    .line 1459
    const-string v5, "sync_start"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1460
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/smalife/ble/BlueToothService;->syncOpenOrClose:I

    goto/16 :goto_2

    .line 1461
    :cond_47
    const/16 v5, 0x8

    move/from16 v0, v26

    if-ne v0, v5, :cond_48

    .line 1462
    const-string v5, "sync_end"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1463
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/smalife/ble/BlueToothService;->syncOpenOrClose:I

    goto/16 :goto_2

    .line 1464
    :cond_48
    const/16 v5, 0x21

    move/from16 v0, v26

    if-ne v0, v5, :cond_4a

    .line 1465
    const-string v5, "rate_back"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getCurRateTime()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1470
    new-instance v48, Lcom/smalife/db/entity/RateEntity;

    invoke-direct/range {v48 .. v48}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 1471
    .local v48, "entity":Lcom/smalife/db/entity/RateEntity;
    const/16 v5, 0xd

    aget-byte v107, p1, v5

    .line 1473
    .local v107, "value":I
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 1472
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v22

    .line 1474
    .restart local v22    # "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v47

    .line 1475
    .restart local v47    # "dt":Ljava/util/Date;
    if-eqz v47, :cond_49

    .line 1476
    new-instance v44, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1477
    .restart local v44    # "dft":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1478
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v75

    .line 1479
    .local v75, "rate_date":Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 1481
    .end local v44    # "dft":Ljava/text/DateFormat;
    .end local v75    # "rate_date":Ljava/lang/String;
    :cond_49
    sget v5, Lcom/smalife/db/entity/RateEntity;->STATUS_NORMAL:I

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getCurRateTime()I

    move-result v5

    int-to-long v6, v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getCurRateID()J

    move-result-wide v6

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/smalife/MyApplication;->editCurRateTime(I)V

    .line 1486
    move-object/from16 v0, v48

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 1487
    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/RateEntity;->setSync(I)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v6}, Lcom/smalife/db/SmaDao;->addRateData(Lcom/smalife/db/entity/RateEntity;Ljava/lang/String;)V

    .line 1489
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RateEntity="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v48 .. v48}, Lcom/smalife/db/entity/RateEntity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1490
    .end local v22    # "calendar":Ljava/util/Calendar;
    .end local v47    # "dt":Ljava/util/Date;
    .end local v48    # "entity":Lcom/smalife/db/entity/RateEntity;
    .end local v107    # "value":I
    :cond_4a
    const/16 v5, 0x44

    move/from16 v0, v26

    if-ne v0, v5, :cond_1

    .line 1491
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 1492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1493
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rate_back_shouhuan>>>>count="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1499
    const/16 v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v29, v5, 0x5

    .line 1500
    .restart local v29    # "count":I
    if-lez v29, :cond_1

    .line 1501
    new-instance v37, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1502
    .restart local v37    # "dateFormat":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1503
    new-instance v38, Ljava/text/SimpleDateFormat;

    .line 1504
    const-string v5, "yyyyMMddHHmm"

    .line 1503
    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1505
    .restart local v38    # "dateFormat2":Ljava/text/DateFormat;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1508
    const/16 v52, 0x0

    :goto_1b
    move/from16 v0, v52

    move/from16 v1, v29

    if-lt v0, v1, :cond_4b

    .line 1546
    const/16 v5, 0x14

    move/from16 v0, v29

    if-lt v0, v5, :cond_4d

    .line 1547
    const/4 v5, 0x0

    new-array v5, v5, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smalife/ble/BlueToothService;->getRate_shouhuan([B)V

    goto/16 :goto_2

    .line 1509
    :cond_4b
    mul-int/lit8 v5, v52, 0x5

    add-int/lit8 v5, v5, 0xd

    mul-int/lit8 v6, v52, 0x5

    add-int/lit8 v6, v6, 0x12

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v34

    .line 1510
    .restart local v34    # "data":[B
    new-instance v76, Lcom/smalife/db/entity/RateEntity;

    invoke-direct/range {v76 .. v76}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 1511
    .local v76, "re":Lcom/smalife/db/entity/RateEntity;
    const/4 v5, 0x4

    aget-byte v5, v34, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v107, v0

    .line 1513
    .restart local v107    # "value":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1514
    .restart local v4    # "cal":Ljava/util/Calendar;
    const-string v5, "GMT+1"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1515
    const/16 v5, 0x7d0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1518
    const/16 v5, 0xd

    .line 1520
    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, v34

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1519
    invoke-static {v6}, Lcom/smalife/ble/ToolKit;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1520
    const/16 v7, 0x10

    .line 1518
    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1522
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v36

    .line 1524
    .restart local v36    # "date":Ljava/util/Date;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v50

    .line 1525
    .local v50, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v66

    .line 1527
    .local v66, "minute":I
    const/16 v5, 0x1e

    move/from16 v0, v66

    if-gt v0, v5, :cond_4c

    .line 1528
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1529
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1528
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v76

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 1530
    mul-int/lit8 v5, v50, 0x2

    int-to-long v6, v5

    move-object/from16 v0, v76

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 1537
    :goto_1c
    const/4 v5, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/RateEntity;->setSync(I)V

    .line 1538
    move-object/from16 v0, v76

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 1539
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 1540
    sget v5, Lcom/smalife/db/entity/RateEntity;->STATUS_NORMAL:I

    move-object/from16 v0, v76

    invoke-virtual {v0, v5}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 1541
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RateEntity="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v76 .. v76}, Lcom/smalife/db/entity/RateEntity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    move-object/from16 v0, v76

    invoke-virtual {v5, v0, v6}, Lcom/smalife/db/SmaDao;->addRateData(Lcom/smalife/db/entity/RateEntity;Ljava/lang/String;)V

    .line 1508
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_1b

    .line 1532
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1533
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0030"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1532
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v76

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 1534
    mul-int/lit8 v5, v50, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    move-object/from16 v0, v76

    invoke-virtual {v0, v6, v7}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    goto :goto_1c

    .line 1550
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v34    # "data":[B
    .end local v36    # "date":Ljava/util/Date;
    .end local v50    # "hour":I
    .end local v66    # "minute":I
    .end local v76    # "re":Lcom/smalife/db/entity/RateEntity;
    .end local v107    # "value":I
    :cond_4d
    new-instance v52, Landroid/content/Intent;

    .end local v52    # "i":I
    const-string v5, "refresh_data"

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v52, "i":Landroid/content/Intent;
    const-string v5, "refresh_result"

    const/4 v6, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1552
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1556
    .end local v29    # "count":I
    .end local v37    # "dateFormat":Ljava/text/DateFormat;
    .end local v38    # "dateFormat2":Ljava/text/DateFormat;
    .local v52, "i":I
    :cond_4e
    sget v5, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->contral_cmd:I

    move/from16 v0, v25

    if-ne v0, v5, :cond_1

    .line 1557
    sget v5, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->contral_key:I

    move/from16 v0, v26

    if-ne v0, v5, :cond_1

    .line 1558
    const-string v5, "control_key"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 1559
    const/16 v5, 0xd

    aget-byte v28, p1, v5

    .line 1560
    .local v28, "code_v":B
    const-string v5, "ContalActionResult"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const-string v5, "ContralResult"

    move-object/from16 v0, v56

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1562
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smalife/ble/BlueToothService;->callRunning:Z

    if-eqz v5, :cond_4f

    .line 1563
    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_50

    .line 1564
    invoke-direct/range {p0 .. p0}, Lcom/smalife/ble/BlueToothService;->endCall()V

    .line 1569
    :cond_4f
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/smalife/ble/BlueToothService;->InteractAction(I)V

    goto/16 :goto_2

    .line 1566
    :cond_50
    invoke-direct/range {p0 .. p0}, Lcom/smalife/ble/BlueToothService;->silentRing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1d
.end method

.method private rebackACK([B)V
    .locals 5
    .param p1, "rt"    # [B

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 1581
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 1582
    .local v0, "Ack":[B
    const/4 v1, 0x0

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    .line 1583
    const/4 v1, 0x1

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 1584
    aget-byte v1, p1, v3

    aput-byte v1, v0, v3

    .line 1585
    aget-byte v1, p1, v4

    aput-byte v1, v0, v4

    .line 1586
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1587
    return-void
.end method

.method private receiveData([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/16 v6, 0xab

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 667
    if-eqz p1, :cond_3

    array-length v3, p1

    if-lt v3, v5, :cond_3

    .line 669
    array-length v3, p1

    if-le v3, v5, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_0

    .line 670
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v8, :cond_0

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 671
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_0

    array-length v3, p1

    if-ne v3, v7, :cond_0

    .line 672
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 673
    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x5

    add-int/lit8 v3, v3, 0xd

    iput v3, p0, Lcom/smalife/ble/BlueToothService;->len:I

    .line 678
    :cond_0
    array-length v3, p1

    if-ne v3, v7, :cond_2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v6, :cond_2

    .line 679
    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v8, :cond_1

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    .line 680
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6536\u5230ack\u6216nack"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore_NACK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 685
    :cond_2
    iget v3, p0, Lcom/smalife/ble/BlueToothService;->len:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/smalife/ble/BlueToothService;->rt:[B

    .line 686
    array-length v1, p1

    .line 688
    .local v1, "size":I
    iget v3, p0, Lcom/smalife/ble/BlueToothService;->len:I

    if-gt v1, v3, :cond_5

    iget-object v3, p0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/smalife/ble/BlueToothService;->len:I

    if-ge v3, v4, :cond_5

    .line 689
    array-length v3, p1

    :goto_0
    if-lt v2, v3, :cond_4

    .line 693
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/smalife/ble/BlueToothService;->len:I

    if-ne v2, v3, :cond_3

    .line 694
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->rt:[B

    invoke-direct {p0, v2}, Lcom/smalife/ble/BlueToothService;->parserData([B)V

    .line 701
    .end local v1    # "size":I
    :cond_3
    :goto_1
    return-void

    .line 689
    .restart local v1    # "size":I
    :cond_4
    aget-byte v0, p1, v2

    .line 690
    .local v0, "b":B
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "b":B
    :cond_5
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->dlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private declared-synchronized resetWriteThread()V
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    const-string v0, "resetWriteThread"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mTaskQueen:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mTaskQueen:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore_NACK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSemaphore_NACK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_2
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendCallMessage(Ljava/lang/String;)V
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xc8

    const/16 v12, 0x10

    .line 2528
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2529
    .local v5, "message":Ljava/lang/String;
    new-array v9, v12, [B

    .line 2530
    .local v9, "tittle_cmd":[B
    const/4 v6, 0x0

    .line 2531
    .local v6, "message_cmd":[B
    const/4 v7, 0x0

    .line 2532
    .local v7, "t_cmd":[B
    const/4 v3, 0x0

    .line 2534
    .local v3, "m_cmd":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 2535
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2540
    :goto_0
    if-eqz v7, :cond_0

    array-length v10, v7

    if-lez v10, :cond_0

    .line 2541
    array-length v10, v7

    if-gt v10, v12, :cond_4

    .line 2542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v7

    if-lt v2, v10, :cond_3

    .line 2551
    .end local v2    # "i":I
    :cond_0
    if-eqz v3, :cond_2

    array-length v10, v3

    if-lez v10, :cond_2

    .line 2552
    array-length v10, v3

    if-le v10, v13, :cond_6

    .line 2553
    new-array v6, v13, [B

    .line 2554
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-lt v2, v13, :cond_5

    .line 2567
    :cond_1
    array-length v8, v9

    .line 2568
    .local v8, "t_length":I
    array-length v4, v6

    .line 2570
    .local v4, "m_length":I
    add-int v10, v8, v4

    new-array v0, v10, [B

    .line 2572
    .local v0, "cmd":[B
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v8, :cond_7

    .line 2575
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v4, :cond_8

    .line 2578
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->sendMessage([B)V

    .line 2579
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sendCallMessage >>>>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2580
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2579
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2581
    .end local v0    # "cmd":[B
    .end local v2    # "i":I
    .end local v4    # "m_length":I
    .end local v8    # "t_length":I
    :cond_2
    return-void

    .line 2536
    :catch_0
    move-exception v1

    .line 2537
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 2543
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    :cond_3
    aget-byte v10, v7, v2

    aput-byte v10, v9, v2

    .line 2542
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2546
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v12, :cond_0

    .line 2547
    aget-byte v10, v7, v2

    aput-byte v10, v9, v2

    .line 2546
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2555
    :cond_5
    aget-byte v10, v3, v2

    aput-byte v10, v6, v2

    .line 2554
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2558
    .end local v2    # "i":I
    :cond_6
    array-length v10, v3

    new-array v6, v10, [B

    .line 2559
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    array-length v10, v3

    if-ge v2, v10, :cond_1

    .line 2560
    aget-byte v10, v3, v2

    aput-byte v10, v6, v2

    .line 2559
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2573
    .restart local v0    # "cmd":[B
    .restart local v4    # "m_length":I
    .restart local v8    # "t_length":I
    :cond_7
    aget-byte v10, v9, v2

    aput-byte v10, v0, v2

    .line 2572
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2576
    :cond_8
    add-int/lit8 v10, v2, 0x10

    aget-byte v11, v6, v2

    aput-byte v11, v0, v10

    .line 2575
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private setForeground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2872
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2873
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v2, 0x7f0200d5

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2874
    const/high16 v3, 0x7f090000

    invoke-virtual {p0, v3}, Lcom/smalife/ble/BlueToothService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2877
    new-instance v3, Landroid/content/Intent;

    .line 2878
    const-class v4, Lcom/smalife/activity/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2877
    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2876
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2878
    const-string v3, "Sma"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2879
    const v3, 0x7f0900bd

    invoke-virtual {p0, v3}, Lcom/smalife/ble/BlueToothService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2880
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 2882
    .local v1, "notification":Landroid/app/Notification;
    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 2883
    const/16 v2, 0x224

    invoke-virtual {p0, v2, v1}, Lcom/smalife/ble/BlueToothService;->startForeground(ILandroid/app/Notification;)V

    .line 2884
    return-void
.end method

.method private setSystemTime()V
    .locals 8

    .prologue
    .line 2760
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2761
    .local v7, "c":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v1, v0

    .line 2762
    .local v1, "year":B
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v2, v0

    .line 2763
    .local v2, "month":B
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v3, v0

    .line 2764
    .local v3, "day":B
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v4, v0

    .line 2765
    .local v4, "hour":B
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v5, v0

    .line 2766
    .local v5, "mintue":B
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v6, v0

    .local v6, "second":B
    move-object v0, p0

    .line 2767
    invoke-virtual/range {v0 .. v6}, Lcom/smalife/ble/BlueToothService;->systemTimer(BBBBBB)V

    .line 2768
    return-void
.end method

.method private silentRing()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2690
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/smalife/ble/BlueToothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 2691
    .local v5, "telMag":Landroid/telephony/TelephonyManager;
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 2692
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/telephony/TelephonyManager;>;"
    const/4 v4, 0x0

    .line 2694
    .local v4, "mthEndCall":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v6, "getITelephony"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2695
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2697
    const/4 v6, 0x0

    .line 2696
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ITelephony;

    .line 2698
    .local v2, "iTel":Lcom/android/internal/telephony/ITelephony;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 2699
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2705
    .end local v2    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 2700
    :catch_0
    move-exception v1

    .line 2702
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/smalife/ble/BlueToothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2701
    check-cast v3, Landroid/media/AudioManager;

    .line 2703
    .local v3, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private startScan()V
    .locals 2

    .prologue
    .line 2950
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isScaned:Z

    if-nez v0, :cond_0

    .line 2951
    const-string v0, "startScan"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2952
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 2953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isScaned:Z

    .line 2955
    :cond_0
    return-void
.end method

.method private stopScan()V
    .locals 2

    .prologue
    .line 2961
    iget-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isScaned:Z

    if-eqz v0, :cond_0

    .line 2962
    const-string v0, "stopScan"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 2964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/ble/BlueToothService;->isScaned:Z

    .line 2966
    :cond_0
    return-void
.end method

.method private unpairDevice()V
    .locals 8

    .prologue
    .line 2019
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2046
    :goto_0
    return-void

    .line 2023
    :cond_0
    const-string v5, "unpairDevice"

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2025
    :try_start_0
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2026
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2027
    const-string v6, "removeBond"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2028
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2029
    .local v4, "success":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unpairDevice result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2030
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "success":Z
    :catch_0
    move-exception v2

    .line 2031
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public InteractAction(I)V
    .locals 1
    .param p1, "code_v"    # I

    .prologue
    .line 2713
    sget v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->long_press1:I

    if-eq p1, v0, :cond_0

    .line 2714
    sget v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->long_press2:I

    if-ne p1, v0, :cond_2

    .line 2715
    :cond_0
    sget v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->long_press1:I

    if-ne p1, v0, :cond_3

    .line 2716
    const/16 v0, 0x20

    iput v0, p0, Lcom/smalife/ble/BlueToothService;->code_key:I

    .line 2721
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v0, :cond_2

    .line 2722
    iget v0, p0, Lcom/smalife/ble/BlueToothService;->code_key:I

    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->dispatcherMsg(I)V

    .line 2725
    :cond_2
    return-void

    .line 2717
    :cond_3
    sget v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->long_press2:I

    if-ne p1, v0, :cond_1

    .line 2718
    const/16 v0, 0x21

    iput v0, p0, Lcom/smalife/ble/BlueToothService;->code_key:I

    goto :goto_0
.end method

.method public OTAMode([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v2, 0x1

    .line 1621
    const-string v1, "OTAMode"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1623
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1622
    invoke-static {v2, v2, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1624
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1625
    return-void
.end method

.method public batteryLevel([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1634
    const-string v1, "batteryLevel"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1635
    const/4 v1, 0x2

    .line 1636
    const/16 v2, 0x8

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1635
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1637
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1638
    return-void
.end method

.method public bond([B)V
    .locals 5
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/16 v4, 0x20

    .line 1591
    const-string v3, "bond"

    invoke-static {v3}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1592
    if-eqz p1, :cond_0

    array-length v3, p1

    if-ltz v3, :cond_0

    array-length v3, p1

    if-le v3, v4, :cond_1

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    new-array v0, v4, [B

    .line 1595
    .local v0, "bond_cmd":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_2

    .line 1599
    const/4 v3, 0x3

    .line 1600
    const/4 v4, 0x1

    .line 1598
    invoke-static {v3, v4, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v1

    .line 1601
    .local v1, "cmd":[B
    invoke-virtual {p0, v1}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    goto :goto_0

    .line 1596
    .end local v1    # "cmd":[B
    :cond_2
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    .line 1595
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public callIdle([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2180
    const/4 v1, 0x4

    .line 2181
    const/4 v2, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 2180
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2182
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2183
    return-void
.end method

.method public callOffHook([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2187
    const/4 v1, 0x4

    .line 2188
    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 2187
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2189
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2190
    return-void
.end method

.method public callcoming([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1875
    const/4 v1, 0x4

    .line 1876
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1874
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1877
    .local v0, "ring_cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1878
    return-void
.end method

.method public clockList()V
    .locals 4

    .prologue
    .line 1705
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 1706
    .local v1, "cmd_bytes":[B
    const/4 v2, 0x2

    .line 1707
    const/4 v3, 0x3

    .line 1706
    invoke-static {v2, v3, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1708
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1709
    return-void
.end method

.method public clockSetting(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1658
    .local p1, "tlist":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/adapter/TimeField;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 1660
    const/4 v5, 0x0

    .line 1661
    .local v5, "count":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1690
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 1691
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v4, v14, [B

    .line 1692
    .local v4, "cmd_bytes":[B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v14, v4

    if-lt v8, v14, :cond_3

    .line 1696
    const/4 v14, 0x2

    .line 1697
    const/4 v15, 0x2

    .line 1695
    invoke-static {v14, v15, v4}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v3

    .line 1698
    .local v3, "cmd":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1701
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "cmd":[B
    .end local v4    # "cmd_bytes":[B
    .end local v5    # "count":B
    .end local v8    # "j":I
    :cond_0
    return-void

    .line 1662
    .restart local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v5    # "count":B
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smalife/adapter/TimeField;

    .line 1663
    .local v12, "time":Lcom/smalife/adapter/TimeField;
    const/4 v14, 0x5

    new-array v4, v14, [B

    .line 1664
    .restart local v4    # "cmd_bytes":[B
    iget v14, v12, Lcom/smalife/adapter/TimeField;->repeat:I

    int-to-byte v11, v14

    .line 1665
    .local v11, "repeat":B
    iget-byte v13, v12, Lcom/smalife/adapter/TimeField;->year:B

    .line 1666
    .local v13, "year":B
    iget-byte v10, v12, Lcom/smalife/adapter/TimeField;->month:B

    .line 1667
    .local v10, "month":B
    iget-byte v6, v12, Lcom/smalife/adapter/TimeField;->day:B

    .line 1668
    .local v6, "day":B
    iget-byte v7, v12, Lcom/smalife/adapter/TimeField;->hour:B

    .line 1669
    .local v7, "hour":B
    iget-byte v9, v12, Lcom/smalife/adapter/TimeField;->mintue:B

    .line 1670
    .local v9, "min":B
    const/4 v14, 0x4

    aput-byte v11, v4, v14

    .line 1671
    const/4 v14, 0x3

    shl-int/lit8 v16, v5, 0x3

    shl-int/lit8 v17, v9, 0x6

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v4, v14

    .line 1672
    const/4 v14, 0x2

    shl-int/lit8 v16, v7, 0x4

    shr-int/lit8 v17, v9, 0x2

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v4, v14

    .line 1673
    const/4 v14, 0x1

    shl-int/lit8 v16, v6, 0x1

    shl-int/lit8 v17, v10, 0x6

    or-int v16, v16, v17

    shr-int/lit8 v17, v13, 0x4

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v4, v14

    .line 1674
    const/4 v14, 0x0

    shl-int/lit8 v16, v13, 0x2

    shr-int/lit8 v17, v10, 0x2

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v4, v14

    .line 1685
    array-length v0, v4

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-lt v14, v0, :cond_2

    .line 1688
    add-int/lit8 v14, v5, 0x1

    int-to-byte v5, v14

    goto/16 :goto_0

    .line 1685
    :cond_2
    aget-byte v1, v4, v14

    .line 1686
    .local v1, "c":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1693
    .end local v1    # "c":B
    .end local v6    # "day":B
    .end local v7    # "hour":B
    .end local v9    # "min":B
    .end local v10    # "month":B
    .end local v11    # "repeat":B
    .end local v12    # "time":Lcom/smalife/adapter/TimeField;
    .end local v13    # "year":B
    .restart local v8    # "j":I
    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    aput-byte v14, v4, v8

    .line 1692
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public closeCamera([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2201
    const/4 v1, 0x2

    .line 2202
    const/16 v2, 0x42

    const/4 v3, 0x1

    new-array v3, v3, [B

    .line 2201
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2203
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2204
    return-void
.end method

.method public declared-synchronized connectBLE(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "toothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->duankai()V

    .line 328
    if-nez p1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->initializeBluetooth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smalife/ble/BlueToothService$6;

    invoke-direct {v1, p0, p1}, Lcom/smalife/ble/BlueToothService$6;-><init>(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothDevice;)V

    .line 344
    const-wide/16 v2, 0xc8

    .line 331
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatcherMsg(I)V
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 2733
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getFriendAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/ble/BlueToothService;->fAccount:Ljava/lang/String;

    .line 2734
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 2735
    .local v0, "disMsg":Lcom/accloud/service/ACMsg;
    const-string v1, "dispatcherMsg"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 2736
    const-string v1, "dis_account"

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->fAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 2737
    const-string v1, "content_key"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 2738
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ble/BlueToothService$8;

    invoke-direct {v2, p0}, Lcom/smalife/ble/BlueToothService$8;-><init>(Lcom/smalife/ble/BlueToothService;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 2754
    return-void
.end method

.method public enableCall(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2216
    new-array v1, v3, [B

    .line 2217
    .local v1, "extra":[B
    if-eqz p1, :cond_0

    .line 2218
    const/4 v2, 0x0

    aput-byte v3, v1, v2

    .line 2220
    :cond_0
    const/4 v2, 0x2

    .line 2221
    const/16 v3, 0x26

    .line 2220
    invoke-static {v2, v3, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2222
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2223
    return-void
.end method

.method public enableSms(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2228
    new-array v1, v3, [B

    .line 2229
    .local v1, "extra":[B
    if-eqz p1, :cond_0

    .line 2230
    const/4 v2, 0x0

    aput-byte v3, v1, v2

    .line 2232
    :cond_0
    const/4 v2, 0x2

    .line 2233
    const/16 v3, 0x27

    .line 2232
    invoke-static {v2, v3, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2234
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2235
    return-void
.end method

.method public endCall([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1891
    const/4 v1, 0x4

    .line 1892
    const/4 v2, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1890
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1893
    .local v0, "endcall_cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1894
    return-void
.end method

.method public getCall([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1883
    const/4 v1, 0x4

    .line 1884
    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1882
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1885
    .local v0, "ring_cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1886
    return-void
.end method

.method public getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2626
    if-nez p1, :cond_1

    .line 2643
    :cond_0
    :goto_0
    return-object v6

    .line 2628
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2631
    move-object v6, p1

    .line 2633
    .local v6, "contactName":Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 2634
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2633
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2635
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2636
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2635
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2637
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2638
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2640
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2642
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2643
    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getFirmWareVersion([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2095
    const-string v1, "getFirmWareVersion"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2096
    const/4 v1, 0x2

    .line 2097
    const/16 v2, 0xa

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 2096
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2098
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2099
    return-void
.end method

.method public getNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2584
    const-string v6, ""

    .line 2585
    .local v6, "contactName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2587
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 2588
    const-string v3, "data1 = ?"

    .line 2589
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    move-object v5, v2

    .line 2586
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2590
    .local v7, "pCur":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2593
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2592
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2596
    :cond_0
    return-object v6
.end method

.method public getRate([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2103
    const/4 v1, 0x5

    .line 2104
    const/16 v2, 0x20

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 2103
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2105
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2106
    return-void
.end method

.method public getRate_shouhuan([B)V
    .locals 6
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 2110
    const-string v1, "getRate_shouhuan"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2111
    const/4 v1, 0x5

    .line 2112
    const/16 v2, 0x43

    new-array v3, v4, [B

    .line 2111
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2113
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2114
    iput-boolean v4, p0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 2115
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2116
    return-void
.end method

.method public getSystemTime([B)V
    .locals 4
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2143
    const/4 v1, 0x2

    .line 2144
    const/4 v2, 0x6

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 2143
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2145
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2146
    return-void
.end method

.method public initializeBluetooth()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 418
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 419
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 418
    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->startScan()V

    .line 435
    return-void
.end method

.method public languageSet([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "languageSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2166
    const/4 v1, 0x2

    .line 2167
    const/16 v2, 0x34

    .line 2166
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2168
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2169
    return-void
.end method

.method public lightHandSet([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 2157
    const/4 v1, 0x2

    .line 2158
    const/16 v2, 0x35

    .line 2157
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2159
    .local v0, "cmd":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lightHandSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2161
    return-void
.end method

.method public login([B)V
    .locals 6
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x3

    .line 1606
    const-string v3, "login"

    invoke-static {v3}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1607
    if-eqz p1, :cond_0

    array-length v3, p1

    if-ltz v3, :cond_0

    array-length v3, p1

    if-le v3, v5, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    new-array v0, v5, [B

    .line 1610
    .local v0, "bond_cmd":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_2

    .line 1613
    invoke-static {v4, v4, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v1

    .line 1616
    .local v1, "cmd":[B
    invoke-virtual {p0, v1}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    goto :goto_0

    .line 1611
    .end local v1    # "cmd":[B
    :cond_2
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    .line 1610
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public longsit([IBBBIBB)V
    .locals 6
    .param p1, "days"    # [I
    .param p2, "end"    # B
    .param p3, "start"    # B
    .param p4, "sit"    # B
    .param p5, "steps"    # I
    .param p6, "open"    # B
    .param p7, "repeate"    # B

    .prologue
    const/4 v5, 0x2

    .line 1814
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 1816
    .local v0, "cmd_bytes":[B
    const/4 v2, 0x0

    aput-byte p7, v0, v2

    .line 1817
    const/4 v2, 0x1

    shl-int/lit8 v3, p2, 0x3

    shr-int/lit8 v4, p3, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1818
    and-int/lit8 v2, p3, 0x3

    shl-int/lit8 v2, v2, 0x6

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 1819
    const/4 v2, 0x3

    shr-int/lit8 v3, p4, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1820
    const/4 v2, 0x4

    shr-int/lit8 v3, p4, 0xc

    and-int/lit8 v4, p4, 0xf

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1821
    const/4 v2, 0x5

    and-int/lit16 v3, p5, 0xff0

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1822
    const/4 v2, 0x6

    and-int/lit8 v3, p5, 0xf

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v4, p6, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1823
    const/4 v2, 0x7

    and-int/lit8 v3, p6, 0xf

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1834
    const/16 v2, 0x2a

    .line 1832
    invoke-static {v5, v2, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v1

    .line 1835
    .local v1, "sit_cmd":[B
    invoke-virtual {p0, v1}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1836
    return-void
.end method

.method public lostSetting(Z)V
    .locals 5
    .param p1, "isOpen"    # Z

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 1799
    if-eqz p1, :cond_0

    .line 1802
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    .line 1800
    invoke-static {v3, v4, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1808
    .local v0, "cmd_bytes":[B
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1809
    return-void

    .line 1806
    .end local v0    # "cmd_bytes":[B
    :cond_0
    new-array v1, v1, [B

    .line 1804
    invoke-static {v3, v4, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .restart local v0    # "cmd_bytes":[B
    goto :goto_0
.end method

.method public loveCall()V
    .locals 4

    .prologue
    .line 1967
    const/4 v1, 0x4

    .line 1968
    const/16 v2, 0x21

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1966
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1969
    .local v0, "cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1970
    return-void
.end method

.method public loveCallBack()V
    .locals 4

    .prologue
    .line 1975
    const/4 v1, 0x4

    .line 1976
    const/16 v2, 0x31

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1974
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1977
    .local v0, "cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1978
    return-void
.end method

.method public msgNotic([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v2, 0x4

    .line 1899
    .line 1900
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1898
    invoke-static {v2, v2, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1901
    .local v0, "msg_cmds":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1902
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ">>>>onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    .line 169
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->userAccount:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mSmaDao:Lcom/smalife/db/SmaDao;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 173
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "AskAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->registerListener()V

    .line 177
    sput-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 178
    iput-boolean v2, p0, Lcom/smalife/ble/BlueToothService;->serviceStart:Z

    .line 180
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->setForeground()V

    .line 182
    new-instance v0, Lcom/smalife/ble/BlueToothService$ReconnectThread;

    invoke-direct {v0, p0, v3}, Lcom/smalife/ble/BlueToothService$ReconnectThread;-><init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$ReconnectThread;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    .line 183
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    invoke-virtual {v0}, Lcom/smalife/ble/BlueToothService$ReconnectThread;->start()V

    .line 184
    const-string v0, "SM05"

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/smalife/ble/BlueToothService$GetRateThread;

    invoke-direct {v0, p0, v3}, Lcom/smalife/ble/BlueToothService$GetRateThread;-><init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$GetRateThread;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    .line 186
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    invoke-virtual {v0}, Lcom/smalife/ble/BlueToothService$GetRateThread;->start()V

    .line 189
    :cond_0
    new-instance v0, Lcom/smalife/ble/BlueToothService$5;

    invoke-direct {v0, p0}, Lcom/smalife/ble/BlueToothService$5;-><init>(Lcom/smalife/ble/BlueToothService;)V

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->mWriteThread:Ljava/lang/Thread;

    .line 241
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 242
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 275
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ">>>>onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    iput-boolean v2, v0, Lcom/smalife/MyApplication;->isConnected:Z

    .line 281
    sput-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 282
    sput-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 283
    sput-object v3, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 284
    iput-boolean v2, p0, Lcom/smalife/ble/BlueToothService;->serviceStart:Z

    .line 286
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    invoke-virtual {v0}, Lcom/smalife/ble/BlueToothService$ReconnectThread;->interrupt()V

    .line 288
    iput-object v3, p0, Lcom/smalife/ble/BlueToothService;->reconnectThread:Lcom/smalife/ble/BlueToothService$ReconnectThread;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    invoke-virtual {v0}, Lcom/smalife/ble/BlueToothService$GetRateThread;->interrupt()V

    .line 292
    iput-object v3, p0, Lcom/smalife/ble/BlueToothService;->getRateThread:Lcom/smalife/ble/BlueToothService$GetRateThread;

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService;->unregisterListener()V

    .line 316
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->stopScan()V

    .line 317
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->duankai()V

    .line 318
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ">>>>onStartCommand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 266
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getUserID()I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/smalife/ble/CmdKeyValue$BLE;->user_id:B

    .line 268
    new-array v0, v3, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/smalife/ble/CmdKeyValue$BLE;->user_id:B

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/smalife/ble/BlueToothService;->id_bytes:[B

    .line 269
    sput-boolean v3, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 270
    return v3
.end method

.method public openCamera([B)V
    .locals 6
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v5, 0x1

    .line 2194
    const/4 v1, 0x2

    .line 2195
    const/16 v2, 0x42

    new-array v3, v5, [B

    const/4 v4, 0x0

    aput-byte v5, v3, v4

    .line 2194
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2196
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2197
    return-void
.end method

.method public rateSet(Lcom/smalife/entity/RateSetEntity;)V
    .locals 8
    .param p1, "entity"    # Lcom/smalife/entity/RateSetEntity;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1840
    const-string v3, ">>>>rateSet"

    invoke-static {v3}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1841
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 1842
    .local v0, "cmd_bytes":[B
    const/4 v3, 0x7

    aput-byte v5, v0, v3

    .line 1843
    const/4 v3, 0x6

    aput-byte v5, v0, v3

    .line 1844
    const/4 v3, 0x5

    aput-byte v5, v0, v3

    .line 1845
    const/4 v3, 0x4

    aput-byte v5, v0, v3

    .line 1846
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/smalife/entity/RateSetEntity;->getStart_hour()B

    move-result v4

    aput-byte v4, v0, v3

    .line 1847
    invoke-virtual {p1}, Lcom/smalife/entity/RateSetEntity;->getEnd_hour()B

    move-result v3

    aput-byte v3, v0, v7

    .line 1848
    invoke-virtual {p1}, Lcom/smalife/entity/RateSetEntity;->getPeriodTime()B

    move-result v3

    aput-byte v3, v0, v6

    .line 1857
    invoke-virtual {p1}, Lcom/smalife/entity/RateSetEntity;->getOpen()B

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1858
    const/16 v2, 0x7f

    .line 1863
    .local v2, "repeat":B
    :goto_0
    aput-byte v2, v0, v5

    .line 1867
    const/16 v3, 0x44

    .line 1865
    invoke-static {v7, v3, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v1

    .line 1868
    .local v1, "rate_set_cmd":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>>rateSet byte[] = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p0, v1}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1870
    return-void

    .line 1860
    .end local v1    # "rate_set_cmd":[B
    .end local v2    # "repeat":B
    :cond_0
    const/16 v2, -0x80

    .restart local v2    # "repeat":B
    goto :goto_0
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 2436
    new-instance v1, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;-><init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;)V

    iput-object v1, p0, Lcom/smalife/ble/BlueToothService;->telReceiver:Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;

    .line 2437
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2438
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2439
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2440
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->telReceiver:Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/smalife/ble/BlueToothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2441
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->listener:Lcom/smalife/ble/BlueToothService$ActionListener;

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/smalife/ble/BlueToothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2443
    invoke-direct {p0}, Lcom/smalife/ble/BlueToothService;->addSMSObserver()V

    .line 2444
    return-void
.end method

.method public sendMessage([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 2081
    const/4 v1, 0x4

    .line 2082
    const/16 v2, 0x51

    .line 2081
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2083
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2084
    return-void
.end method

.method public setBacklightTime([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2150
    const/4 v1, 0x2

    .line 2151
    const/16 v2, 0x29

    .line 2150
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2152
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2153
    return-void
.end method

.method public setDisturb([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2120
    const/4 v1, 0x2

    .line 2121
    const/16 v2, 0x28

    .line 2120
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2122
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2123
    return-void
.end method

.method public setNodisturb_shouhuan([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNodisturb_shouhuan>>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2136
    const/4 v1, 0x2

    .line 2137
    const/16 v2, 0x2b

    .line 2136
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2138
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2139
    return-void
.end method

.method public setShoct([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2208
    const/4 v1, 0x2

    .line 2209
    const/16 v2, 0x33

    .line 2208
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2210
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2211
    return-void
.end method

.method public setSleep([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 2088
    const/4 v1, 0x5

    .line 2089
    const/16 v2, 0x10

    .line 2088
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2090
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2091
    return-void
.end method

.method public setSleepDetection([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 2127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSleepDetection>>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2128
    const/4 v1, 0x2

    .line 2129
    const/16 v2, 0x39

    .line 2128
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2130
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2131
    return-void
.end method

.method public showLove()V
    .locals 4

    .prologue
    .line 1959
    const/4 v1, 0x4

    const/16 v2, 0x20

    .line 1960
    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1958
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1961
    .local v0, "cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1962
    return-void
.end method

.method public showLoveBack()V
    .locals 4

    .prologue
    .line 1983
    const/4 v1, 0x4

    .line 1984
    const/16 v2, 0x30

    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 1982
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1985
    .local v0, "cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1986
    return-void
.end method

.method public sleep([B)V
    .locals 2
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v1, 0x5

    .line 1924
    const-string v0, "getSleep>>>>"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1926
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1925
    invoke-static {v1, v1, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    .line 1927
    return-void
.end method

.method public sleep_shouhuan([B)V
    .locals 6
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1931
    const-string v1, "getSleep_shouhuan>>>>"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1933
    const/4 v1, 0x5

    .line 1934
    const/16 v2, 0x45

    new-array v3, v4, [B

    .line 1932
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1936
    .local v0, "msg_cmds":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1937
    iput-boolean v4, p0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 1938
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1939
    return-void
.end method

.method public sport([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1906
    const-string v0, "getSport"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1907
    const/4 v0, 0x5

    .line 1908
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 1907
    invoke-static {v0, v1, v2}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    .line 1909
    return-void
.end method

.method public sport_shouhuan([B)V
    .locals 6
    .param p1, "cmd_bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1913
    const-string v1, "getSport_shouhuan"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1915
    const/4 v1, 0x5

    .line 1916
    const/16 v2, 0x41

    new-array v3, v4, [B

    .line 1914
    invoke-static {v1, v2, v3}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1917
    .local v0, "msg_cmds":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1918
    iput-boolean v4, p0, Lcom/smalife/ble/BlueToothService;->isReceiveBack:Z

    .line 1919
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->endRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1920
    return-void
.end method

.method public stepAim(I)V
    .locals 4
    .param p1, "steps"    # I

    .prologue
    .line 1713
    invoke-static {p1}, Lcom/smalife/ble/CmdKeyValue;->intToBytes2(I)[B

    move-result-object v0

    .line 1715
    .local v0, "cmd_bytes":[B
    const/4 v2, 0x2

    .line 1716
    const/4 v3, 0x5

    .line 1714
    invoke-static {v2, v3, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v1

    .line 1717
    .local v1, "step":[B
    invoke-virtual {p0, v1}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1718
    return-void
.end method

.method public sync([B)V
    .locals 3
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1951
    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 1950
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1953
    .local v0, "sync_cmd_bytes":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1954
    return-void
.end method

.method public sync_sports2watch(IDI)V
    .locals 20
    .param p1, "calorys"    # I
    .param p2, "total_dis"    # D
    .param p4, "steps"    # I

    .prologue
    .line 1722
    invoke-static/range {p1 .. p1}, Lcom/smalife/ble/CmdKeyValue;->intToBytes2(I)[B

    move-result-object v4

    .line 1725
    .local v4, "calorys_bytes":[B
    move-wide/from16 v0, p2

    double-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/smalife/ble/CmdKeyValue;->intToBytes2(I)[B

    move-result-object v16

    .line 1727
    .local v16, "total_dis_bytes":[B
    invoke-static/range {p4 .. p4}, Lcom/smalife/ble/CmdKeyValue;->intToBytes2(I)[B

    move-result-object v14

    .line 1728
    .local v14, "steps_bytes":[B
    const/4 v9, 0x0

    .line 1729
    .local v9, "offset":B
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    .local v11, "s2w":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz v14, :cond_0

    .line 1731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/ble/BlueToothService;->len:I

    move/from16 v17, v0

    array-length v0, v14

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/ble/BlueToothService;->len:I

    .line 1732
    array-length v0, v14

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 1742
    :cond_0
    if-eqz v16, :cond_1

    .line 1743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/ble/BlueToothService;->len:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/ble/BlueToothService;->len:I

    .line 1744
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 1754
    :cond_1
    if-eqz v4, :cond_2

    .line 1755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/ble/BlueToothService;->len:I

    move/from16 v17, v0

    array-length v0, v4

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/ble/BlueToothService;->len:I

    .line 1756
    array-length v0, v4

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 1766
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 1767
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 1768
    .local v5, "cmd_bytes":[B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_d

    .line 1772
    const/16 v17, 0x5

    .line 1773
    const/16 v18, 0x9

    .line 1771
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v13

    .line 1774
    .local v13, "step":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1776
    .end local v5    # "cmd_bytes":[B
    .end local v8    # "j":I
    .end local v13    # "step":[B
    :cond_3
    return-void

    .line 1732
    :cond_4
    aget-byte v12, v14, v17

    .line 1733
    .local v12, "sps":B
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    array-length v0, v14

    move/from16 v19, v0

    rsub-int/lit8 v7, v19, 0x4

    .line 1735
    .local v7, "index":I
    if-lez v7, :cond_5

    .line 1736
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_4
    if-lt v10, v7, :cond_6

    .line 1732
    .end local v10    # "s":I
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1737
    .restart local v10    # "s":I
    :cond_6
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1744
    .end local v7    # "index":I
    .end local v10    # "s":I
    .end local v12    # "sps":B
    :cond_7
    aget-byte v6, v16, v17

    .line 1745
    .local v6, "dis_byte":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1746
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    rsub-int/lit8 v7, v19, 0x4

    .line 1747
    .restart local v7    # "index":I
    if-lez v7, :cond_8

    .line 1748
    const/4 v15, 0x0

    .local v15, "t":I
    :goto_5
    if-lt v15, v7, :cond_9

    .line 1744
    .end local v15    # "t":I
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1749
    .restart local v15    # "t":I
    :cond_9
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1756
    .end local v6    # "dis_byte":B
    .end local v7    # "index":I
    .end local v15    # "t":I
    :cond_a
    aget-byte v3, v4, v17

    .line 1757
    .local v3, "calory":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    array-length v0, v4

    move/from16 v19, v0

    rsub-int/lit8 v7, v19, 0x4

    .line 1759
    .restart local v7    # "index":I
    if-lez v7, :cond_b

    .line 1760
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_6
    if-lt v2, v7, :cond_c

    .line 1756
    .end local v2    # "c":I
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1761
    .restart local v2    # "c":I
    :cond_c
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1769
    .end local v2    # "c":I
    .end local v3    # "calory":B
    .end local v7    # "index":I
    .restart local v5    # "cmd_bytes":[B
    .restart local v8    # "j":I
    :cond_d
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Byte;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    aput-byte v17, v5, v8

    .line 1768
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method

.method public systemTimer(BBBBBB)V
    .locals 7
    .param p1, "year"    # B
    .param p2, "month"    # B
    .param p3, "day"    # B
    .param p4, "hour"    # B
    .param p5, "mintue"    # B
    .param p6, "second"    # B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1643
    const-string v2, "systemTimer"

    invoke-static {v2}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1644
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 1646
    .local v1, "cmd_bytes":[B
    const/4 v2, 0x3

    shl-int/lit8 v3, p5, 0x6

    or-int/2addr v3, p6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1647
    shr-int/lit8 v2, p5, 0x2

    shl-int/lit8 v3, p4, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 1648
    shr-int/lit8 v2, p4, 0x4

    shl-int/lit8 v3, p3, 0x1

    or-int/2addr v2, v3

    shl-int/lit8 v3, p2, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 1649
    const/4 v2, 0x0

    shr-int/lit8 v3, p2, 0x2

    shl-int/lit8 v4, p1, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1651
    invoke-static {v6, v5, v1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1653
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1654
    return-void
.end method

.method public systemUpdate()V
    .locals 0

    .prologue
    .line 1630
    return-void
.end method

.method public unBond([B)V
    .locals 6
    .param p1, "cmd_bytes"    # [B

    .prologue
    .line 1990
    const-string v1, "unBond"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 1992
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mApplication:Lcom/smalife/MyApplication;

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v1, :cond_0

    .line 1993
    const-string v1, "SM07"

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService;->mWatchType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1997
    const/4 v1, 0x3

    .line 1998
    const/4 v2, 0x5

    .line 1996
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 1999
    .local v0, "unbond_cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2002
    .end local v0    # "unbond_cmd":[B
    :cond_0
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/smalife/ble/BlueToothService$7;

    invoke-direct {v2, p0}, Lcom/smalife/ble/BlueToothService$7;-><init>(Lcom/smalife/ble/BlueToothService;)V

    .line 2009
    const-wide/16 v4, 0x7d0

    .line 2002
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2010
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->telReceiver:Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2449
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService;->listener:Lcom/smalife/ble/BlueToothService$ActionListener;

    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2451
    return-void
.end method

.method public userInfo(IIFF)V
    .locals 6
    .param p1, "sex"    # I
    .param p2, "age"    # I
    .param p3, "high"    # F
    .param p4, "weigth"    # F

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    .line 1784
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 1786
    .local v0, "cmd_bytes":[B
    const/4 v2, 0x3

    mul-float v3, p4, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x5

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1787
    mul-float v2, p4, v4

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x3

    mul-float v3, p3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 1788
    const/4 v2, 0x1

    mul-float v3, p3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1789
    const/4 v2, 0x0

    shl-int/lit8 v3, p1, 0x7

    or-int/2addr v3, p2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1792
    const/16 v2, 0x10

    .line 1790
    invoke-static {v5, v2, v0}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v1

    .line 1793
    .local v1, "user":[B
    invoke-virtual {p0, v1}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 1794
    return-void
.end method

.method public verticalScreenSet([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 2173
    const/4 v1, 0x2

    .line 2174
    const/16 v2, 0x36

    .line 2173
    invoke-static {v1, v2, p1}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v0

    .line 2175
    .local v0, "cmd":[B
    invoke-virtual {p0, v0}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    .line 2176
    return-void
.end method

.method public declared-synchronized writeRXCharacteristic([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 583
    monitor-enter p0

    if-nez p1, :cond_0

    .line 602
    :goto_0
    monitor-exit p0

    return-void

    .line 587
    :cond_0
    :try_start_0
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x14

    if-nez v3, :cond_1

    array-length v3, p1

    div-int/lit8 v0, v3, 0x14

    .line 590
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v0, :cond_2

    .line 599
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService;->mWriteThread:Ljava/lang/Thread;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 600
    :try_start_1
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 599
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
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 588
    :cond_1
    :try_start_3
    array-length v3, p1

    div-int/lit8 v3, v3, 0x14

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 592
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_3

    .line 593
    mul-int/lit8 v3, v1, 0x14

    array-length v4, p1

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 597
    .local v2, "packet":[B
    :goto_3
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService;->mTaskQueen:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 595
    .end local v2    # "packet":[B
    :cond_3
    mul-int/lit8 v3, v1, 0x14

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v4, v4, 0x14

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .restart local v2    # "packet":[B
    goto :goto_3
.end method
