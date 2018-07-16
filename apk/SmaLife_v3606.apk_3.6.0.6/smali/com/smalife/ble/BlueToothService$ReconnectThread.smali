.class Lcom/smalife/ble/BlueToothService$ReconnectThread;
.super Ljava/lang/Thread;
.source "BlueToothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconnectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method private constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2785
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$ReconnectThread;)V
    .locals 0

    .prologue
    .line 2785
    invoke-direct {p0, p1}, Lcom/smalife/ble/BlueToothService$ReconnectThread;-><init>(Lcom/smalife/ble/BlueToothService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2788
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2790
    :try_start_0
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$22(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2791
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    const-string v3, "bluetooth"

    invoke-virtual {v1, v3}, Lcom/smalife/ble/BlueToothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 2792
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2791
    invoke-static {v2, v1}, Lcom/smalife/ble/BlueToothService;->access$23(Lcom/smalife/ble/BlueToothService;Landroid/bluetooth/BluetoothAdapter;)V

    .line 2794
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$24(Lcom/smalife/ble/BlueToothService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/smalife/ble/BlueToothService$ReconnectThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2841
    :cond_1
    :goto_1
    return-void

    .line 2795
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CmdKeyValue.BLE.isRun = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2796
    const-string v2, ",application.getQota() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2797
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getQota()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2795
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2798
    sget-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getQota()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2799
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$22(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2800
    const-string v1, "ReconnectThread>>>>CmdKeyValue.BLE.isRun && !application.getQota()&& mBluetoothAdapter.isEnabled()"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2801
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v1, :cond_6

    .line 2802
    const-string v1, "ReconnectThread>>>>!CmdKeyValue.BLE.connected"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2803
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2804
    const-string v1, "ReconnectThread>>>>application.getBonded()"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2805
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2806
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$22(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2807
    const-string v1, ""

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v2

    .line 2808
    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 2807
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2808
    if-nez v1, :cond_3

    .line 2809
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$22(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 2810
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v2

    .line 2811
    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 2810
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2812
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V

    .line 2836
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    :goto_2
    const-wide/32 v2, 0x8ca0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 2838
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 2815
    :cond_4
    sget-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    if-eqz v1, :cond_5

    .line 2816
    const-string v1, "ReconnectThread>>>>BLE.firstBonded"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2817
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2819
    const-string v1, "ReconnectThread>>>>!application.getBonded()"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2820
    const/4 v1, 0x1

    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 2821
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->connectBLE(Landroid/bluetooth/BluetoothDevice;)V

    .line 2822
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 2825
    :cond_5
    const-string v1, "ReconnectThread>>>>!application.getBonded()&&!BLE.firstBonded"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2826
    const/4 v1, 0x0

    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    goto :goto_2

    .line 2829
    :cond_6
    const-string v1, "ReconnectThread>>>>CmdKeyValue.BLE.connected"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 2832
    :cond_7
    const-string v1, "ReconnectThread>>>>!CmdKeyValue.BLE.isRun || application.getQota()|| !mBluetoothAdapter.isEnabled()"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 2833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getQota()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2834
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$ReconnectThread;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService;->access$22(Lcom/smalife/ble/BlueToothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2833
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
