.class Lcom/smalife/activity/SetSmaQActivity$1;
.super Landroid/os/Handler;
.source "SetSmaQActivity.java"


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
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v1}, Lcom/smalife/activity/SetSmaQActivity;->access$0(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v1}, Lcom/smalife/activity/SetSmaQActivity;->access$1(Lcom/smalife/activity/SetSmaQActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    const-string v1, "ble ota>>>>not found device"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    .line 97
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$0(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$0(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setDeviceName(Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v1

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setKeepBond(Z)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    .line 100
    .local v0, "starter":Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    const-string v1, "SM05"

    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setZip(I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$1;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const-class v2, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-virtual {v0, v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
