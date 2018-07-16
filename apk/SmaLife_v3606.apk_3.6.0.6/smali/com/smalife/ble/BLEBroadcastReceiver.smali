.class public Lcom/smalife/ble/BLEBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BLEBroadcastReceiver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getmHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "ActionString":Ljava/lang/String;
    const-string v17, "BondingActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 39
    const-string v17, "bondResult"

    const/16 v18, 0x0

    .line 38
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 40
    .local v16, "success":Z
    if-eqz v16, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    .end local v16    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v17, "UnBondingActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 45
    :cond_2
    const-string v17, "LoginActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 47
    const-string v17, "loginResult"

    const/16 v18, 0x0

    .line 46
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 48
    .local v11, "loginStatus":Z
    if-eqz v11, :cond_0

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 51
    .end local v11    # "loginStatus":Z
    :cond_3
    const-string v17, "SportActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 53
    const-string v17, "SportResult"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    .line 52
    check-cast v15, Lcom/smalife/db/entity/SportEntity;

    .line 54
    .local v15, "sport":Lcom/smalife/db/entity/SportEntity;
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 55
    .local v12, "msg":Landroid/os/Message;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 56
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v7, "data":Landroid/os/Bundle;
    const-string v17, "sport_data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 60
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v15    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_4
    const-string v17, "SleepActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 62
    const-string v17, "SleepResult"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 63
    .local v14, "slist":Ljava/util/ArrayList;
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 64
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 65
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 66
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "sleep_data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 69
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v14    # "slist":Ljava/util/ArrayList;
    :cond_5
    const-string v17, "SleepSetActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 71
    const-string v17, "SleepSetResult"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 72
    .local v13, "setlist":Ljava/util/ArrayList;
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 73
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 74
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 75
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "sport_data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 79
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v13    # "setlist":Ljava/util/ArrayList;
    :cond_6
    const-string v17, "ContalActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 80
    const-string v17, "ContralResult"

    .line 81
    const/16 v18, 0x0

    .line 80
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v6

    .line 82
    .local v6, "code_v":B
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 83
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 84
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 85
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "contral_key"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 86
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 89
    .end local v6    # "code_v":B
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v12    # "msg":Landroid/os/Message;
    :cond_7
    const-string v17, "ClockListActionString"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 91
    const-string v17, "ClockListResult"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    .line 90
    check-cast v8, Ljava/util/ArrayList;

    .line 92
    .local v8, "fieldlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 93
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x6

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 94
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 95
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "clock_list_key"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 99
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v8    # "fieldlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    .end local v12    # "msg":Landroid/os/Message;
    :cond_8
    const-string v17, "BatteryActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 100
    const-string v17, "BatteryReslut"

    .line 101
    sget v18, Lcom/smalife/ble/CmdKeyValue$BLE;->battery_level:I

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 100
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 102
    .local v10, "level":I
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 103
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x7

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 104
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 105
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "battery_key"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 108
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v10    # "level":I
    .end local v12    # "msg":Landroid/os/Message;
    :cond_9
    const-string v17, "OTAActionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 110
    const-string v17, "OTAResult"

    const/16 v18, 0x0

    .line 109
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 111
    .local v9, "isOta":Z
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 112
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x8

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 113
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 114
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "ota_key"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    const-string v17, "blue_tooth"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 117
    .local v5, "blue_tooth":Landroid/bluetooth/BluetoothDevice;
    const-string v17, "toothDevice"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 120
    .end local v5    # "blue_tooth":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v9    # "isOta":Z
    .end local v12    # "msg":Landroid/os/Message;
    :cond_a
    const-string v17, "localAction"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 121
    const-string v17, "ble"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 122
    .local v4, "ble_conneted":I
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 123
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x9

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 124
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 125
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v17, "ble_conneted"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {v12, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 128
    .end local v4    # "ble_conneted":I
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v12    # "msg":Landroid/os/Message;
    :cond_b
    const-string v17, "FrimWareVersionResult"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 131
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 132
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v17, 0x9

    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->what:I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public setmHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smalife/ble/BLEBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method
