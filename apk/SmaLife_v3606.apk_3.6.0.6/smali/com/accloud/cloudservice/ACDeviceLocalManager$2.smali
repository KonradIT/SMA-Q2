.class final Lcom/accloud/cloudservice/ACDeviceLocalManager$2;
.super Landroid/os/Handler;
.source "ACDeviceLocalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceLocalManager;->controlDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;

.field final synthetic val$deviceMsg:Lcom/accloud/service/ACDeviceMsg;

.field final synthetic val$physicalDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/accloud/cloudservice/PayloadCallback;Lcom/accloud/service/ACDeviceMsg;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 87
    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$deviceMsg:Lcom/accloud/service/ACDeviceMsg;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$physicalDeviceId:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/accloud/service/ACException;

    invoke-interface {v8, v7}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v6, -0x1

    .line 97
    .local v6, "value":I
    :try_start_0
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$deviceMsg:Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {v7}, Lcom/accloud/service/ACDeviceMsg;->getKLVObject()Lcom/accloud/service/ACKLVObject;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 98
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$deviceMsg:Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {v7}, Lcom/accloud/service/ACDeviceMsg;->getKLVObject()Lcom/accloud/service/ACKLVObject;

    move-result-object v7

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Lcom/accloud/service/ACKLVObject;->containsKey(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 99
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$deviceMsg:Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {v7}, Lcom/accloud/service/ACDeviceMsg;->getKLVObject()Lcom/accloud/service/ACKLVObject;

    move-result-object v7

    const/16 v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/accloud/service/ACKLVObject;->get(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 108
    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_1

    .line 116
    const-string v3, "operation"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v3, "opCmd":Ljava/lang/String;
    :goto_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v2, "object":Lorg/json/JSONObject;
    const-string v7, "did"

    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$physicalDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v7, "uid"

    sget-object v8, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v9, "ablecloud_private_userId"

    invoke-static {v8, v9}, Lcom/accloud/utils/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v4, "opObj":Lorg/json/JSONObject;
    const-string v7, "type"

    const-string v8, "app"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v7, "scenario"

    const-string v8, "local"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v7, "cmd"

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v7, "op"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    sget-object v7, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/accloud/inspire/clientservice/Inspire;->getInstance(Landroid/content/Context;)Lcom/accloud/inspire/clientservice/Inspire;

    move-result-object v7

    const-string v8, "device_operate"

    invoke-virtual {v7, v8, v2}, Lcom/accloud/inspire/clientservice/Inspire;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v4    # "opObj":Lorg/json/JSONObject;
    :goto_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/accloud/service/ACMessage;

    .line 139
    .local v1, "message":Lcom/accloud/service/ACMessage;
    sget-object v7, Lcom/accloud/cloudservice/ACDeviceLocalManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/accloud/service/ACMessage;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v8, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {v1}, Lcom/accloud/service/ACMessage;->getMessageHead()Lcom/accloud/service/ACMessageHead;

    move-result-object v9

    invoke-virtual {v9}, Lcom/accloud/service/ACMessageHead;->getMsgCode()S

    move-result v9

    invoke-virtual {v1}, Lcom/accloud/service/ACMessage;->getMsgPayload()[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/accloud/service/ACDeviceMsg;-><init>(I[B)V

    invoke-interface {v7, v8}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    .end local v1    # "message":Lcom/accloud/service/ACMessage;
    .end local v3    # "opCmd":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v5, Lcom/accloud/service/ACObject;

    invoke-direct {v5}, Lcom/accloud/service/ACObject;-><init>()V

    .line 103
    .local v5, "payload":Lcom/accloud/service/ACObject;
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$2;->val$deviceMsg:Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {v7}, Lcom/accloud/service/ACDeviceMsg;->getContent()[B

    move-result-object v7

    invoke-static {v5, v7}, Lcom/accloud/cloudservice/ACObjectMarshaller;->unmarshal(Lcom/accloud/service/ACObject;[B)V

    .line 104
    const-string v7, "switch"

    invoke-virtual {v5, v7}, Lcom/accloud/service/ACObject;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 105
    const-string v7, "switch"

    invoke-virtual {v5, v7}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1

    .line 110
    .end local v5    # "payload":Lcom/accloud/service/ACObject;
    :pswitch_2
    const-string v3, "switchoff"

    .line 111
    .restart local v3    # "opCmd":Ljava/lang/String;
    goto/16 :goto_2

    .line 113
    .end local v3    # "opCmd":Ljava/lang/String;
    :pswitch_3
    const-string v3, "switchon"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .restart local v3    # "opCmd":Ljava/lang/String;
    goto/16 :goto_2

    .line 119
    .end local v3    # "opCmd":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "operation"

    .restart local v3    # "opCmd":Ljava/lang/String;
    goto/16 :goto_2

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 134
    :catch_2
    move-exception v7

    goto :goto_3

    .line 133
    :catch_3
    move-exception v7

    goto :goto_3

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
