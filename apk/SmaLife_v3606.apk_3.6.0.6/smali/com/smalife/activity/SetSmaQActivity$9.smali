.class Lcom/smalife/activity/SetSmaQActivity$9;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->startBLEOta(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$0(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$6(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->colseDialog()V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$5(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v1}, Lcom/smalife/activity/SetSmaQActivity;->access$6(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 510
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$9;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$10(Lcom/smalife/activity/SetSmaQActivity;Ljava/lang/String;)V

    .line 512
    :cond_1
    return-void
.end method
