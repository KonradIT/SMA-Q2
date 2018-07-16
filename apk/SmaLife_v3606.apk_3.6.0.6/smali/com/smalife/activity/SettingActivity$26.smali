.class Lcom/smalife/activity/SettingActivity$26;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->showBleOtaDialog()V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$26;->this$0:Lcom/smalife/activity/SettingActivity;

    iput-object p2, p0, Lcom/smalife/activity/SettingActivity$26;->val$dialog:Landroid/app/Dialog;

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1357
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$26;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, v1, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editQota(Z)V

    .line 1358
    new-instance v0, Landroid/content/Intent;

    .line 1359
    const-string v1, "AskAction"

    .line 1358
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v0, "otaIntent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 1361
    const/16 v2, 0x31

    .line 1360
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$26;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1363
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$26;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1364
    return-void
.end method
