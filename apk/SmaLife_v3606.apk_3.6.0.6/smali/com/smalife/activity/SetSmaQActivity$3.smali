.class Lcom/smalife/activity/SetSmaQActivity$3;
.super Lcom/smalife/upgrade/ble/utils/DfuProgressListenerAdapter;
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
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 918
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/utils/DfuProgressListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    return-object v0
.end method


# virtual methods
.method public onDfuAborted(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 943
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/smalife/activity/SetSmaQActivity$3$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SetSmaQActivity$3$2;-><init>(Lcom/smalife/activity/SetSmaQActivity$3;)V

    .line 950
    const-wide/16 v2, 0xc8

    .line 943
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 951
    return-void
.end method

.method public onDfuCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 923
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/smalife/activity/SetSmaQActivity$3$1;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SetSmaQActivity$3$1;-><init>(Lcom/smalife/activity/SetSmaQActivity$3;)V

    .line 936
    const-wide/16 v2, 0xc8

    .line 923
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 937
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

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ble ota>>>>onError msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const-class v3, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->stopService(Landroid/content/Intent;)Z

    .line 973
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$13(Lcom/smalife/activity/SetSmaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    const-string v0, "ble ota>>>>onError first"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0, v4}, Lcom/smalife/activity/SetSmaQActivity;->access$4(Lcom/smalife/activity/SetSmaQActivity;Z)V

    .line 976
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v0, v0, Lcom/smalife/activity/SetSmaQActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    const-string v0, "ble ota>>>>onError second"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->colseDialog()V

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$14(Lcom/smalife/activity/SetSmaQActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$15(Lcom/smalife/activity/SetSmaQActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    const-string v0, "TAG"

    const-string v1, "onReceive show attention dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const v1, 0x7f090236

    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$9(Lcom/smalife/activity/SetSmaQActivity;I)V

    .line 986
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$10(Lcom/smalife/activity/SetSmaQActivity;Ljava/lang/String;)V

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
    .line 957
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->colseDialog()V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$12(Lcom/smalife/activity/SetSmaQActivity;)V

    .line 963
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$8(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$8(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smalife/activity/MyProgressDialog;->setProgress(I)V

    .line 966
    :cond_1
    return-void
.end method
