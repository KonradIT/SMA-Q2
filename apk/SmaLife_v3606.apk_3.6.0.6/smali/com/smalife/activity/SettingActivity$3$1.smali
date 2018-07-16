.class Lcom/smalife/activity/SettingActivity$3$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity$3;->onDfuCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/SettingActivity$3;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v2

    .line 1537
    const-class v3, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1536
    invoke-virtual {v0, v1}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 1538
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$6(Lcom/smalife/activity/SettingActivity;Z)V

    .line 1539
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/MyProgressDialog;->colseDialog()V

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editBleVersion(Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editFirmWareVersion(Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    .line 1545
    const v1, 0x7f090235

    .line 1546
    const/4 v2, 0x0

    .line 1544
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1547
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$3$1;->this$1:Lcom/smalife/activity/SettingActivity$3;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity$3;->access$0(Lcom/smalife/activity/SettingActivity$3;)Lcom/smalife/activity/SettingActivity;

    move-result-object v1

    const v2, 0x7f090238

    invoke-virtual {v1, v2}, Lcom/smalife/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$8(Lcom/smalife/activity/SettingActivity;Ljava/lang/String;)V

    .line 1548
    return-void
.end method
