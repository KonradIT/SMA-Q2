.class Lcom/smalife/ble/BlueToothService$6;
.super Ljava/lang/Object;
.source "BlueToothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;

.field private final synthetic val$toothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$6;->this$0:Lcom/smalife/ble/BlueToothService;

    iput-object p2, p0, Lcom/smalife/ble/BlueToothService$6;->val$toothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 335
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$6;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v0}, Lcom/smalife/ble/BlueToothService;->access$4(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectBLE>>>>name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$6;->val$toothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    const-string v1, ",address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$6;->val$toothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$6;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$6;->val$toothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$6;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 341
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smalife/ble/BlueToothService$6;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v4}, Lcom/smalife/ble/BlueToothService;->access$30(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v4

    .line 340
    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/ble/BlueToothService;->access$31(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothGatt;)V

    .line 342
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$6;->val$toothDevice:Landroid/bluetooth/BluetoothDevice;

    sput-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->BONDDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method
