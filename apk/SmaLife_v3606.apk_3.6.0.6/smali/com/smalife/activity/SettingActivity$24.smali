.class Lcom/smalife/activity/SettingActivity$24;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SettingActivity;->exit(I)V
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
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    iput-object p2, p0, Lcom/smalife/activity/SettingActivity$24;->val$dialog:Landroid/app/Dialog;

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1253
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 1254
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1255
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1260
    :cond_0
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    iget-object v5, v5, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5, v7}, Lcom/smalife/MyApplication;->editBonded(Z)V

    .line 1261
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1262
    .local v4, "unbond":Landroid/content/Intent;
    const-string v5, "AskAction"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const-string v5, "action_key"

    .line 1264
    const/16 v6, 0x10

    .line 1263
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v5, v4}, Lcom/smalife/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1268
    sput-boolean v7, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 1269
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    .line 1270
    const-class v8, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1269
    invoke-virtual {v5, v6}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 1271
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    const-string v6, "bluetooth"

    invoke-virtual {v5, v6}, Lcom/smalife/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 1273
    .local v3, "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1274
    .local v2, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1275
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$24;->this$0:Lcom/smalife/activity/SettingActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SettingActivity;->finish()V

    .line 1276
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity$24;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1277
    return-void

    .line 1255
    .end local v2    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    .end local v4    # "unbond":Landroid/content/Intent;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1256
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
