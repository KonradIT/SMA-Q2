.class Lcom/smalife/activity/SettingActivity$13;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->updateDialog_05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    iput-object p2, p0, Lcom/smalife/activity/SettingActivity$13;->val$dialog:Landroid/app/Dialog;

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 964
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v4}, Lcom/smalife/activity/SettingActivity;->access$18(Lcom/smalife/activity/SettingActivity;)Landroid/content/Context;

    move-result-object v4

    .line 965
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 966
    const v6, 0x7f0901b0

    .line 965
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 967
    const/4 v6, 0x1

    .line 963
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 967
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 968
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 969
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Lcom/smalife/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 970
    .local v3, "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v3, :cond_2

    .line 972
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 973
    .local v2, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v4, v4, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "address":Ljava/lang/String;
    const-string v4, ""

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    .line 987
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-void

    .line 978
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 979
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 982
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 983
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v4}, Lcom/smalife/activity/SettingActivity;->access$20(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/ota/OtaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smalife/ota/OtaManager;->resetStatus()V

    .line 984
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v4}, Lcom/smalife/activity/SettingActivity;->access$20(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/ota/OtaManager;

    move-result-object v4

    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$13;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v5}, Lcom/smalife/activity/SettingActivity;->access$18(Lcom/smalife/activity/SettingActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/smalife/ota/OtaManager;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 986
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
