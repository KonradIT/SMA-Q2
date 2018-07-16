.class Lcom/smalife/activity/SettingActivity$7;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->outLogin()V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$7;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 772
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 762
    new-instance v0, Landroid/content/Intent;

    .line 763
    const-string v1, "android.alarm.logs.action"

    .line 762
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, "syncIntent":Landroid/content/Intent;
    const-string v1, "userAccount"

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$7;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v2}, Lcom/smalife/activity/SettingActivity;->access$16(Lcom/smalife/activity/SettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$7;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 766
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$7;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/SettingActivity;->access$17(Lcom/smalife/activity/SettingActivity;)V

    .line 767
    return-void
.end method
