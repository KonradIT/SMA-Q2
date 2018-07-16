.class Lcom/smalife/activity/SettingActivity$14;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SettingActivity;

.field private final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SettingActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$14;->this$0:Lcom/smalife/activity/SettingActivity;

    iput-object p2, p0, Lcom/smalife/activity/SettingActivity$14;->val$bundle:Landroid/os/Bundle;

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$14;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity$14;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1057
    const-class v3, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1056
    invoke-virtual {v0, v1}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 1058
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity$14;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity$14;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/smalife/activity/SettingActivity;->access$22(Lcom/smalife/activity/SettingActivity;Landroid/os/Bundle;)V

    .line 1059
    return-void
.end method
