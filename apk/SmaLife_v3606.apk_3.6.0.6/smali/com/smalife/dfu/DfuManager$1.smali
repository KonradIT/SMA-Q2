.class Lcom/smalife/dfu/DfuManager$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DfuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/dfu/DfuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/dfu/DfuManager;


# direct methods
.method constructor <init>(Lcom/smalife/dfu/DfuManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    .line 231
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 14
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "OPERATION_SUCCESS":I
    const-wide/16 v6, 0x0

    .line 319
    .local v6, "receivedBytes":J
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v4, v10, v11

    .line 320
    .local v4, "opCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v5, v10, v11

    .line 324
    .local v5, "request":I
    const/16 v10, 0x10

    if-ne v4, v10, :cond_2

    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    .line 325
    const-string v10, "DFUManager"

    const-string v11, "Received notification for StartDFU"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 327
    const-string v10, "DFUManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File length is valid: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v12

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$18(Lcom/smalife/dfu/DfuManager;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v1, v10, v11

    .line 331
    .local v1, "errorStatus":I
    const-string v10, "DFUManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Invalid File Length ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v10

    iget-object v11, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v11}, Lcom/smalife/dfu/DfuManager;->access$19(Lcom/smalife/dfu/DfuManager;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    goto :goto_0

    .line 339
    .end local v1    # "errorStatus":I
    :cond_2
    const/16 v10, 0x11

    if-ne v4, v10, :cond_4

    .line 340
    const-string v10, "DFUManager"

    const-string v11, "Received Notification for sent Packet"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v2, v10, 0xff

    .line 342
    .local v2, "firstByte":I
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit16 v8, v10, 0xff

    .line 343
    .local v8, "secondByte":I
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v9, v10, 0xff

    .line 344
    .local v9, "thirdByte":I
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    and-int/lit16 v3, v10, 0xff

    .line 346
    .local v3, "forthByte":I
    shl-int/lit8 v10, v8, 0x8

    or-int/2addr v10, v2

    shl-int/lit8 v11, v9, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v3, 0x18

    or-int/2addr v10, v11

    int-to-long v10, v10

    const-wide/16 v12, -0x1

    and-long v6, v10, v12

    .line 347
    const-string v10, "DFUManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Bytes received in Packet: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v10

    invoke-interface {v10, v6, v7}, Lcom/smalife/dfu/DfuManagerCallbacks;->onFileTranfering(J)V

    .line 349
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$20(Lcom/smalife/dfu/DfuManager;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$21(Lcom/smalife/dfu/DfuManager;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 350
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$22(Lcom/smalife/dfu/DfuManager;)V

    goto/16 :goto_0

    .line 352
    :cond_3
    const-string v10, "DFUManager"

    const-string v11, "last packet notification received"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    .end local v2    # "firstByte":I
    .end local v3    # "forthByte":I
    .end local v8    # "secondByte":I
    .end local v9    # "thirdByte":I
    :cond_4
    const/16 v10, 0x10

    if-ne v4, v10, :cond_6

    const/4 v10, 0x3

    if-ne v5, v10, :cond_6

    .line 358
    const-string v10, "DFUManager"

    const-string v11, "File has been transfered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 360
    const-string v10, "DFUManager"

    const-string v11, "Successful File transfer!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v10

    invoke-interface {v10}, Lcom/smalife/dfu/DfuManagerCallbacks;->onFileTransferCompleted()V

    .line 362
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$23(Lcom/smalife/dfu/DfuManager;)V

    goto/16 :goto_0

    .line 364
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v1, v10, v11

    .line 365
    .restart local v1    # "errorStatus":I
    const-string v10, "DFUManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File transfer failed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v10

    iget-object v11, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v11}, Lcom/smalife/dfu/DfuManager;->access$17(Lcom/smalife/dfu/DfuManager;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    goto/16 :goto_0

    .line 371
    .end local v1    # "errorStatus":I
    :cond_6
    const/16 v10, 0x10

    if-ne v4, v10, :cond_0

    const/4 v10, 0x4

    if-ne v5, v10, :cond_0

    .line 372
    const-string v10, "DFUManager"

    const-string v11, "Transfered file has been validated"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 374
    const-string v10, "DFUManager"

    const-string v11, "Successful File Transfer Validation!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$24(Lcom/smalife/dfu/DfuManager;)V

    .line 376
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/smalife/dfu/DfuManager;->access$25(Lcom/smalife/dfu/DfuManager;Z)V

    goto/16 :goto_0

    .line 378
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v1, v10, v11

    .line 379
    .restart local v1    # "errorStatus":I
    const-string v10, "DFUManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File validation failed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v10, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v10

    iget-object v11, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v11}, Lcom/smalife/dfu/DfuManager;->access$19(Lcom/smalife/dfu/DfuManager;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    goto/16 :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v2, 0x1

    .line 280
    if-nez p3, :cond_3

    .line 286
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/smalife/dfu/DfuManager;->DFU_CONTROLPOINT_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$7(Lcom/smalife/dfu/DfuManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const-string v0, "DFUManager"

    const-string v1, "successfully written startDFU and now writing file size"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$8(Lcom/smalife/dfu/DfuManager;)V

    .line 290
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0, v2}, Lcom/smalife/dfu/DfuManager;->access$9(Lcom/smalife/dfu/DfuManager;Z)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/smalife/dfu/DfuManager;->DFU_CONTROLPOINT_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$10(Lcom/smalife/dfu/DfuManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    const-string v0, "DFUManager"

    const-string v1, "successfully written Packet received notification and now writing receive firmware image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$11(Lcom/smalife/dfu/DfuManager;)V

    .line 296
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0, v2}, Lcom/smalife/dfu/DfuManager;->access$12(Lcom/smalife/dfu/DfuManager;Z)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/smalife/dfu/DfuManager;->DFU_CONTROLPOINT_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$13(Lcom/smalife/dfu/DfuManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const-string v0, "DFUManager"

    const-string v1, "successfully written ReceiveFirmwareImage and now writing file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$14(Lcom/smalife/dfu/DfuManager;)V

    .line 300
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0, v2}, Lcom/smalife/dfu/DfuManager;->access$15(Lcom/smalife/dfu/DfuManager;Z)V

    goto :goto_0

    .line 303
    :cond_3
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error on writing characteristic ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v1}, Lcom/smalife/dfu/DfuManager;->access$17(Lcom/smalife/dfu/DfuManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 235
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v1}, Lcom/smalife/dfu/DfuManager;->access$0(Lcom/smalife/dfu/DfuManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-nez p3, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 240
    .local v0, "refresh":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0    # "refresh":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 386
    if-nez p3, :cond_1

    .line 387
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$26(Lcom/smalife/dfu/DfuManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$27(Lcom/smalife/dfu/DfuManager;)V

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v0, "DFUManager"

    const-string v1, "Notification is disabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_1
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error on writing descriptor ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v0}, Lcom/smalife/dfu/DfuManager;->access$16(Lcom/smalife/dfu/DfuManager;)Lcom/smalife/dfu/DfuManagerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v1}, Lcom/smalife/dfu/DfuManager;->access$17(Lcom/smalife/dfu/DfuManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smalife/dfu/DfuManagerCallbacks;->onError(I)V

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 250
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v3, v7}, Lcom/smalife/dfu/DfuManager;->access$1(Lcom/smalife/dfu/DfuManager;Z)V

    .line 251
    if-nez p2, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    .line 253
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    :goto_1
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v3}, Lcom/smalife/dfu/DfuManager;->access$4(Lcom/smalife/dfu/DfuManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v3}, Lcom/smalife/dfu/DfuManager;->disconnect()V

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "OTAActionResult"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v3, "OTAResult"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v3, "blue_tooth"

    iget-object v4, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v4}, Lcom/smalife/dfu/DfuManager;->access$5(Lcom/smalife/dfu/DfuManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v3}, Lcom/smalife/dfu/DfuManager;->access$6(Lcom/smalife/dfu/DfuManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_0
    return-void

    .line 253
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 254
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    const-string v4, "DFUManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found Service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/smalife/dfu/DfuManager;->DFU_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    const-string v3, "DFUManager"

    const-string v4, "DFU Service found!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v3, v8}, Lcom/smalife/dfu/DfuManager;->access$1(Lcom/smalife/dfu/DfuManager;Z)V

    .line 258
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    sget-object v4, Lcom/smalife/dfu/DfuManager;->DFU_CONTROLPOINT_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smalife/dfu/DfuManager;->access$2(Lcom/smalife/dfu/DfuManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 259
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    sget-object v4, Lcom/smalife/dfu/DfuManager;->DFU_PACKET_CHARACTERISTIC_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smalife/dfu/DfuManager;->access$3(Lcom/smalife/dfu/DfuManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 260
    iget-object v3, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v3}, Lcom/smalife/dfu/DfuManager;->enableNotification()V

    goto/16 :goto_1

    .line 263
    :cond_2
    iget-object v4, p0, Lcom/smalife/dfu/DfuManager$1;->this$0:Lcom/smalife/dfu/DfuManager;

    invoke-static {v4, v7}, Lcom/smalife/dfu/DfuManager;->access$1(Lcom/smalife/dfu/DfuManager;Z)V

    goto/16 :goto_0
.end method
