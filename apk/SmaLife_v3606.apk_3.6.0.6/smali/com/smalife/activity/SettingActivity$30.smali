.class Lcom/smalife/activity/SettingActivity$30;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->showBleLoadingProgressBar()V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$30;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$30;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v1, Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$30;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-direct {v1, v2}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$27(Lcom/smalife/activity/SettingActivity;Lcom/smalife/upgrade/ble/utils/ProgressDialog;)V

    .line 1508
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$30;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-static {v0}, Lcom/smalife/activity/SettingActivity;->access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/upgrade/ble/utils/ProgressDialog;->initDialog()V

    .line 1509
    return-void
.end method
