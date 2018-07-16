.class Lcom/smalife/ota/OtaManager$FirstConnectThread;
.super Ljava/lang/Thread;
.source "OtaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ota/OtaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirstConnectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ota/OtaManager;


# direct methods
.method private constructor <init>(Lcom/smalife/ota/OtaManager;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/ota/OtaManager;Lcom/smalife/ota/OtaManager$FirstConnectThread;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/smalife/ota/OtaManager$FirstConnectThread;-><init>(Lcom/smalife/ota/OtaManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 272
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 273
    :goto_0
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v9}, Lcom/smalife/ota/OtaManager;->access$18(Lcom/smalife/ota/OtaManager;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 307
    :cond_0
    return-void

    .line 274
    :cond_1
    new-array v0, v12, [B

    const/4 v9, 0x0

    const/16 v10, 0x45

    aput-byte v10, v0, v9

    .line 275
    .local v0, "cmd":[B
    array-length v5, v0

    .line 276
    .local v5, "len":I
    rem-int/lit8 v9, v5, 0x14

    if-nez v9, :cond_2

    div-int/lit8 v2, v5, 0x14

    .line 277
    .local v2, "count":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v2, :cond_3

    .line 305
    const-wide/16 v10, 0xbb8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 276
    .end local v2    # "count":I
    .end local v3    # "j":I
    :cond_2
    div-int/lit8 v9, v5, 0x14

    add-int/lit8 v2, v9, 0x1

    goto :goto_1

    .line 278
    .restart local v2    # "count":I
    .restart local v3    # "j":I
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v7, "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_3
    const/16 v9, 0x14

    if-lt v6, v9, :cond_4

    .line 284
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [B

    .line 285
    .local v1, "cmd_bytes":[B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    array-length v9, v1

    if-lt v4, v9, :cond_6

    .line 288
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    iget-object v10, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v10}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v10

    sget-object v11, Lcom/smalife/ota/OtaManager;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/smalife/ota/OtaManager;->access$1(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattService;)V

    .line 289
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v9}, Lcom/smalife/ota/OtaManager;->access$2(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 292
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    iget-object v10, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v10}, Lcom/smalife/ota/OtaManager;->access$2(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v10

    .line 293
    sget-object v11, Lcom/smalife/ota/OtaManager;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v10

    .line 292
    invoke-static {v9, v10}, Lcom/smalife/ota/OtaManager;->access$3(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 294
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v9}, Lcom/smalife/ota/OtaManager;->access$4(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 297
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v9}, Lcom/smalife/ota/OtaManager;->access$4(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v9

    .line 298
    invoke-virtual {v9, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 299
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v9}, Lcom/smalife/ota/OtaManager;->access$4(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 300
    iget-object v9, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v9}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v9

    .line 301
    iget-object v10, p0, Lcom/smalife/ota/OtaManager$FirstConnectThread;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v10}, Lcom/smalife/ota/OtaManager;->access$4(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v8

    .line 302
    .local v8, "writeCharacteristic":Z
    const-string v9, "wsh"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "send ststus :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 303
    const-string v11, " cmd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 302
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 280
    .end local v1    # "cmd_bytes":[B
    .end local v4    # "k":I
    .end local v8    # "writeCharacteristic":Z
    :cond_4
    mul-int/lit8 v9, v3, 0x14

    add-int/2addr v9, v6

    if-ge v9, v5, :cond_5

    .line 281
    mul-int/lit8 v9, v3, 0x14

    add-int/2addr v9, v6

    aget-byte v9, v0, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 286
    .restart local v1    # "cmd_bytes":[B
    .restart local v4    # "k":I
    :cond_6
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v1, v4

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method
