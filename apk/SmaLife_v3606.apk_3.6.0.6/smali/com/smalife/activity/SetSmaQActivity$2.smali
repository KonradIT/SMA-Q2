.class Lcom/smalife/activity/SetSmaQActivity$2;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SetSmaQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$2;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    .line 548
    .local v0, "deviceName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ble ota device name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 549
    const-string v1, "DfuTarg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const-string v1, "ble ota found device"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$2;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v1, p1}, Lcom/smalife/activity/SetSmaQActivity;->access$3(Lcom/smalife/activity/SetSmaQActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 555
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$2;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->access$4(Lcom/smalife/activity/SetSmaQActivity;Z)V

    .line 556
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$2;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v1}, Lcom/smalife/activity/SetSmaQActivity;->access$5(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$2;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$6(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 557
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$2;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v1, v1, Lcom/smalife/activity/SetSmaQActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    :cond_0
    return-void

    .line 547
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
