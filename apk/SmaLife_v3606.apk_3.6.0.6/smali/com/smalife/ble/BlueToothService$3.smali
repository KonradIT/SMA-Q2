.class Lcom/smalife/ble/BlueToothService$3;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BlueToothService.java"


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
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 440
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 558
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$13(Lcom/smalife/ble/BlueToothService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 562
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 563
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 564
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$13(Lcom/smalife/ble/BlueToothService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 566
    sget-object v2, Lcom/smalife/ble/CmdKeyValue$Uuid;->BATTERY_LEVEL_CHARACTERISTIC:Ljava/util/UUID;

    .line 565
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 566
    if-nez v1, :cond_0

    .line 568
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 569
    sget-object v2, Lcom/smalife/ble/CmdKeyValue$Uuid;->DEVICE_VERSION:Ljava/util/UUID;

    .line 568
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v8, 0x1

    .line 512
    const-string v4, "onCharacteristicRead"

    invoke-static {v4}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 515
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 516
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    const-string v5, "00002a29-0000-1000-8000-00805f9b34fb"

    .line 517
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 518
    if-eqz v4, :cond_0

    .line 519
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 520
    .local v3, "value":[B
    if-eqz v3, :cond_0

    .line 521
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 522
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smalife/MyApplication;->editFirmType(Ljava/lang/String;)V

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "firmType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "value":[B
    :cond_0
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 530
    sget-object v5, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 529
    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService;->access$8(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattService;)V

    .line 531
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 532
    sget-object v6, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 531
    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService;->access$10(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 533
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 534
    sget-object v6, Lcom/smalife/ble/CmdKeyValue$Uuid;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 533
    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService;->access$11(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 536
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {p1, v4, v8}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 537
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 539
    const-string v5, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 541
    .local v0, "bgDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 542
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 544
    :goto_0
    return-void

    .line 526
    .end local v0    # "bgDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 530
    sget-object v5, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 529
    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService;->access$8(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattService;)V

    .line 531
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 532
    sget-object v6, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 531
    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService;->access$10(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 533
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 534
    sget-object v6, Lcom/smalife/ble/CmdKeyValue$Uuid;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 533
    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService;->access$11(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 536
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {p1, v4, v8}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 537
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 539
    const-string v5, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 541
    .restart local v0    # "bgDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v4, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 542
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 528
    .end local v0    # "bgDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v4

    .line 529
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 530
    sget-object v6, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 529
    invoke-static {v5, v6}, Lcom/smalife/ble/BlueToothService;->access$8(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattService;)V

    .line 531
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v6, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v6}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 532
    sget-object v7, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 531
    invoke-static {v5, v6}, Lcom/smalife/ble/BlueToothService;->access$10(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 533
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v6, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v6}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 534
    sget-object v7, Lcom/smalife/ble/CmdKeyValue$Uuid;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 533
    invoke-static {v5, v6}, Lcom/smalife/ble/BlueToothService;->access$11(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 536
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-virtual {p1, v5, v8}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 537
    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 539
    const-string v6, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    .line 538
    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 541
    .restart local v0    # "bgDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 542
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 543
    throw v4
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 549
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 552
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v0}, Lcom/smalife/ble/BlueToothService;->access$14(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 553
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$4(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 449
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 450
    const-string v1, "STATE_CONNECTED"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 452
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/smalife/ble/BlueToothService;->access$5(Lcom/smalife/ble/BlueToothService;Z)V

    .line 453
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$4(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 457
    if-nez p3, :cond_1

    .line 458
    const-string v1, "STATE_DISCONNECTED"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1, v3}, Lcom/smalife/ble/BlueToothService;->access$5(Lcom/smalife/ble/BlueToothService;Z)V

    .line 460
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    iput-boolean v3, v1, Lcom/smalife/MyApplication;->isConnected:Z

    .line 461
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$6(Lcom/smalife/ble/BlueToothService;)V

    .line 462
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$7(Lcom/smalife/ble/BlueToothService;)V

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "refresh_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "refresh_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "BleConnecting"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 472
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 506
    const-string v0, "onDescriptorWrite"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v0}, Lcom/smalife/ble/BlueToothService;->access$13(Lcom/smalife/ble/BlueToothService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 479
    const-string v3, "onServicesDiscovered"

    invoke-static {v3}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 481
    const-string v3, "0000180a-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 480
    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 482
    .local v2, "bs":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_0

    .line 484
    const-string v3, "00002a29-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 483
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 485
    .local v0, "bc":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 502
    .end local v0    # "bc":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 488
    sget-object v4, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 487
    invoke-static {v3, v4}, Lcom/smalife/ble/BlueToothService;->access$8(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattService;)V

    .line 489
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 490
    sget-object v5, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 489
    invoke-static {v3, v4}, Lcom/smalife/ble/BlueToothService;->access$10(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 491
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$9(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 492
    sget-object v5, Lcom/smalife/ble/CmdKeyValue$Uuid;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 491
    invoke-static {v3, v4}, Lcom/smalife/ble/BlueToothService;->access$11(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 494
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v3}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 495
    iget-object v3, p0, Lcom/smalife/ble/BlueToothService$3;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v3}, Lcom/smalife/ble/BlueToothService;->access$12(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 497
    const-string v4, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 496
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 499
    .local v1, "bgDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 500
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method
