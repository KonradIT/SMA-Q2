.class Lcom/smalife/activity/SettingActivity$1;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 671
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 674
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 675
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 677
    :sswitch_0
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, v1, Lcom/smalife/activity/SettingActivity;->context:Landroid/content/Context;

    .line 678
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 679
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 682
    :sswitch_1
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, v1, Lcom/smalife/activity/SettingActivity;->context:Landroid/content/Context;

    .line 683
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 687
    :sswitch_2
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$0(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 688
    const-string v1, "ble ota>>>>not found device"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_1
    new-instance v1, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    .line 692
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$0(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;-><init>(Ljava/lang/String;)V

    .line 692
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$0(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setDeviceName(Ljava/lang/String;)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v1

    .line 693
    invoke-virtual {v1, v4}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setKeepBond(Z)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    move-result-object v0

    .line 698
    .local v0, "starter":Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;
    const-string v1, "SM07"

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v2, v2, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 699
    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 699
    if-eqz v1, :cond_0

    .line 700
    const-string v1, "PAH8002"

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v2, v2, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFirmType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setZip(I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    .line 705
    :goto_1
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$1;->this$0:Lcom/smalife/activity/SettingActivity;

    const-class v2, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-virtual {v0, v1, v2}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->start(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 703
    :cond_2
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;->setZip(I)Lcom/smalife/upgrade/ble/utils/DfuServiceInitiator;

    goto :goto_1

    .line 675
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
