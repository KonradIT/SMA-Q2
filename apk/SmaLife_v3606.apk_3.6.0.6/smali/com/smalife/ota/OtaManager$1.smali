.class Lcom/smalife/ota/OtaManager$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "OtaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ota/OtaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ota/OtaManager;


# direct methods
.method constructor <init>(Lcom/smalife/ota/OtaManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    .line 84
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private displayGattServices(Landroid/bluetooth/BluetoothGatt;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "gattServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-nez v1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 164
    .local v0, "gattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/smalife/ota/OtaManager;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/smalife/ota/OtaManager$1;->getCharacteristics(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_0
.end method

.method private getCharacteristics(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattService;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "gattService"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "gattCharacteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    return-void

    .line 180
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 181
    .local v0, "gattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/smalife/ota/OtaManager;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v3, v0}, Lcom/smalife/ota/OtaManager;->access$10(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 183
    iget-object v3, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v3}, Lcom/smalife/ota/OtaManager;->access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 184
    iget-object v3, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v3}, Lcom/smalife/ota/OtaManager;->access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 185
    iget-object v3, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v3}, Lcom/smalife/ota/OtaManager;->access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/smalife/ota/OtaManager$1;->getDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0
.end method

.method private getDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v1

    .line 194
    .local v1, "gattDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    return-void

    .line 194
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 196
    .local v0, "gattDescriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 197
    iget-object v3, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v3}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 198
    iget-object v3, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v3}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method

.method private declared-synchronized readspcial(Landroid/bluetooth/BluetoothGatt;ILjava/util/UUID;Ljava/util/UUID;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "serviceUUID"    # Ljava/util/UUID;
    .param p4, "characteristicUUID"    # Ljava/util/UUID;

    .prologue
    .line 137
    monitor-enter p0

    if-eqz p3, :cond_1

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smalife/ota/OtaManager;->access$8(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattService;)V

    .line 140
    if-eqz p4, :cond_0

    .line 141
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    iget-object v2, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v2}, Lcom/smalife/ota/OtaManager;->access$9(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 142
    invoke-virtual {v2, p4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Lcom/smalife/ota/OtaManager;->access$10(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 143
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 144
    const/4 v2, 0x1

    .line 143
    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 145
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 146
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$11(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smalife/ota/OtaManager$1;->getDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$9(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/smalife/ota/OtaManager$1;->getCharacteristics(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0, p1}, Lcom/smalife/ota/OtaManager$1;->displayGattServices(Landroid/bluetooth/BluetoothGatt;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/smalife/ota/OtaManager$1;->displayGattServices(Landroid/bluetooth/BluetoothGatt;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/smalife/ota/OtaManager;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$17(Lcom/smalife/ota/OtaManager;[B)V

    .line 226
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 206
    if-nez p3, :cond_0

    .line 207
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/smalife/ota/OtaManager;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$12(Lcom/smalife/ota/OtaManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$13(Lcom/smalife/ota/OtaManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$14(Lcom/smalife/ota/OtaManager;I)V

    .line 210
    const-string v0, "wsh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ----\u5199\u5c0f\u5305--\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v2}, Lcom/smalife/ota/OtaManager;->access$13(Lcom/smalife/ota/OtaManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$13(Lcom/smalife/ota/OtaManager;)I

    move-result v0

    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$15(Lcom/smalife/ota/OtaManager;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$13(Lcom/smalife/ota/OtaManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$16(Lcom/smalife/ota/OtaManager;I)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 88
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-nez p3, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, "refresh":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 94
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0    # "refresh":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 232
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 104
    const-string v0, "wsh"

    const-string v1, "onServicesDiscovered "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/smalife/ota/OtaManager;->RX_SERVICE_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/smalife/ota/OtaManager;->RX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {p0, p2, v0, v1}, Lcom/smalife/ota/OtaManager$1;->readWatchData(ILjava/util/UUID;Ljava/util/UUID;)V

    .line 107
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/smalife/ota/OtaManager;->RX_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$1(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattService;)V

    .line 110
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$2(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    iget-object v1, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$2(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/smalife/ota/OtaManager;->WX_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$3(Lcom/smalife/ota/OtaManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 114
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$4(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$5(Lcom/smalife/ota/OtaManager;Z)V

    .line 118
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$6(Lcom/smalife/ota/OtaManager;)Lcom/smalife/ota/OtaManager$FirstConnectThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    new-instance v1, Lcom/smalife/ota/OtaManager$FirstConnectThread;

    iget-object v2, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/smalife/ota/OtaManager$FirstConnectThread;-><init>(Lcom/smalife/ota/OtaManager;Lcom/smalife/ota/OtaManager$FirstConnectThread;)V

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$7(Lcom/smalife/ota/OtaManager;Lcom/smalife/ota/OtaManager$FirstConnectThread;)V

    .line 120
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$6(Lcom/smalife/ota/OtaManager;)Lcom/smalife/ota/OtaManager$FirstConnectThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/ota/OtaManager$FirstConnectThread;->start()V

    goto :goto_0
.end method

.method public readWatchData(ILjava/util/UUID;Ljava/util/UUID;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "serivce"    # Ljava/util/UUID;
    .param p3, "characteristic"    # Ljava/util/UUID;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$1;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$0(Lcom/smalife/ota/OtaManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/smalife/ota/OtaManager$1;->readspcial(Landroid/bluetooth/BluetoothGatt;ILjava/util/UUID;Ljava/util/UUID;)V

    .line 127
    return-void
.end method
