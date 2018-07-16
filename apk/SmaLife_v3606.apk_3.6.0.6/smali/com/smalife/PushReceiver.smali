.class public Lcom/smalife/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# instance fields
.field private fnickName:Ljava/lang/String;

.field private friendAccount:Ljava/lang/String;

.field private methodName:Ljava/lang/String;

.field private msgContent:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field nm:Landroid/app/NotificationManager;

.field preferences:Landroid/content/SharedPreferences;

.field receiver:Lcom/smalife/ClickBroadCastReceiver;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/PushReceiver;->userAccount:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/PushReceiver;->msgContent:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/PushReceiver;->nickName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/PushReceiver;->fnickName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/PushReceiver;->methodName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 40
    .local v11, "bundle":Landroid/os/Bundle;
    const-string v32, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/NotificationManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->nm:Landroid/app/NotificationManager;

    .line 41
    const-string v32, "clientid"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, "client_id":Ljava/lang/String;
    const-string v32, "sma"

    const/16 v33, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "is_login"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 44
    .local v20, "isLogin":Z
    if-eqz v12, :cond_0

    if-eqz v20, :cond_0

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "client_id"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    new-instance v31, Lcom/accloud/service/ACObject;

    invoke-direct/range {v31 .. v31}, Lcom/accloud/service/ACObject;-><init>()V

    .line 47
    .local v31, "uprofile":Lcom/accloud/service/ACObject;
    const-string v32, "client_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 48
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v32

    new-instance v33, Lcom/smalife/PushReceiver$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/smalife/PushReceiver$1;-><init>(Lcom/smalife/PushReceiver;Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/accloud/service/ACAccountMgr;->setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 61
    .end local v31    # "uprofile":Lcom/accloud/service/ACObject;
    :cond_0
    const-string v32, "payload"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v28

    .line 62
    .local v28, "payload":[B
    if-eqz v28, :cond_3

    .line 63
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    .line 64
    .local v15, "data":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v21, "jsonObject":Lorg/json/JSONObject;
    if-eqz v21, :cond_3

    .line 66
    const-string v32, "method"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->methodName:Ljava/lang/String;

    .line 67
    const-string v32, "uAccount"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 68
    const-string v32, "uAccount"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    .line 69
    :cond_1
    const-string v32, "fAccount"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 70
    const-string v32, "fAccount"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->userAccount:Ljava/lang/String;

    .line 71
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->methodName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "askFriend"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 180
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v12    # "client_id":Ljava/lang/String;
    .end local v15    # "data":Ljava/lang/String;
    .end local v20    # "isLogin":Z
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    .end local v28    # "payload":[B
    :cond_3
    :goto_0
    return-void

    .line 73
    .restart local v11    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "client_id":Ljava/lang/String;
    .restart local v15    # "data":Ljava/lang/String;
    .restart local v20    # "isLogin":Z
    .restart local v21    # "jsonObject":Lorg/json/JSONObject;
    .restart local v28    # "payload":[B
    :cond_4
    const-string v32, "nickName"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 74
    .local v17, "fnickName":Ljava/lang/String;
    new-instance v24, Landroid/app/Notification;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification;-><init>()V

    .line 75
    .local v24, "notification":Landroid/app/Notification;
    new-instance v29, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    const v33, 0x7f030042

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 76
    .local v29, "remoteViews":Landroid/widget/RemoteViews;
    const v32, 0x7f0e0013

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f09017c

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 78
    const-string v32, "Sma Pair"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 79
    const v32, 0x7f02013d

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 80
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 81
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 84
    new-instance v7, Landroid/content/Intent;

    const-string v32, "matchAsk_Agree"

    move-object/from16 v0, v32

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v7, "AskAgree":Landroid/content/Intent;
    const-string v32, "friendAccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v32, "userAccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->userAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v32, "FrnickName"

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 89
    .local v6, "ApendingIntent":Landroid/app/PendingIntent;
    const v32, 0x7f0e0171

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    new-instance v8, Landroid/content/Intent;

    const-string v32, "matchAsk_NAgree"

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v8, "AskunAgree":Landroid/content/Intent;
    const-string v32, "friendAccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v32, "userAccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->userAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v32, "FrnickName"

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 96
    .local v4, "ANpendingIntent":Landroid/app/PendingIntent;
    const v32, 0x7f0e0172

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->nm:Landroid/app/NotificationManager;

    move-object/from16 v32, v0

    const/16 v33, 0x6e

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v4    # "ANpendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "ApendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "AskAgree":Landroid/content/Intent;
    .end local v8    # "AskunAgree":Landroid/content/Intent;
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v12    # "client_id":Ljava/lang/String;
    .end local v15    # "data":Ljava/lang/String;
    .end local v17    # "fnickName":Ljava/lang/String;
    .end local v20    # "isLogin":Z
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "notification":Landroid/app/Notification;
    .end local v28    # "payload":[B
    .end local v29    # "remoteViews":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v16

    .line 178
    .local v16, "e":Lorg/json/JSONException;
    const-string v32, "ljh"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 99
    .end local v16    # "e":Lorg/json/JSONException;
    .restart local v11    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "client_id":Ljava/lang/String;
    .restart local v15    # "data":Ljava/lang/String;
    .restart local v20    # "isLogin":Z
    .restart local v21    # "jsonObject":Lorg/json/JSONObject;
    .restart local v28    # "payload":[B
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->methodName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "dispatcherMsg"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 100
    const-string v32, "content_key"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 101
    .local v22, "key":I
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v27, "pair_intent":Landroid/content/Intent;
    const-string v32, "InteractActionString"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v32, "pair_key"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    .end local v22    # "key":I
    .end local v27    # "pair_intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->methodName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "responseAsk"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 107
    new-instance v24, Landroid/app/Notification;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification;-><init>()V

    .line 108
    .restart local v24    # "notification":Landroid/app/Notification;
    const v32, 0x7f02013d

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 109
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 110
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 112
    const-string v32, "agree"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 114
    .local v30, "rt":I
    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 115
    const-string v32, "nickName"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->fnickName:Ljava/lang/String;

    .line 117
    new-instance v5, Landroid/content/Intent;

    const-class v32, Lcom/smalife/activity/PairedActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v5, "AgreeIntent":Landroid/content/Intent;
    const/high16 v32, 0x4000000

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    const-string v32, "nickName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->fnickName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v32, "friendAccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/16 v32, 0x0

    const/high16 v33, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 123
    .local v10, "OkayIntent":Landroid/app/PendingIntent;
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->nickName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09017d

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->msgContent:Ljava/lang/String;

    .line 124
    const-string v32, "Sma Pair"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->msgContent:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 126
    new-instance v18, Landroid/content/Intent;

    const-string v32, "FriendAskActionString"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v18, "friendIntent":Landroid/content/Intent;
    const-string v32, "fnickName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->fnickName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v32, "friendAccount"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "friendName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->fnickName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "friend_Account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->friendAccount:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    .end local v5    # "AgreeIntent":Landroid/content/Intent;
    .end local v10    # "OkayIntent":Landroid/app/PendingIntent;
    .end local v18    # "friendIntent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->nm:Landroid/app/NotificationManager;

    move-object/from16 v32, v0

    const/16 v33, 0x78

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 134
    :cond_7
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09017e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->nickName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09017f

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/PushReceiver;->msgContent:Ljava/lang/String;

    .line 136
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v23, "notAgreeIntent":Landroid/content/Intent;
    const/16 v32, 0x0

    const/high16 v33, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v23

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 139
    .local v9, "NoIntent":Landroid/app/PendingIntent;
    const-string v32, "Sma Pair"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->msgContent:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 142
    .end local v9    # "NoIntent":Landroid/app/PendingIntent;
    .end local v23    # "notAgreeIntent":Landroid/content/Intent;
    .end local v24    # "notification":Landroid/app/Notification;
    .end local v30    # "rt":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->methodName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "unBondFriends"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 143
    const-string v32, "nickName"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 146
    .local v19, "friendName":Ljava/lang/String;
    const-string v32, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 145
    check-cast v26, Landroid/app/NotificationManager;

    .line 148
    .local v26, "notificationManager":Landroid/app/NotificationManager;
    new-instance v24, Landroid/app/Notification;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification;-><init>()V

    .line 153
    .restart local v24    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x10

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 158
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 161
    const v32, -0xffff01

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    .line 162
    const/16 v32, 0x1388

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 163
    const v32, 0x7f02013d

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f090145

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "contentTitle":Ljava/lang/CharSequence;
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v25, "notificationIntent":Landroid/content/Intent;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v25

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 168
    .local v13, "contentItent":Landroid/app/PendingIntent;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0901a6

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v14, v2, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 170
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "friendName"

    const-string v34, ""

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/PushReceiver;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "friend_Account"

    const-string v34, ""

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    new-instance v32, Landroid/content/Intent;

    const-string v33, "unBondIntent"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
