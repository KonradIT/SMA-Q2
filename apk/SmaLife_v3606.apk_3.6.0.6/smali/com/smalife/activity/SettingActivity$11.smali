.class Lcom/smalife/activity/SettingActivity$11;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->updateDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    iput p2, p0, Lcom/smalife/activity/SettingActivity$11;->val$status:I

    iput-object p3, p0, Lcom/smalife/activity/SettingActivity$11;->val$dialog:Landroid/app/Dialog;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 911
    iget v1, p0, Lcom/smalife/activity/SettingActivity$11;->val$status:I

    if-ne v1, v4, :cond_1

    .line 913
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$18(Lcom/smalife/activity/SettingActivity;)Landroid/content/Context;

    move-result-object v1

    .line 914
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 915
    const v3, 0x7f0901b0

    .line 914
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 916
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 917
    new-instance v0, Landroid/content/Intent;

    .line 918
    const-string v1, "AskAction"

    .line 917
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, "otaIntent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 920
    const/16 v2, 0x31

    .line 919
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 921
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 922
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 934
    .end local v0    # "otaIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget v1, p0, Lcom/smalife/activity/SettingActivity$11;->val$status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 924
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, v1, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v4}, Lcom/smalife/MyApplication;->editQota(Z)V

    .line 925
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 926
    const-class v4, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 925
    invoke-virtual {v1, v2}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 927
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 928
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 929
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$18(Lcom/smalife/activity/SettingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smalife/ota/OtaManager;->getOtaManager(Landroid/content/Context;)Lcom/smalife/ota/OtaManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smalife/activity/SettingActivity;->access$19(Lcom/smalife/activity/SettingActivity;Lcom/smalife/ota/OtaManager;)V

    .line 930
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$20(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/ota/OtaManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v1, v2}, Lcom/smalife/ota/OtaManager;->setGattCallbacks(Lcom/smalife/ota/OtaCallbacks;)V

    .line 931
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$20(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/ota/OtaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/ota/OtaManager;->disconnect()V

    .line 932
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$11;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$21(Lcom/smalife/activity/SettingActivity;)V

    goto :goto_0
.end method
