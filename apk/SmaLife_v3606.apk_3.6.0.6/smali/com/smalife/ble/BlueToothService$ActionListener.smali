.class Lcom/smalife/ble/BlueToothService$ActionListener;
.super Landroid/content/BroadcastReceiver;
.source "BlueToothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method private constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 2240
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/ble/BlueToothService;Lcom/smalife/ble/BlueToothService$ActionListener;)V
    .locals 0

    .prologue
    .line 2240
    invoke-direct {p0, p1}, Lcom/smalife/ble/BlueToothService$ActionListener;-><init>(Lcom/smalife/ble/BlueToothService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2243
    const-string v1, "action_key"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2244
    .local v9, "action_key":I
    packed-switch v9, :pswitch_data_0

    .line 2427
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2246
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/smalife/ble/BlueToothService;->id_bytes:[B

    .line 2247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->unBond([B)V

    goto :goto_0

    .line 2250
    :pswitch_2
    const-string v1, "clock_action"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2251
    const-string v1, "clock_btyes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 2252
    .local v12, "clock_bytes":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v12}, Lcom/smalife/ble/BlueToothService;->writeRXCharacteristic([B)V

    goto :goto_0

    .line 2255
    .end local v12    # "clock_bytes":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1}, Lcom/smalife/ble/BlueToothService;->clockList()V

    goto :goto_0

    .line 2258
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->sync([B)V

    goto :goto_0

    .line 2261
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->sync([B)V

    goto :goto_0

    .line 2266
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1}, Lcom/smalife/ble/BlueToothService;->showLove()V

    goto :goto_0

    .line 2269
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1}, Lcom/smalife/ble/BlueToothService;->loveCall()V

    goto :goto_0

    .line 2272
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->lostSetting(Z)V

    goto :goto_0

    .line 2275
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->lostSetting(Z)V

    goto :goto_0

    .line 2278
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2279
    const-string v1, "tel_notic_enable"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->enableCall(Z)V

    goto/16 :goto_0

    .line 2284
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2285
    const-string v1, "tel_notic_disable"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->enableCall(Z)V

    goto/16 :goto_0

    .line 2291
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2292
    const-string v1, "msg_notic_enable"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->enableSms(Z)V

    goto/16 :goto_0

    .line 2295
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->msgNotic([B)V

    goto/16 :goto_0

    .line 2299
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2300
    const-string v1, "msg_notic_disable"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->enableSms(Z)V

    goto/16 :goto_0

    .line 2303
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->msgNotic([B)V

    goto/16 :goto_0

    .line 2308
    :pswitch_e
    const-string v1, "long_sit"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    .line 2307
    check-cast v15, Lcom/smalife/db/entity/LongSitEntity;

    .line 2309
    .local v15, "entity":Lcom/smalife/db/entity/LongSitEntity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "long sit entity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2310
    if-eqz v15, :cond_0

    .line 2311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getDays()[I

    move-result-object v2

    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getEnd()B

    move-result v3

    .line 2312
    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getStart()B

    move-result v4

    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getSit()B

    move-result v5

    .line 2313
    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getSteps()I

    move-result v6

    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getOpen()B

    move-result v7

    .line 2314
    invoke-virtual {v15}, Lcom/smalife/db/entity/LongSitEntity;->getReapte()B

    move-result v8

    .line 2311
    invoke-virtual/range {v1 .. v8}, Lcom/smalife/ble/BlueToothService;->longsit([IBBBIBB)V

    goto/16 :goto_0

    .line 2319
    .end local v15    # "entity":Lcom/smalife/db/entity/LongSitEntity;
    :pswitch_f
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    .line 2318
    check-cast v24, Lcom/smalife/db/entity/UserEntity;

    .line 2320
    .local v24, "user":Lcom/smalife/db/entity/UserEntity;
    if-eqz v24, :cond_0

    .line 2321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual/range {v24 .. v24}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 2322
    invoke-virtual/range {v24 .. v24}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2321
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smalife/ble/BlueToothService;->userInfo(IIFF)V

    goto/16 :goto_0

    .line 2326
    .end local v24    # "user":Lcom/smalife/db/entity/UserEntity;
    :pswitch_10
    const-string v1, "steps"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 2327
    .local v23, "steps":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->stepAim(I)V

    goto/16 :goto_0

    .line 2331
    .end local v23    # "steps":I
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1}, Lcom/smalife/ble/BlueToothService;->systemUpdate()V

    goto/16 :goto_0

    .line 2334
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->OTAMode([B)V

    goto/16 :goto_0

    .line 2337
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->batteryLevel([B)V

    goto/16 :goto_0

    .line 2340
    :pswitch_14
    const-string v1, "message_btyes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v18

    .line 2341
    .local v18, "message":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->sendMessage([B)V

    goto/16 :goto_0

    .line 2345
    .end local v18    # "message":[B
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->sport_shouhuan([B)V

    goto/16 :goto_0

    .line 2348
    :pswitch_16
    const-string v1, "sleep_btyes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v20

    .line 2349
    .local v20, "set_sleep":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->setSleep([B)V

    goto/16 :goto_0

    .line 2352
    .end local v20    # "set_sleep":[B
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->getFirmWareVersion([B)V

    goto/16 :goto_0

    .line 2355
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->getRate([B)V

    goto/16 :goto_0

    .line 2358
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->getRate_shouhuan([B)V

    goto/16 :goto_0

    .line 2361
    :pswitch_1a
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 2362
    .local v13, "disturb":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v13}, Lcom/smalife/ble/BlueToothService;->setDisturb([B)V

    goto/16 :goto_0

    .line 2365
    .end local v13    # "disturb":[B
    :pswitch_1b
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v22

    .line 2366
    .local v22, "sleep_detection":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->setSleepDetection([B)V

    goto/16 :goto_0

    .line 2369
    .end local v22    # "sleep_detection":[B
    :pswitch_1c
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 2370
    .local v14, "disturb_shouhuan":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v14}, Lcom/smalife/ble/BlueToothService;->setNodisturb_shouhuan([B)V

    goto/16 :goto_0

    .line 2373
    .end local v14    # "disturb_shouhuan":[B
    :pswitch_1d
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 2374
    .local v10, "backlight":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v10}, Lcom/smalife/ble/BlueToothService;->setBacklightTime([B)V

    goto/16 :goto_0

    .line 2377
    .end local v10    # "backlight":[B
    :pswitch_1e
    const-string v1, "camera_btyes"

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2378
    .local v11, "camera":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_3

    .line 2379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->openCamera([B)V

    goto/16 :goto_0

    .line 2381
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->closeCamera([B)V

    goto/16 :goto_0

    .line 2385
    .end local v11    # "camera":I
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$16(Lcom/smalife/ble/BlueToothService;)V

    goto/16 :goto_0

    .line 2400
    :pswitch_20
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v21

    .line 2401
    .local v21, "shoct_time":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->setShoct([B)V

    goto/16 :goto_0

    .line 2405
    .end local v21    # "shoct_time":[B
    :pswitch_21
    const-string v1, "rate_set"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    .line 2404
    check-cast v19, Lcom/smalife/entity/RateSetEntity;

    .line 2406
    .local v19, "rateEntity":Lcom/smalife/entity/RateSetEntity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> entiry = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/smalife/entity/RateSetEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2407
    if-eqz v19, :cond_0

    .line 2408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->rateSet(Lcom/smalife/entity/RateSetEntity;)V

    goto/16 :goto_0

    .line 2412
    .end local v19    # "rateEntity":Lcom/smalife/entity/RateSetEntity;
    :pswitch_22
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v17

    .line 2413
    .local v17, "languageset":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> language_set = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->languageSet([B)V

    goto/16 :goto_0

    .line 2417
    .end local v17    # "languageset":[B
    :pswitch_23
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 2418
    .local v16, "handset":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> light_hand_set = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->lightHandSet([B)V

    goto/16 :goto_0

    .line 2422
    .end local v16    # "handset":[B
    :pswitch_24
    const-string v1, "bytes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v25

    .line 2423
    .local v25, "verticalset":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> vertical_screen_set = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/ble/BlueToothService$ActionListener;->this$0:Lcom/smalife/ble/BlueToothService;

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->verticalScreenSet([B)V

    goto/16 :goto_0

    .line 2244
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_15
        :pswitch_19
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_22
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_1b
    .end packed-switch
.end method
