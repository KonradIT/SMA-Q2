.class Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlueToothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method private constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2456
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 2456
    invoke-direct {p0, p1}, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;-><init>(Lcom/smalife/ble/BlueToothService;)V

    return-void
.end method


# virtual methods
.method public doReceivePhone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 2473
    .line 2474
    const-string v7, "incoming_number"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2476
    .local v4, "phoneNumber":Ljava/lang/String;
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 2475
    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 2478
    .local v6, "telephony":Landroid/telephony/TelephonyManager;
    const-string v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2477
    check-cast v1, Landroid/media/AudioManager;

    .line 2479
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    .line 2480
    .local v5, "state":I
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getCallNotic()Z

    move-result v0

    .line 2481
    .local v0, "call_notic":Z
    packed-switch v5, :pswitch_data_0

    .line 2524
    :cond_0
    :goto_0
    return-void

    .line 2483
    :pswitch_0
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    invoke-static {v7, v8}, Lcom/smalife/ble/BlueToothService;->access$17(Lcom/smalife/ble/BlueToothService;I)V

    .line 2484
    if-eqz v0, :cond_0

    .line 2485
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$18(Lcom/smalife/ble/BlueToothService;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2486
    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2487
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v7, v4}, Lcom/smalife/ble/BlueToothService;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2488
    .local v2, "name1":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2489
    :cond_1
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 2490
    iget-object v8, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 2489
    invoke-virtual {v7, v8, v4}, Lcom/smalife/ble/BlueToothService;->getNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2491
    .local v3, "name2":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2492
    :cond_2
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7, v4}, Lcom/smalife/ble/BlueToothService;->access$19(Lcom/smalife/ble/BlueToothService;Ljava/lang/String;)V

    .line 2502
    .end local v2    # "name1":Ljava/lang/String;
    .end local v3    # "name2":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/smalife/ble/BlueToothService;->access$20(Lcom/smalife/ble/BlueToothService;Z)V

    goto :goto_0

    .line 2494
    .restart local v2    # "name1":Ljava/lang/String;
    .restart local v3    # "name2":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7, v3}, Lcom/smalife/ble/BlueToothService;->access$19(Lcom/smalife/ble/BlueToothService;Ljava/lang/String;)V

    goto :goto_1

    .line 2497
    .end local v3    # "name2":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7, v2}, Lcom/smalife/ble/BlueToothService;->access$19(Lcom/smalife/ble/BlueToothService;Ljava/lang/String;)V

    goto :goto_1

    .line 2500
    .end local v2    # "name1":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    new-array v8, v9, [B

    invoke-virtual {v7, v8}, Lcom/smalife/ble/BlueToothService;->callcoming([B)V

    goto :goto_1

    .line 2507
    :pswitch_1
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$18(Lcom/smalife/ble/BlueToothService;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2508
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$21(Lcom/smalife/ble/BlueToothService;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2509
    if-eqz v0, :cond_6

    .line 2510
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    new-array v8, v9, [B

    invoke-virtual {v7, v8}, Lcom/smalife/ble/BlueToothService;->callIdle([B)V

    .line 2513
    :cond_6
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7, v9}, Lcom/smalife/ble/BlueToothService;->access$20(Lcom/smalife/ble/BlueToothService;Z)V

    goto/16 :goto_0

    .line 2517
    :pswitch_2
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v7}, Lcom/smalife/ble/BlueToothService;->access$18(Lcom/smalife/ble/BlueToothService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2518
    if-eqz v0, :cond_0

    .line 2519
    iget-object v7, p0, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->this$0:Lcom/smalife/ble/BlueToothService;

    new-array v8, v9, [B

    invoke-virtual {v7, v8}, Lcom/smalife/ble/BlueToothService;->callOffHook([B)V

    goto/16 :goto_0

    .line 2481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2462
    invoke-virtual {p0, p1, p2}, Lcom/smalife/ble/BlueToothService$PhoneBroadcastReceiver;->doReceivePhone(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2464
    :cond_0
    return-void
.end method
