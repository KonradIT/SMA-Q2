.class Lcom/smalife/upgrade/ble/service/DFUBaseService$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DFUBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/upgrade/ble/service/DFUBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;


# direct methods
.method constructor <init>(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    .line 848
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 8
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 1217
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 1218
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 1219
    const-string v5, ""

    .line 1232
    :goto_0
    return-object v5

    .line 1220
    :cond_0
    array-length v2, v0

    .line 1221
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 1222
    const-string v5, ""

    goto :goto_0

    .line 1224
    :cond_1
    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, -0x1

    new-array v3, v5, [C

    .line 1225
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 1232
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 1226
    :cond_2
    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 1227
    .local v4, "v":I
    mul-int/lit8 v5, v1, 0x3

    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$40()[C

    move-result-object v6

    ushr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    .line 1228
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$40()[C

    move-result-object v6

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    .line 1229
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_3

    .line 1230
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x2d

    aput-char v6, v3, v5

    .line 1225
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/16 v8, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1147
    invoke-virtual {p2, v8, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1150
    .local v3, "responseType":I
    packed-switch v3, :pswitch_data_0

    .line 1194
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$27(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1209
    :goto_0
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1210
    :try_start_0
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1209
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    :goto_1
    return-void

    .line 1153
    :pswitch_0
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$37()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 1154
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$15()Ljava/util/UUID;

    move-result-object v7

    .line 1153
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 1157
    .local v2, "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :try_start_1
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    .line 1158
    const/16 v7, 0x14

    const/4 v8, 0x1

    .line 1157
    invoke-virtual {p2, v7, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$38(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 1159
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$21(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 1161
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$24(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V

    .line 1165
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$25(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$26(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$27(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1166
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$28(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1167
    :cond_0
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v7, 0xf

    const-string v8, "Upload terminated"

    invoke-static {v6, v7, v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/smalife/upgrade/ble/exception/HexFileValidationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1176
    :catch_0
    move-exception v1

    .line 1177
    .local v1, "e":Lcom/smalife/upgrade/ble/exception/HexFileValidationException;
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v7, "Invalid HEX file"

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 1178
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v7, 0x1003

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_0

    .line 1171
    .end local v1    # "e":Lcom/smalife/upgrade/ble/exception/HexFileValidationException;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$29(Lcom/smalife/upgrade/ble/service/DFUBaseService;)[B

    move-result-object v0

    .line 1172
    .local v0, "buffer":[B
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$30(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 1173
    .local v4, "size":I
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6, p1, v2, v0, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$31(Lcom/smalife/upgrade/ble/service/DFUBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 1174
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$32(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V
    :try_end_2
    .catch Lcom/smalife/upgrade/ble/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1179
    .end local v0    # "buffer":[B
    .end local v4    # "size":I
    :catch_1
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v7, "Error while reading the input stream"

    invoke-static {v6, v7, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$33(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1181
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v7, 0x1004

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto/16 :goto_0

    .line 1197
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    const/4 v6, 0x2

    .line 1196
    invoke-virtual {p2, v8, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1198
    .local v5, "status":I
    if-eq v5, v7, :cond_3

    .line 1199
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$39(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 1201
    :cond_3
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Notification received from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value (0x): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1203
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1201
    invoke-static {v6, v7, v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 1204
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$36(Lcom/smalife/upgrade/ble/service/DFUBaseService;[B)V

    goto/16 :goto_0

    .line 1209
    .end local v5    # "status":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 1123
    if-nez p3, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read Response received from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-static {v0, v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$36(Lcom/smalife/upgrade/ble/service/DFUBaseService;[B)V

    .line 1132
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$6(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 1139
    :goto_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characteristic read error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    or-int/lit16 v1, p3, 0x4000

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_0

    .line 1139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v5, 0x1

    .line 1012
    if-nez p3, :cond_9

    .line 1025
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$15()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1026
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$16(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$17(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1029
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$18(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v8

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$19(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 1030
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$20(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$21(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 1038
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$22(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v7

    if-lez v7, :cond_1

    .line 1039
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$20(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v7

    iget-object v8, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$22(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v8

    if-ne v7, v8, :cond_1

    move v3, v5

    .line 1040
    .local v3, "notificationExpected":Z
    :goto_0
    iget-object v7, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$18(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v7

    iget-object v8, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$23(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v8

    if-ne v7, v8, :cond_2

    move v2, v5

    .line 1042
    .local v2, "lastPacketTransferred":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    .line 1117
    .end local v2    # "lastPacketTransferred":Z
    .end local v3    # "notificationExpected":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v6

    .line 1038
    goto :goto_0

    .restart local v3    # "notificationExpected":Z
    :cond_2
    move v2, v6

    .line 1040
    goto :goto_1

    .line 1047
    .restart local v2    # "lastPacketTransferred":Z
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$24(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V

    .line 1051
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$25(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$26(Lcom/smalife/upgrade/ble/service/DFUBaseService;)I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$27(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1052
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$28(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1054
    :cond_4
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Lcom/smalife/upgrade/ble/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1055
    :try_start_1
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v7, 0xf

    .line 1056
    const-string v8, "Upload terminated"

    .line 1055
    invoke-static {v5, v7, v8}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 1057
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1058
    monitor-exit v6

    goto :goto_2

    .line 1054
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Lcom/smalife/upgrade/ble/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Lcom/smalife/upgrade/ble/exception/HexFileValidationException;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v6, "Invalid HEX file"

    invoke-static {v5, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 1069
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v6, 0x1003

    invoke-static {v5, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 1114
    .end local v1    # "e":Lcom/smalife/upgrade/ble/exception/HexFileValidationException;
    .end local v2    # "lastPacketTransferred":Z
    .end local v3    # "notificationExpected":Z
    :goto_3
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1115
    :try_start_3
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1114
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1062
    .restart local v2    # "lastPacketTransferred":Z
    .restart local v3    # "notificationExpected":Z
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$29(Lcom/smalife/upgrade/ble/service/DFUBaseService;)[B

    move-result-object v0

    .line 1063
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$30(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 1064
    .local v4, "size":I
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5, p1, p2, v0, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$31(Lcom/smalife/upgrade/ble/service/DFUBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 1065
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$32(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V
    :try_end_4
    .catch Lcom/smalife/upgrade/ble/exception/HexFileValidationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 1070
    .end local v0    # "buffer":[B
    .end local v4    # "size":I
    :catch_1
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v6, "Error while reading the input stream"

    invoke-static {v5, v6, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$33(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1072
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v6, 0x1004

    invoke-static {v5, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_3

    .line 1074
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "lastPacketTransferred":Z
    .end local v3    # "notificationExpected":Z
    :cond_6
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$16(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1076
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data written to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value (0x): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1078
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1076
    invoke-static {v6, v9, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 1079
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6, v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$34(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    goto :goto_3

    .line 1082
    :cond_7
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data written to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value (0x): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1084
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1082
    invoke-static {v6, v9, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 1085
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6, v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$35(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    goto/16 :goto_3

    .line 1091
    :cond_8
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data written to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value (0x): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1093
    invoke-direct {p0, p2}, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1091
    invoke-static {v6, v9, v7}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 1094
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6, v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$6(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    goto/16 :goto_3

    .line 1105
    :cond_9
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$28(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1106
    iget-object v6, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v6, v5}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$6(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    goto/16 :goto_3

    .line 1108
    :cond_a
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Characteristic write error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 1109
    iget-object v5, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    or-int/lit16 v6, p3, 0x4000

    invoke-static {v5, v6}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto/16 :goto_3
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v4, 0x0

    .line 853
    if-nez p2, :cond_5

    .line 854
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 855
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v2, "Connected to GATT server"

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$1(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$2(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 881
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 883
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :try_start_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v2, "Waiting 1600 ms for a possible Service Changed indication..."

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$7(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v2, 0x0

    const-string v3, "wait(1600)"

    invoke-static {v1, v2, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 886
    const-wide/16 v2, 0x640

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 883
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v2, "gatt.discoverServices()"

    invoke-static {v1, v4, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$8(Lcom/smalife/upgrade/ble/service/DFUBaseService;ILjava/lang/String;)V

    .line 908
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 909
    .local v0, "success":Z
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to start service discovery... "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    if-eqz v0, :cond_3

    const-string v1, "succeed"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static {v2, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$1(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 912
    if-nez v0, :cond_2

    .line 913
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/16 v2, 0x1005

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 934
    .end local v0    # "success":Z
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 935
    :try_start_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 934
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 937
    :cond_2
    return-void

    .line 883
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 900
    :catch_0
    move-exception v1

    goto :goto_0

    .line 910
    .restart local v0    # "success":Z
    :cond_3
    const-string v1, "failed"

    goto :goto_1

    .line 919
    .end local v0    # "success":Z
    :cond_4
    if-nez p3, :cond_1

    .line 920
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v2, "Disconnected from GATT server"

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$1(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$4(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 922
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$2(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_2

    .line 925
    :cond_5
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection state change error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 926
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 925
    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 927
    if-nez p3, :cond_6

    .line 928
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$2(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 929
    :cond_6
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v4}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$4(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 930
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const v2, 0x8000

    or-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_2

    .line 934
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 959
    if-nez p3, :cond_2

    .line 960
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$11()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 961
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$12()Ljava/util/UUID;

    move-result-object v2

    .line 962
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 961
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 962
    if-eqz v2, :cond_1

    .line 965
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    .line 966
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 965
    :cond_0
    invoke-static {v2, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$13(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 967
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$6(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 976
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 976
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    return-void

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Descriptor read error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    or-int/lit16 v1, p3, 0x4000

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_0

    .line 976
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 984
    if-nez p3, :cond_4

    .line 985
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$11()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    invoke-static {}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$12()Ljava/util/UUID;

    move-result-object v2

    .line 987
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 986
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 987
    if-eqz v2, :cond_2

    .line 990
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    .line 991
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 990
    :goto_0
    invoke-static {v2, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$13(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 1003
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1003
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    return-void

    :cond_1
    move v0, v1

    .line 991
    goto :goto_0

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-static {v2, v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$14(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 998
    :cond_4
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Descriptor write error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    or-int/lit16 v1, p3, 0x4000

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_1

    .line 1003
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 942
    if-nez p2, :cond_0

    .line 943
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const-string v1, "Services discovered"

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$1(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$2(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 951
    :goto_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 951
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service discovery error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$10(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$4;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    or-int/lit16 v1, p2, 0x4000

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$9(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
