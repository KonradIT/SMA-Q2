.class Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DfuServiceListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressBroadcastsReceiver"
.end annotation


# instance fields
.field private mGlobalProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smalife/upgrade/ble/utils/DfuProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->setProgressListener(Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->setProgressListener(Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)Z
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->removeProgressListener(Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)Z

    move-result v0

    return v0
.end method

.method private removeProgressListener(Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    if-ne v1, p1, :cond_0

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 95
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setProgressListener(Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V
    .locals 0
    .param p1, "globalProgressListener"    # Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 81
    return-void
.end method

.method private setProgressListener(Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->access$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mGlobalProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 117
    .local v2, "globalListener":Lcom/smalife/upgrade/ble/utils/DfuProgressListener;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 119
    .local v9, "deviceListener":Lcom/smalife/upgrade/ble/utils/DfuProgressListener;
    if-nez v2, :cond_1

    if-nez v9, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "action":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v10, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 125
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 126
    .local v4, "progress":I
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    .line 127
    .local v5, "speed":F
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    .line 128
    .local v6, "avgSpeed":F
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 129
    .local v7, "currentPart":I
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 131
    .local v8, "partsTotal":I
    packed-switch v4, :pswitch_data_0

    .line 187
    if-nez v4, :cond_3

    .line 188
    if-eqz v2, :cond_2

    .line 189
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuProcessStarted(Ljava/lang/String;)V

    .line 190
    :cond_2
    if-eqz v9, :cond_3

    .line 191
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuProcessStarted(Ljava/lang/String;)V

    .line 193
    :cond_3
    if-eqz v2, :cond_4

    .line 194
    invoke-interface/range {v2 .. v8}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onProgressChanged(Ljava/lang/String;IFFII)V

    .line 195
    :cond_4
    if-eqz v9, :cond_0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    .line 196
    invoke-interface/range {v9 .. v15}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onProgressChanged(Ljava/lang/String;IFFII)V

    goto :goto_0

    .line 123
    .end local v4    # "progress":I
    .end local v5    # "speed":F
    .end local v6    # "avgSpeed":F
    .end local v7    # "currentPart":I
    .end local v8    # "partsTotal":I
    :sswitch_1
    const-string v10, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 203
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_DATA"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 204
    .local v17, "error":I
    const-string v10, "no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 206
    .local v18, "errorType":I
    if-eqz v2, :cond_5

    .line 207
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 208
    :cond_5
    if-eqz v9, :cond_6

    .line 209
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 210
    :cond_6
    packed-switch v18, :pswitch_data_1

    .line 218
    if-eqz v2, :cond_7

    .line 219
    invoke-static/range {v17 .. v17}, Lcom/smalife/upgrade/ble/utils/GattError;->parse(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v2, v3, v0, v1, v10}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    .line 220
    :cond_7
    if-eqz v9, :cond_0

    .line 221
    invoke-static/range {v17 .. v17}, Lcom/smalife/upgrade/ble/utils/GattError;->parse(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v3, v0, v1, v10}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v17    # "error":I
    .end local v18    # "errorType":I
    .restart local v4    # "progress":I
    .restart local v5    # "speed":F
    .restart local v6    # "avgSpeed":F
    .restart local v7    # "currentPart":I
    .restart local v8    # "partsTotal":I
    :pswitch_0
    if-eqz v2, :cond_8

    .line 134
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceConnecting(Ljava/lang/String;)V

    .line 135
    :cond_8
    if-eqz v9, :cond_0

    .line 136
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceConnecting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :pswitch_1
    if-eqz v2, :cond_9

    .line 140
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceConnected(Ljava/lang/String;)V

    .line 141
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuProcessStarting(Ljava/lang/String;)V

    .line 143
    :cond_9
    if-eqz v9, :cond_0

    .line 144
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceConnected(Ljava/lang/String;)V

    .line 145
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuProcessStarting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :pswitch_2
    if-eqz v2, :cond_a

    .line 150
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onEnablingDfuMode(Ljava/lang/String;)V

    .line 151
    :cond_a
    if-eqz v9, :cond_0

    .line 152
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onEnablingDfuMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :pswitch_3
    if-eqz v2, :cond_b

    .line 156
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onFirmwareValidating(Ljava/lang/String;)V

    .line 157
    :cond_b
    if-eqz v9, :cond_0

    .line 158
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onFirmwareValidating(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :pswitch_4
    if-eqz v2, :cond_c

    .line 162
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnecting(Ljava/lang/String;)V

    .line 163
    :cond_c
    if-eqz v9, :cond_0

    .line 164
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnecting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :pswitch_5
    if-eqz v2, :cond_d

    .line 168
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 169
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuCompleted(Ljava/lang/String;)V

    .line 171
    :cond_d
    if-eqz v9, :cond_0

    .line 172
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 173
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_6
    if-eqz v2, :cond_e

    .line 178
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 179
    invoke-interface {v2, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuAborted(Ljava/lang/String;)V

    .line 181
    :cond_e
    if-eqz v9, :cond_0

    .line 182
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 183
    invoke-interface {v9, v3}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onDfuAborted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v4    # "progress":I
    .end local v5    # "speed":F
    .end local v6    # "avgSpeed":F
    .end local v7    # "currentPart":I
    .end local v8    # "partsTotal":I
    .restart local v17    # "error":I
    .restart local v18    # "errorType":I
    :pswitch_7
    if-eqz v2, :cond_f

    .line 213
    invoke-static/range {v17 .. v17}, Lcom/smalife/upgrade/ble/utils/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v2, v3, v0, v1, v10}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    .line 214
    :cond_f
    if-eqz v9, :cond_0

    .line 215
    invoke-static/range {v17 .. v17}, Lcom/smalife/upgrade/ble/utils/GattError;->parseConnectionError(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v9, v3, v0, v1, v10}, Lcom/smalife/upgrade/ble/utils/DfuProgressListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        -0x78834248 -> :sswitch_0
        -0x4c6f8dc3 -> :sswitch_1
    .end sparse-switch

    .line 131
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
