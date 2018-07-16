.class Lcom/smalife/activity/SettingActivity$3;
.super Lcom/smalife/upgrade/ble/utils/DfuProgressListenerAdapter;
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1528
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/utils/DfuProgressListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onDfuAborted(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1556
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/smalife/activity/SettingActivity$3$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SettingActivity$3$2;-><init>(Lcom/smalife/activity/SettingActivity$3;)V

    .line 1563
    const-wide/16 v2, 0xc8

    .line 1556
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1564
    return-void
.end method

.method public onDfuCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1533
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/smalife/activity/SettingActivity$3$1;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SettingActivity$3$1;-><init>(Lcom/smalife/activity/SettingActivity$3;)V

    .line 1549
    const-wide/16 v2, 0xc8

    .line 1533
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1550
    return-void
.end method

.method public onError(Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "errorType"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ble ota>>>>onError msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    const-class v3, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 1586
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$11(Lcom/smalife/activity/SettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    const-string v0, "ble ota>>>>onError first"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0, v4}, Lcom/smalife/activity/SettingActivity;->access$2(Lcom/smalife/activity/SettingActivity;Z)V

    .line 1589
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$5(Lcom/smalife/activity/SettingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    const-string v0, "ble ota>>>>onError second"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1593
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->colseDialog()V

    .line 1596
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$12(Lcom/smalife/activity/SettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$13(Lcom/smalife/activity/SettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    const-string v0, "onReceive show attention dialog"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1599
    const v1, 0x7f090236

    .line 1598
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1600
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1601
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Lcom/smalife/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$8(Lcom/smalife/activity/SettingActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgressChanged(Ljava/lang/String;IFFII)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "percent"    # I
    .param p3, "speed"    # F
    .param p4, "avgSpeed"    # F
    .param p5, "currentPart"    # I
    .param p6, "partsTotal"    # I

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->colseDialog()V

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$10(Lcom/smalife/activity/SettingActivity;)V

    .line 1576
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smalife/activity/MyProgressDialog;->setProgress(I)V

    .line 1579
    :cond_1
    return-void
.end method
