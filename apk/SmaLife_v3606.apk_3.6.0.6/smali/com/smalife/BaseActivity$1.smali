.class Lcom/smalife/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/BaseActivity;


# direct methods
.method constructor <init>(Lcom/smalife/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 213
    :goto_0
    :pswitch_0
    return-void

    .line 139
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    iget-object v13, v13, Lcom/smalife/BaseActivity;->context:Landroid/content/Context;

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-virtual {v14}, Lcom/smalife/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0900b5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 141
    const/4 v15, 0x0

    .line 139
    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    .line 141
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 142
    const/4 v13, 0x0

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 142
    invoke-static {v13, v14}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 146
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    iget-object v13, v13, Lcom/smalife/BaseActivity;->context:Landroid/content/Context;

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-virtual {v14}, Lcom/smalife/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0900b7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 148
    const/4 v15, 0x0

    .line 146
    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    .line 148
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 149
    const/4 v13, 0x0

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 149
    invoke-static {v13, v14}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 153
    :pswitch_3
    const/4 v13, 0x0

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 153
    invoke-static {v13, v14}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    iget-object v13, v13, Lcom/smalife/BaseActivity;->application:Lcom/smalife/MyApplication;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/smalife/MyApplication;->isConnected:Z

    goto :goto_0

    .line 159
    :pswitch_4
    const/4 v13, 0x1

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 159
    invoke-static {v13, v14}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 163
    :pswitch_5
    const/16 v13, 0x10

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 163
    invoke-static {v13, v14}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 167
    :pswitch_6
    const/16 v13, 0xa

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    .line 167
    invoke-static {v13, v14}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 171
    :pswitch_7
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 172
    .local v8, "dispatchMsg":Landroid/os/Message;
    const/4 v13, 0x5

    iput v13, v8, Landroid/os/Message;->what:I

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 174
    .local v7, "data":Landroid/os/Bundle;
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v8, v13}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 178
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v8    # "dispatchMsg":Landroid/os/Message;
    :pswitch_8
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 179
    .local v6, "clockMsg":Landroid/os/Message;
    const/4 v13, 0x6

    iput v13, v6, Landroid/os/Message;->what:I

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 181
    .local v5, "clbundle":Landroid/os/Bundle;
    invoke-virtual {v6, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v6, v13}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 185
    .end local v5    # "clbundle":Landroid/os/Bundle;
    .end local v6    # "clockMsg":Landroid/os/Message;
    :pswitch_9
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 186
    .local v12, "sportMsg":Landroid/os/Message;
    const/4 v13, 0x2

    iput v13, v12, Landroid/os/Message;->what:I

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 188
    .local v11, "spbundle":Landroid/os/Bundle;
    invoke-virtual {v12, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v12, v13}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 192
    .end local v11    # "spbundle":Landroid/os/Bundle;
    .end local v12    # "sportMsg":Landroid/os/Message;
    :pswitch_a
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 193
    .local v1, "batteryMsg":Landroid/os/Message;
    const/4 v13, 0x7

    iput v13, v1, Landroid/os/Message;->what:I

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 195
    .local v2, "battery_bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v1, v13}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 199
    .end local v1    # "batteryMsg":Landroid/os/Message;
    .end local v2    # "battery_bundle":Landroid/os/Bundle;
    :pswitch_b
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 200
    .local v9, "otaMsg":Landroid/os/Message;
    const/16 v13, 0x8

    iput v13, v9, Landroid/os/Message;->what:I

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 202
    .local v10, "ota_bundle":Landroid/os/Bundle;
    invoke-virtual {v9, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v9, v13}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 206
    .end local v9    # "otaMsg":Landroid/os/Message;
    .end local v10    # "ota_bundle":Landroid/os/Bundle;
    :pswitch_c
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 207
    .local v3, "bleMsg":Landroid/os/Message;
    const/16 v13, 0x9

    iput v13, v3, Landroid/os/Message;->what:I

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 209
    .local v4, "ble_bundle":Landroid/os/Bundle;
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smalife/BaseActivity$1;->this$0:Lcom/smalife/BaseActivity;

    invoke-static {v3, v13}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
