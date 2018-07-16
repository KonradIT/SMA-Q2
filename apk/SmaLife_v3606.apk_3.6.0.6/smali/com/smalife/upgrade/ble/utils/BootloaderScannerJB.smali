.class public Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;
.super Ljava/lang/Object;
.source "BootloaderScannerJB.java"

# interfaces
.implements Lcom/smalife/upgrade/ble/utils/BootloaderScanner;
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private mBootloaderAddress:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceAddressIncremented:Ljava/lang/String;

.field private mFound:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mFound:Z

    return v0
.end method

.method static synthetic access$1(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;Z)V
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mFound:Z

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mDeviceAddressIncremented:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mFound:Z

    .line 73
    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v2

    .line 77
    :cond_1
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public searchFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xf

    const/4 v7, 0x0

    .line 16
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "firstBytes":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "lastByte":Ljava/lang/String;
    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "lastByteIncremented":Ljava/lang/String;
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mDeviceAddress:Ljava/lang/String;

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mDeviceAddressIncremented:Ljava/lang/String;

    .line 22
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    .line 23
    iput-boolean v7, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mFound:Z

    .line 26
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;

    invoke-direct {v5, p0}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;-><init>(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)V

    .line 46
    const-string v6, "Scanner timer"

    .line 26
    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 49
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mFound:Z

    if-eqz v4, :cond_0

    .line 52
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 61
    iget-object v4, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mBootloaderAddress:Ljava/lang/String;

    return-object v4

    .line 54
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 56
    :catch_0
    move-exception v4

    goto :goto_1
.end method
