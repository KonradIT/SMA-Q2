.class Lcom/smalife/ble/BlueToothService$2;
.super Ljava/lang/Object;
.source "BlueToothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    const/4 v4, 0x0

    .line 354
    const/16 v2, -0x58

    if-ge p2, v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, ""

    .line 361
    .local v0, "deviceAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, ""

    .line 363
    .local v1, "deviceName":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMA-04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 365
    :cond_2
    const-string v2, "SMA-04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 367
    const-string v2, "SM04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    :cond_3
    if-eqz p1, :cond_0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    ,deviceAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$3(Lcom/smalife/ble/BlueToothService;)V

    .line 372
    sput-boolean v4, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 373
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v2, p1}, Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 360
    .end local v0    # "deviceAddress":Ljava/lang/String;
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 362
    .restart local v0    # "deviceAddress":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 376
    .restart local v1    # "deviceName":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMA-02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 377
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 378
    :cond_7
    const-string v2, "SMA-02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 379
    const-string v2, "SM02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :cond_8
    if-eqz p1, :cond_0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    ,deviceAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 382
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$3(Lcom/smalife/ble/BlueToothService;)V

    .line 384
    sput-boolean v4, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 385
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v2, p1}, Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 388
    :cond_9
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM05"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 389
    const-string v2, "SM05"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    if-eqz p1, :cond_0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    ,deviceAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$3(Lcom/smalife/ble/BlueToothService;)V

    .line 394
    sput-boolean v4, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 395
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v2, p1}, Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 398
    :cond_a
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SM07"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const-string v2, "SM07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    if-eqz p1, :cond_0

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    ,deviceAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$3(Lcom/smalife/ble/BlueToothService;)V

    .line 405
    sput-boolean v4, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 406
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$2;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v2, p1}, Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method
