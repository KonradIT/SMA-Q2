.class Lcom/smalife/upgrade/ble/service/DFUBaseService$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    .line 771
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 776
    .line 777
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 778
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$0(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 790
    :goto_0
    return-void

    .line 781
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action received: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$1(Lcom/smalife/upgrade/ble/service/DFUBaseService;Ljava/lang/String;)V

    .line 784
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$2(Lcom/smalife/upgrade/ble/service/DFUBaseService;I)V

    .line 787
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 788
    :try_start_0
    iget-object v2, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$1;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 787
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
