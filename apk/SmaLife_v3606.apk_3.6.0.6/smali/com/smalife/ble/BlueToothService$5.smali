.class Lcom/smalife/ble/BlueToothService$5;
.super Ljava/lang/Thread;
.source "BlueToothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ble/BlueToothService;->onCreate()V
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
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 192
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    if-nez v4, :cond_1

    .line 239
    return-void

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$26(Lcom/smalife/ble/BlueToothService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$27(Lcom/smalife/ble/BlueToothService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v4, v6, :cond_2

    .line 196
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 196
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$14(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    const/4 v2, 0x0

    .line 210
    .local v2, "data":[B
    :try_start_4
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$27(Lcom/smalife/ble/BlueToothService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 211
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xab

    if-ne v4, v5, :cond_4

    .line 212
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Lcom/smalife/ble/BlueToothService$5;->sleep(J)V

    .line 213
    array-length v4, v2

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 214
    :cond_3
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$28(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 218
    :cond_4
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$4(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$29(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$29(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 223
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$4(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v5}, Lcom/smalife/ble/BlueToothService;->access$29(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 225
    :catch_1
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$14(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    if-nez v4, :cond_5

    .line 227
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$14(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 229
    :cond_5
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$28(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v4

    if-nez v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$5;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$28(Lcom/smalife/ble/BlueToothService;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 233
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
