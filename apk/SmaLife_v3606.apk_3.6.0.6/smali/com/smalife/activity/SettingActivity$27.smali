.class Lcom/smalife/activity/SettingActivity$27;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->startBLEOta(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$0(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$4(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->colseDialog()V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$3(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$4(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 1393
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$27;->this$0:Lcom/smalife/activity/SettingActivity;

    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Lcom/smalife/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$8(Lcom/smalife/activity/SettingActivity;Ljava/lang/String;)V

    .line 1395
    :cond_1
    return-void
.end method
